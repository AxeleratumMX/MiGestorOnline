
var ipfsClient =  require('ipfs-http-client');

var multiparty = require('multiparty');
						   
const nodemailer = require('nodemailer');
var md5 = require('md5');

var bodyParser = require('body-parser');

var mysql = require('mysql');
var randomstring = require("randomstring");
var fs = require('fs-extra');
var fsOld = require('fs');
helmet = require("helmet");
var http = require('http');
var https = require('https');
var base64 = require('file-base64');
//////////Certificado de seguridad para el Servicio web    //////////////
var privateKey  = fs.readFileSync('/etc/ssl/www_migestoronline_com_mx.key','utf8');
var certificate = fs.readFileSync('/home/ubuntu/SSLS/www_migestoronline_com_mx.crt', 'utf8');
var chain = fs.readFileSync('/home/ubuntu/SSLS/www_migestoronline_com_mx.ca-bundle', 'utf8');

var credentials = {key: privateKey, cert: certificate,ca:chain};

var express = require('express');
var app = express();
app.use(helmet());
app.use(bodyParser.json({limit: '100mb', extended: true}))
app.use(express.urlencoded({ limit: '100mb', extended: true, parameterLimit: 100000 })); 		
   
//////////Middlewere para habilitar el CORS  //////////////
app.use((req, res, next) => {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Authorization, X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Allow-Request-Method');
    //res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, DELETE');
    //res.header('Allow', 'GET, POST, OPTIONS, PUT, DELETE');
    next();
});
//Connceting to the ipfs network via infura gateway
var ipfs = ipfsClient('127.0.0.1', '5001', { protocol: 'http' });   // leaving out the arguments will default to these values


var pool = mysql.createPool({
  host: "3.227.106.130",
  user: "migestordbprod",
  password: "o8hvOzsvxrLqPWHs.",
  database : 'DBPRODMGO'
});

									   
//////////Middlewere para habilitar el CORS  //////////////





app.get('/', function(req, res) {


res.send("OKA");


})

//Addfile router for adding file a local file to the IPFS network without any local node
app.post('/addfileBlockchain', function(req, res) {



	//console.log(req.body);
	var idMediacion			=req.body.idMediacion;	
	var idArchivo			=req.body.idArchivo;		
	var nombre				=req.body.nombre;
	var buffer				=req.body.buffer;
	var buffer2				=req.body.buffer2;
	
	var finalbuff= buffer+buffer2;
	/*
	console.log("********I****");
	console.log(buffer);
	console.log("********F****");
	
	console.log("********I2****");
	console.log(buffer2);
	console.log("********F2****");
	
	
	console.log("********I3****");
	console.log(finalbuff);
	console.log("********F3****");

	*/
	var buf = Buffer.from(finalbuff, 'base64')
	
	
	
	fs.outputFile("/tmp/uploads/mediaciones/"+idMediacion+'/'+nombre,buf, err => {
	if(err) {
		res.send({'status':'FERR','result':err,'mensaje':'Error escribir el archivo temporal.'});
	  } else {
		upload(idMediacion,idArchivo,nombre,buf,res);
	  }
	});
	


});


app.post('/getfileBlockchain', function(req, res) {
	
	
	var hash			=req.body.hash;	

    const validCID = hash;
 
	ipfs.get(validCID, function (err, files) {
		
		if(err)
		{
			res.send({'status':'ERR','result':err,'mensaje':'Error al obtener el archivo.'});	
	
		}
		else
		{
			
			
			if( files!=undefined)
			{
				if(files[0]!=undefined)
				{
					if(files[0].content!=undefined)
					{
						
						         
							res.send({'status':'Ok','result':(Buffer.from(files[0].content)).toString('base64'),'mensaje':'Archivo base64.'});
					}
					else
					{
						res.send({'status':'ERR1','result':err,'mensaje':'Error al obtener el contenido del archivo.'});	
	
					}
				}
				else
				{
					res.send({'status':'ERR2','result':err,'mensaje':'Error no se encuentra el archivo'});	
				}
			}
			else
			{
				res.send({'status':'ERR3','result':err,'mensaje':'Error al buscar el archivo.'});		
			}	
		}
	
	})

})





app.post('/deleteFileBlockchain',function(req,res)
{
	var idArchivo			=req.body.idArchivo;	
	var idRelArchivo		=req.body.idRelArchivo;
	var idMediacion			=req.body.idMediacion;
	var nombre				=req.body.nombre;
	
	try
	{
		if(idArchivo!=undefined && idRelArchivo!=undefined && idMediacion!=undefined && nombre!=undefined )
		{
			var delFileRel = "delete from tb_archivosMediacion where idArchivosMediacion="+idRelArchivo;
			
				
				pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(delFileRel, [], function(errquery, results) 
					{
						//connection.release(); // always put connection back in pool after last query
						if(errquery) 
						{ 
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{
							
							if(results!=undefined)
							{			
								
								console.log(results);						
								//res.send({'status':'OK','result':results,'mensaje':'Informacion de la mediacion.'});
							
								var delFile = "delete from tb_archivo where idArchivo="+idArchivo;
			
			
								connection.query(delFile, [], function(errquerydelfile, resultsdelfile) 
								{
									connection.release(); // always put connection back in pool after last query
									if(errquerydelfile) 
									{ 
										res.send({'status':'ERQ','result':[],'mensaje':errquerydelfile.toString()});									   
									}
									else
									{
										
										if(resultsdelfile!=undefined)
										{			
											
											deleteFile(idMediacion,nombre,res);
											
										}
										else
										{
											res.send({'status':'ERR','result':[],'mensaje':'No se pudo borrar el archivo.'});
										}
									}
								});
							
								
						
							}
							else
							{
								connection.release();
								res.send({'status':'ERR','result':[],'mensaje':'Error borrado.'});
							}
						}
					});
				}
				});
				
				
		}		
		else
		{
			res.send({'status':'ERP','result':[],'mensaje':'Parametros incorrectos favor de revisar'});
		}
	}
	catch(ex)
	{
		res.send({'status':'ERTC','result':[],'mensaje':'Error en el servicio:.'+ex.message});
	}
	
	
});



async function deleteFile (med,nombre,res)
{
	try
	{
	
		ipfs.files.rm('/tmp/uploads/mediaciones/'+med+'/'+nombre, (err) => {
			  if (err) {
				console.error(err)
				res.send({'status':'ERR','result':err,'mensaje':'No se borro el archivo.'});
			  }
			  else
			  {
				  logger(16,med,1,"Archivo "+nombre+" eliminado de la boveda correctamente");
				  res.send({'status':'OK','result':[],'mensaje':'Archivo borrado.'});
			  }
		});
	}
	catch(expdelete)
	{
		 res.send({'status':'ERRTR','result':[],'mensaje':expdelete});
	}
}


async function upload (med,idfile,nombre,buffer,res)
{
	try
	{
		path='/tmp/uploads/mediaciones/'+med+'/'+nombre;
	
			console.log("1");
		var file= {
			  path: path, 
			  content:new Buffer.from(buffer)
			}
		var resultsHash = await ipfs.add(file);	
		
		
		console.log("2");
		console.log(resultsHash)
			
		pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{					
					var updateArchivo = "update tb_archivo "+
					 "set hashArchivo = '"+ resultsHash[0].hash+"',hashed_at= now() "+					
					" where idArchivo="+idfile;						



									
					
					connection.query(updateArchivo, [], function(errquery, results) 
					{
						connection.release(); // always put connection back in pool after last query
						if(errquery) 
						{ 
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{
							
							if(results!=undefined)
							{											
									res.send({'status':'OK','result':results,'mensaje':' Archivo subido al ipfs y hash de archivo salvado.','hash':resultsHash[0].hash});	
									
									logger(13,med,1,"Archivo "+nombre+" subido a la boveda correctamente hash:"+resultsHash[0].hash);
									/*
									fs.unlink(path, function (err) {
										if (err) console.log(err);
									
										console.log('File '+path +' deleted!');
									}); 
									*/
																									
							}
							else
							{
								res.send({'status':'ERR','result':[],'mensaje':'No se pguardar el hash del archivo.'});
							}
						}
					});
				}
			});		
		
	}
	catch(uploadex)
	{
		res.send({'status':'ERR','result':uploadex,'mensaje':'Error al subir al IPFS.'});	
	}
	
		
}


function logger(idevento,idmediacion,resultado,mensaje)
{

	try
	{
		if(idevento!=undefined && idmediacion!=undefined && resultado!=undefined && mensaje!=undefined)
		{	
	
			var insertLoggerEvent ="insert into tb_eventoMediacion (idEventosMediacion,idEvento,idMediacion,created_at,idResultadoEvento,mensaje) values (default,"+idevento+","+idmediacion+",now(),"+resultado+",'"+mensaje+"')";
			
			
			
				console.log(insertLoggerEvent);
				pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					//return JSON.stringify({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(insertLoggerEvent, [], function(errquery, results) 
					{
						connection.release(); // always put    connection back in pool after last query
						if(errquery) 
						{ 
							console.log(errquery);
							//return JSON.stringify({'status':'ERQ','result':[],'mensaje':errquery.toString()});
						}
						else
						{
							
							if(results!=undefined)
							{						
								console.log(results);						
								//return JSON.stringify({'status':'OK','result':results,'mensaje':'Log insertado.'});
							
							}
							else
							{
								console.log(results);
								//return JSON.stringify({'status':'NR','result':results,'mensaje':'No se inserto evento de log.'});
							}	
						}
					});
				}
			});
		}
		else
		{
			console.log('Parametros incorrectos favor de revisar');
			//return JSON.stringify({'status':'ERP','result':[],'mensaje':'Parametros incorrectos favor de revisar'});
		}
	}
	catch(ex)
	{
		console.log(ex);
	//	return JSON.stringify({'status':'ERTC2','result':[],'mensaje':'Error en el servicio:.'+ex});
	}
}


var httpsServer = https.createServer(credentials, app);


httpsServer.listen(6003);
console.log("Servidor IPFS:6003");

//app.listen(6003, () => console.log('App listening on port 6003 JC! v5'))
