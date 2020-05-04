var multiparty = require('multiparty');
var soap = require('soap');						   
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
//////////Certificado de seguridad para el Servicio web   //////////////
var privateKey  = fs.readFileSync('/etc/ssl/www_migestoronline_com_mx.key','utf8');
var certificate = fs.readFileSync('/home/ubuntu/SSLS/www_migestoronline_com_mx.crt', 'utf8');
var chain = fs.readFileSync('/home/ubuntu/SSLS/www_migestoronline_com_mx.ca-bundle', 'utf8');

var credentials = {key: privateKey, cert: certificate,ca:chain};

var express = require('express');
var app = express();
app.use(helmet())

/*

var pool = mysql.createPool({
  host: "3.226.190.129",
  user: "migestordb",
  password: "m4ur1c10m1g3st0r2019.",
  database : 'migestor'
});

*/

var pool = mysql.createPool({
  host: "3.227.106.130",
  user: "migestordbprod",
  password: "o8hvOzsvxrLqPWHs.",
  database : 'DBPRODMGO'
});


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


let transporter = nodemailer.createTransport({
       service: 'gmail',
        auth: {
            user:'juancarlos@axeleratum.com',  // generated ethereal user
            pass: 'fatal2002'// generated ethereal password
        }
    });


	
app.get('/', function (req, res) {
  res.send('Migestor Online DEVELOPMENT API v1');
});

app.post('/', function (req, res) {
  res.send('Migestor Online DEVELOPMENT API v1 POST');
});

app.get('/room', function (req, res) {
  res.send('MIGESTORCONF_'+Math.random().toString(36).substring(2, 15) + Math.random().toString(36).substring(2, 15)+ Math.random().toString(36).substring(2, 15)+ Math.random().toString(36).substring(2, 15));
})

app.post('/sendEmail', function (req, res) {
	
	var listaEmails			=req.body.listaEmails;	
	var titulo				=req.body.titulo;			
	var contenido			=req.body.contenido;		
	
	try
	{
		if(listaEmails!=undefined && titulo!=undefined && contenido!=undefined)
		{
		
	
			var mailOptions = {
			  from: 'juancarlos@axeleratum.com', // sender address
			  to: listaEmails, // list of receivers
			  subject: titulo, // Subject line
			  html: '<p>'+contenido+'</p>'// plain text body
			};
			  
  
			transporter.sendMail(mailOptions, function (err, info) {
				if(err)
				{
					console.log(err)
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				 else
				{
					console.log(info);
					res.send({'status':'OK','result':info,'mensaje':'Correo enviado exitosamente.'});
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



app.post('/sendEmailAttachment', function (req, res) {
	
	var listaEmails			=req.body.listaEmails;	
	var titulo				=req.body.titulo;			
	var contenido			=req.body.contenido;	
	var attachment			=req.body.attachment;	
	var attachment2			=req.body.attachment2;	
	var nombre				=req.body.nombre;		
	var idMediacion			=req.body.idMediacion;
	try
	{
		if(listaEmails!=undefined && titulo!=undefined && attachment!=undefined && attachment2!=undefined && nombre!=undefined)
		{
		
		
		
			var attachmentFinal=attachment+attachment2;
			
			
			/*
				console.log('**********************1**************************');
			console.log(attachment);
				console.log('**********************2**************************');
			console.log(attachment2);
				console.log('**********************3**************************');
			console.log(attachmentFinal);
		
			
			*/
			var mailOptions = {
			  from: 'juancarlos@axeleratum.com', // sender address
			  to: listaEmails, // list of receivers
			  subject: titulo, // Subject line
			  html: '<p>'+"Documento compartido con el sistema migestoronline.com.mx"+'</p>',
			  attachments: [
				{   // encoded string as an attachment
				  filename: nombre,
				  content: attachmentFinal,
				  encoding: 'base64'
				}
			  ]
			};
			  
  
			transporter.sendMail(mailOptions, function (err, info) {
				if(err)
				{
					console.log(err)
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				 else
				{
					console.log(info);
					res.send({'status':'OK','result':info,'mensaje':'Correo enviado exitosamente.'});
					logger(14,idMediacion,1,"Documento compartido con:"+listaEmails);
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

app.post('/uploadFile', function (req, res) {

	var size = '';
	var fileName = '';
	var oldPath = '';
	var newPath = '';
	var fileExist = false;
	try {

		var form = new multiparty.Form();

		form.parse(req, function (err, fields, files) {
			if (err != undefined) {
				res.send({
					'status': 'ERPA',
					'result': [],
					'mensaje': 'Error de parseo del archivo'
				});
			} else {

				if (fields != undefined && files != undefined) {

					if (fields.idMediacion != undefined && files.file[0] != undefined && fields.idUsuario != undefined) {

					
						console.log("fields");
						console.log(fields);
						console.log("files");
						console.log(files);
						console.log(files.file[0].path);
						console.log(fields.idMediacion);
						console.log(fields.idUsuario);

						oldPath = "/" + files.file[0].path;
						fs.ensureDirSync('./uploads/mediaciones/' + fields.idMediacion, );

						newPath = './uploads/mediaciones/' + fields.idMediacion + "/" + files.file[0].originalFilename;

						fsOld.stat(newPath, function (errfile) {
							if (!errfile) {
								fileExist = true;
							} else if (errfile.code === 'ENOENT') {
								fileExist = false;
							}

							/******Flujo normal*/

							fsOld.rename(oldPath, newPath, function (err) {
								if (err) {
									console.log("asdasd:->" + err);
									res.send({
										'status': 'ERR',
										'result': err,
										'mensaje': 'Error el archivo ya existe'
									});
								} else {

									if (!fileExist) {

										var insertarArchivo = "insert into tb_archivo (idArchivo,nombre,activa,created_at)  values (default,'" + files.file[0].originalFilename + "',1,now()) ";

										console.log(insertarArchivo);
										pool.getConnection(function (err, connection) {
											if (err) {
												console.log(err);
												res.send({
													'status': 'ER',
													'result': [],
													'mensaje': err.toString()
												});
											} else {
												console.log("sdasdsasd");
												connection.query(insertarArchivo, [], function (errquery, results) {

													if (errquery) {
														connection.release();
														console.log(errquery);
														res.send({
															'status': 'ERQ',
															'result': [],
															'mensaje': errquery.toString()
														})
													} else {
														if (results != undefined) {

															var insertarRelacionArchivoMediacion = "insert into tb_archivosMediacion (idArchivosMediacion,idArchivo,idMediacion,idUsuario,activa) " +
																"values (default," + results.insertId + ", " + fields.idMediacion + "," + fields.idUsuario + " ,1) ";

															connection.query(insertarRelacionArchivoMediacion, [], function (errqueryRel, resultsRel) {
																connection.release();
																if (errqueryRel) {

																	console.log(errquery);
																	res.send({
																		'status': 'ERQ',
																		'result': [],
																		'mensaje': errquery.toString()
																	})
																} else {
																	if (resultsRel != undefined) {
																		console.log(resultsRel);
																		res.send({
																			'status': 'OK',
																			'result': resultsRel,
																			'mensaje': 'Se inserto el Archivo correctamente.'
																		});
																		logger(12,fields.idMediacion,1,"Archivo:"+files.file[0].originalFilename+ " subido correctamente");
																	} else {

																		res.send({
																			'status': 'ERR',
																			'result': [],
																			'mensaje': 'No se pudo subir el archivo.'
																		});
																	}
																}
															});
														} else {

															connection.release();
															res.send({
																'status': 'ERR',
																'result': [],
																'mensaje': 'No se pudo subir el archivo.'
															});
														}
													}
												});
											}
										});
									} else 
									{
										
										var searchfile = "select idArchivo,nombre,activa from  tb_archivo where  nombre LIKE '"+files.file[0].originalFilename+"' and activa=1";

										console.log(searchfile);
										pool.getConnection(function (err, connection) {
											if (err) {
												console.log(err);
												res.send({
													'status': 'ERS',
													'result': [],
													'mensaje': err.toString()
												});
											} else {
												console.log("sdasdsasd");
												connection.query(searchfile, [], function (errquery, results) {

													if (errquery) {
														connection.release();
														console.log(errquery);
														res.send({
															'status': 'ERQ',
															'result': [],
															'mensaje': errquery.toString()
														})
													} else {
														if (results[0] != undefined) {

															var actualizaArchivo = "update tb_archivo set updated_at = now() where idArchivo = "+results[0].idArchivo;

															connection.query(actualizaArchivo, [], function (errqueryRel, resultsRel) {
																connection.release();
																if (errqueryRel) {

																	console.log(errquery);
																	res.send({
																		'status': 'ERQ',
																		'result': [],
																		'mensaje': errquery.toString()
																	})
																} else {
																	if (resultsRel != undefined) 
																	{
																		console.log(resultsRel);
																		res.send({'status': 'UPD','result': [],'mensaje': 'Archivo actualizado.'});
																	} else 
																	{

																		res.send({'status': 'ERRUPD','result': [],'mensaje': 'No se actualizo el archivo.'});
																	}
																}
															});
														} else {

															connection.release();
															res.send({
																'status': 'ERR',
																'result': [],
																'mensaje': 'No se pudo subir el archivo.'
															});
														}
													}
												});
											}
										});
										
										
										
									}

								}
							})
							/******Fin flujonormal*/

						});

					} else {
						res.send({
							'status': 'ERP2',
							'result': [],
							'mensaje': 'Parametros incorrectos favor de revisar'
						});
					}

				} else {
					res.send({
						'status': 'ERP',
						'result': [],
						'mensaje': 'Parametros incorrectos favor de revisar'
					});
				}
			}

		});

	} catch (ex) {
		res.send({
			'status': 'ERTC',
			'result': [],
			'mensaje': 'Error en el servicio:.' + ex.message
		});
	}

});







app.post('/deleteFile',function(req,res)
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
											
											//console.log(results);						
											res.send({'status':'OK','result':results,'mensaje':'Archivo borrado.'});
											logger(23,idMediacion,1,"Elimina documento:"+nombre);
											 fsOld.unlink('./uploads/mediaciones/'+idMediacion+'/'+nombre, function (err) {
												if (err) console.log(err);											
												//console.log('File '+path +' deleted!');
											}); 
											
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
								res.send({'status':'ERR','result':[],'mensaje':'Error al borrar el archivo.'});
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




app.post('/downloadFilebase64',function(req,res)
{
	
	var idMediacion			=req.body.idMediacion;	
	var nombreArchivo		=req.body.nombreArchivo;	

	console.log(req.body);
	
	try
	{
		if(idMediacion!=undefined && nombreArchivo!=undefined )
		{
			var temppath='./uploads/mediaciones/'+idMediacion+'/'+nombreArchivo;
			if (fs.existsSync(temppath)) {
				base64.encode(temppath, function(err, base64String) 
				{
				  if(err)
				  {
					  res.send({'status':'ERR','result':err,'mensaje':'Error.'});
				  }
				  else
				  {		
					res.send({'status':'OK','result':fsOld.readFileSync(temppath, { encoding: 'base64' }),'mensaje':'Archivo descargado de nombre:'+nombreArchivo+'.'});
		
				  }
				});		
			}
			else
			{
				res.send({'status':'NR','result':[],'mensaje':'No existe el archivo'});
			}			
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



app.post('/downloadFileDirectly',function(req,res)
{
	
	var idMediacion			=req.body.idMediacion;	
	var nombreArchivo		=req.body.nombreArchivo;	

	console.log(req.body);
	try
	{
		if(idMediacion!=undefined && nombreArchivo!=undefined )
		{
			var temppath='./uploads/mediaciones/'+idMediacion+'/'+nombreArchivo;
			if (fs.existsSync(temppath)) {
				res.download(temppath);				
			}
			else
			{
				res.send({'status':'NR','result':[],'mensaje':'No existe el archivo'});
			}			
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




app.post('/getInfoMediacion',function(req,res)
{	

	console.log(req.body);
	
	var idMediacion			=req.body.idMediacion;
	
	
	try
	{
		if(idMediacion!=undefined)
		{
			
			var getInfoMed = "SELECT tb_mediacion.idMediacion,tb_mediacion.idUsuario,tb_mediacion.nombreTramite,tb_mediacion.folio,tb_mediacion.idCliente,tb_cliente.nombreCliente,"+
					 "tb_cliente.abreviaturaCliente,tb_mediacion.idFaseMediacion,cat_faseMediacion.nombreFase,tb_mediacion.idEspecialidad,cat_especialidad.nombreEspecialidad,"+
					 "tb_mediacion.idEstadoMediacion,cat_estado_mediacion.nombreEstado,tb_mediacion.descripcion,tb_mediacion.created_at,tb_mediacion.updated_at,tb_mediacion.activa "+
					 "FROM tb_mediacion "+
					 "INNER JOIN cat_faseMediacion ON tb_mediacion.idFaseMediacion = cat_faseMediacion.idCatFasesMediacion "+
					 "INNER JOIN cat_especialidad ON tb_mediacion.idEspecialidad = cat_especialidad.idEspecialidad "+
					 "INNER JOIN tb_cliente ON tb_mediacion.idCliente = tb_cliente.idUsuarioCliente "+
					 "INNER JOIN cat_estado_mediacion ON tb_mediacion.idEstadoMediacion = cat_estado_mediacion.idEstadoMediacion "+
					 "WHERE tb_mediacion.idMediacion = "+idMediacion+" AND tb_mediacion.activa = 1";
			
				
				pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(getInfoMed, [], function(errquery, results) 
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
								if(results.length>0)
								{
									console.log(results);						
									res.send({'status':'OK','result':results,'mensaje':'Informacion de la mediacion.'});
								}							
								else
								{
									res.send({'status':'NR','result':results,'mensaje':'Sin información de la mediacion.'});
								}
						
							}
							else
							{
								res.send({'status':'ERR','result':[],'mensaje':'No se pudo obtener informacion de la mediacion.'});
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


app.post('/insertAgenda',function(req,res)
{	
	console.log(req.body);

	var idTipoReunion		=req.body.idTipoReunion;	
	var idMediacion			=req.body.idMediacion;			
	var horaInicio			=req.body.horaInicio;	
	var horaFin				=req.body.horaFin;	
	var descripcion			=req.body.descripcion;		
	
	try
	{
		if(idTipoReunion!=undefined && idMediacion!=undefined && horaInicio!=undefined && horaFin!=undefined && descripcion!=undefined)
		{
		
		
		    var init = new Date(horaInicio).toISOString().slice(0, 19).replace('T', ' ');
			var fin = new Date(horaFin).toISOString().slice(0, 19).replace('T', ' ');
			var insertReunionesAgendadas;
			if(idTipoReunion==2)
			{
				
				var link = 'MIGESTORCONF_'+randomstring.generate(25);
				insertReunionesAgendadas ="insert into tb_reunionMediacion (idreunionMediacion,idTipoReunion,idMediacion,horaInicio,horaFin,descripcion,activa,created_at,linkVideoLlamada) values (default,"+
										  idTipoReunion + ","+ idMediacion +",'"+init+"','"+fin+"','"+descripcion+"',1,NOW(),'"+link+"')";
			}
			else
			{
				insertReunionesAgendadas ="insert into tb_reunionMediacion (idreunionMediacion,idTipoReunion,idMediacion,horaInicio,horaFin,descripcion,activa,created_at) values (default,"+
										  idTipoReunion + ","+ idMediacion +",'"+init+"','"+fin+"','"+descripcion+"',1,NOW())";
			}
				
	
										  
			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
				 
					connection.query(insertReunionesAgendadas, [], function(errquery, results) 
					{
						connection.release();
						if(errquery) 
						{ 
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{							
							if(results!=undefined)
							{			
								if(idTipoReunion==2)
								{
										console.log(results);						
										res.send({'status':'OK','result':results,'mensaje':'Se inserto la reunion.','link':link});	
										logger(6,idMediacion,1,"Video llamada creada exitosamente para las "+init);
								}
								else
								{
										console.log(results);						
										res.send({'status':'OK','result':results,'mensaje':'Se inserto la reunion.'});
										logger(2,idMediacion,1,"Cita creada exitosamente para las "+init);										
								}
								
							}
							else
							{
								res.send({'status':'ERR','result':[],'mensaje':'No se pudo insertar la reunion.'});
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


app.post('/getReunionesPorMediacion',function(req,res)
{	
	console.log(req.body);

	var idMediacion			=req.body.idMediacion;
	
	try
	{
		if(idMediacion!=undefined )
		{
			
			
			var getReunionesPorMediacion ="SELECT  tb_usuario.usuario,tb_reunionMediacion.idTipoReunion,cat_reuniones.nombreReunion,tb_reunionMediacion.horaInicio,tb_reunionMediacion.horaFin,"+
											"tb_reunionMediacion.descripcion as 'descripcionReunion',tb_reunionMediacion.linkVideoLlamada,tb_mediacion.nombreTramite,"+
											"tb_usuario.idUsuario,tb_mediacion.folio,tb_mediacion.idCliente,tb_cliente.nombreCliente,tb_mediacion.idEspecialidad,cat_especialidad.nombreEspecialidad,tb_mediacion.descripcion as 'descripcionMediacion',"+
											"cat_reuniones.idReunion,tb_mediacion.idMediacion,tb_reunionMediacion.idreunionMediacion FROM "+
											"tb_reunionMediacion "+
											"INNER JOIN tb_mediacion ON tb_reunionMediacion.idMediacion = tb_mediacion.idMediacion "+
											"INNER JOIN tb_usuario ON tb_mediacion.idUsuario = tb_usuario.idUsuario "+
											"INNER JOIN cat_reuniones ON tb_reunionMediacion.idTipoReunion = cat_reuniones.idReunion "+
											"INNER JOIN tb_cliente ON tb_mediacion.idCliente = tb_cliente.idUsuarioCliente "+
											"INNER JOIN cat_especialidad ON tb_mediacion.idEspecialidad = cat_especialidad.idEspecialidad "+
											"WHERE "+
											"tb_mediacion.idMediacion = " +idMediacion +
											" order by tb_reunionMediacion.horaInicio";
				  
							  
							  
							  
							  
			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(getReunionesPorMediacion, [], function(errquery, results) 
					{
						connection.release();
						if(errquery) 
						{ 
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{							
							if(results!=undefined)
							{			
								if(results.length>0)
								{
									console.log(results);						
									res.send({'status':'OK','result':results,'mensaje':'Lista de sesiones de la mediación .'});
								}							
								else
								{
									res.send({'status':'NR','result':results,'mensaje':'Sin información de sesiones de la mediación.'});
								}
							}
							else
							{
								res.send({'status':'ERR','result':[],'mensaje':'No se pudo actualizar la mediacion.'});
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


app.post('/updateMediacion',function(req,res)
{	
	console.log(req.body);

	var idMediacion			=req.body.idMediacion;					
	var idEstadoMediacion	=req.body.idEstadoMediacion;	
	var idEspecialidad		=req.body.idEspecialidad;	
	var idFaseMediacion		=req.body.idFaseMediacion;	
	var descripcion 		= req.body.descripcion;	
	
	try
	{
		if(idMediacion!=undefined && idEstadoMediacion!=undefined && idEspecialidad!=undefined && idFaseMediacion!= undefined &&  descripcion!=undefined)
		{
			
			
			var updateMediacion ="update tb_mediacion set  updated_at= NOW(), idEstadoMediacion="+idEstadoMediacion+",descripcion='"+descripcion+"',idEspecialidad="+idEspecialidad +" ,idFaseMediacion="+
			                     idFaseMediacion+"      where idMediacion="+idMediacion; 
							  
			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(updateMediacion, [], function(errquery, results) 
					{
						connection.release();
						if(errquery) 
						{ 
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{							
							if(results!=undefined)
							{			
								console.log(results);						
								res.send({'status':'OK','result':results,'mensaje':'Se actualizo la mediacion.'});		
								logger(21,results.insertId,1,"Actualiza la mediacion");
							}
							else
							{
								res.send({'status':'ERR','result':[],'mensaje':'No se pudo actualizar la mediacion.'});
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


app.post('/modificarEventoAgenda',function(req,res)
{	
	console.log(req.body);

	var idReunion			=req.body.idReunion;					
	var horaInicio			=req.body.horaInicio;	
	var horaFin				=req.body.horaFin;	
	var descripcion			=req.body.descripcion;		
	var idTipoReunion 		=req.body.idTipoReunion;
	var idMediacion			=req.body.idMediacion;
	try
	{
		if(idReunion!=undefined && horaInicio!=undefined && horaFin!=undefined && descripcion!=undefined)
		{
			
			
		    var init = new Date(horaInicio).toISOString().slice(0, 19).replace('T', ' ');
			var fin = new Date(horaFin).toISOString().slice(0, 19).replace('T', ' ');
	
			var updateEventoAgenda ="update tb_reunionMediacion set horaInicio ='"+init+"', horaFin='"+fin+"',descripcion='"+descripcion+"' where idreunionMediacion="+idReunion; 
							  
			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(updateEventoAgenda, [], function(errquery, results) 
					{
						connection.release();
						if(errquery) 
						{ 
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{							
							if(results!=undefined)
							{			
								console.log(results);						
								res.send({'status':'OK','result':results,'mensaje':'Se actualizo el evento.'});		
								
								if(idTipoReunion==2)
								{
									logger(8,idMediacion,1,"Videollamada modificada a las "+horaInicio);
								}
								else
								{
									logger(4,idMediacion,1,"Cita modificada a las "+horaInicio);
								}
							}
							else
							{
								res.send({'status':'ERR','result':[],'mensaje':'No se pudo actualizar el evento.'});
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


app.post('/borrarEventoAgenda',function(req,res)
{	
	console.log(req.body);

	var idReunion			=req.body.idReunion;
	var idMediacion			=req.body.idMediacion;	
	
	try
	{
		if(idReunion!=undefined)
		{
			
	
			var borrarEventoAgenda ="delete from tb_reunionMediacion where idreunionMediacion="+idReunion; 
							  
			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(borrarEventoAgenda, [], function(errquery, results) 
					{
						connection.release();
						if(errquery) 
						{ 
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{							
							if(results!=undefined)
							{			
								console.log(results);						
								res.send({'status':'OK','result':results,'mensaje':'Se borro el evento.'});	
								logger(22,idMediacion,1,"Borra evento de mediacion Cita/videollamda");								
							}
							else
							{
								res.send({'status':'ERR','result':[],'mensaje':'No se pudo borrar el evento.'});
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


app.post('/getAgenda',function(req,res)
{	
	console.log(req.body);

	var idUsuario				=req.body.idUsuario;			
	//var insertUserClients="SELECT * from tb_cliente where tb_cliente.idUsuario   ="+idUsuario;
	try
	{
		if(idUsuario!=undefined)
		{
	
		var searchReunionesAgendadas =" SELECT  tb_usuario.usuario,tb_reunionMediacion.idTipoReunion,cat_reuniones.nombreReunion,tb_reunionMediacion.horaInicio,tb_reunionMediacion.horaFin,"+
										"tb_reunionMediacion.descripcion as 'descripcionReunion',tb_reunionMediacion.linkVideoLlamada,tb_mediacion.nombreTramite,"+
										"tb_usuario.idUsuario,tb_mediacion.folio,tb_mediacion.idCliente,tb_cliente.nombreCliente,tb_mediacion.idEspecialidad,cat_especialidad.nombreEspecialidad,tb_mediacion.descripcion as 'descripcionMediacion',"+
										"cat_reuniones.idReunion,tb_mediacion.idMediacion,tb_reunionMediacion.idreunionMediacion FROM "+
										"tb_reunionMediacion "+
										"INNER JOIN tb_mediacion ON tb_reunionMediacion.idMediacion = tb_mediacion.idMediacion "+
										"INNER JOIN tb_usuario ON tb_mediacion.idUsuario = tb_usuario.idUsuario "+
										"INNER JOIN cat_reuniones ON tb_reunionMediacion.idTipoReunion = cat_reuniones.idReunion "+
										"INNER JOIN tb_cliente ON tb_mediacion.idCliente = tb_cliente.idUsuarioCliente "+
										"INNER JOIN cat_especialidad ON tb_mediacion.idEspecialidad = cat_especialidad.idEspecialidad "+
										"WHERE "+
										"tb_usuario.idUsuario = " +idUsuario +
										" order by tb_reunionMediacion.horaInicio";

			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(searchReunionesAgendadas, [], function(errquery, results) 
					{
						connection.release();
						if(errquery) 
						{ 
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{							
							if(results!=undefined)
							{			
								if(results.length>0)
								{
									console.log(results);						
									res.send({'status':'OK','result':results,'mensaje':'Lista de reuniones.'});
								}							
								else
								{
									res.send({'status':'NR','result':results,'mensaje':'Sin reuniones agendadas.'});
								}
						
							}
							else
							{
								res.send({'status':'ERR','result':[],'mensaje':'No se pudo obtener las reuniones.'});
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
		res.send({'status':'ERTC','result':[],'mensaje':'Error en el servicio:.'+ex});
	}
	
});



app.post('/getEventoAgenda',function(req,res)
{	
	console.log(req.body);

	var idReunion				=req.body.idReunion;			
	//var insertUserClients="SELECT * from tb_cliente where tb_cliente.idUsuario   ="+idUsuario;
	try
	{
		if(idReunion!=undefined)
		{
	
	
	
	 var searchReunionesporID ="SELECT rmed.idreunionMediacion, rmed.idTipoReunion,rmed.idMediacion,rmed.horaInicio,rmed.horaFin,rmed.descripcion,rmed.activa,rmed.linkVideoLlamada,"+
								"rmed.created_at,rmed.updated_at,rmed.deleted_at,med.idEspecialidad,cli.idUsuarioCliente,cli.nombreCliente,cli.abreviaturaCliente,esp.nombreEspecialidad,med.folio "+
								"FROM tb_reunionMediacion as rmed "+
								"INNER JOIN tb_mediacion as med on rmed.idMediacion = med.idMediacion "+
								"INNER JOIN tb_cliente as cli on med.idCliente = cli.idUsuarioCliente "+
								"INNER JOIN cat_especialidad as esp on med.idEspecialidad = esp.idEspecialidad "+
								"WHERE rmed.idreunionMediacion = "+idReunion+ " AND rmed.activa = 1 ";


	

			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(searchReunionesporID, [], function(errquery, results) 
					{
						connection.release();
						if(errquery) 
						{ 
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{							
							if(results!=undefined)
							{			
								if(results.length>0)
								{
									console.log(results);						
									res.send({'status':'OK','result':results,'mensaje':'Reunion encontrada.'});
								}							
								else
								{
									res.send({'status':'NR','result':results,'mensaje':'No hay una reunion con este ID.'});
								}
						
							}
							else
							{
								res.send({'status':'ERR','result':[],'mensaje':'No se pudo obtener las reuniones.'});
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
		res.send({'status':'ERTC','result':[],'mensaje':'Error en el servicio:.'+ex});
	}
	
});




app.post('/login',function(req,res)
{	

	console.log(req.body);
	
	var user			=req.body.Usuario;
	var pass			=req.body.Password;	
	
	var searchUserWithEmail = "SELECT idUsuario,usuario,idPersona,idPerfil,clave from tb_usuario where tb_usuario.usuario='"+user+"' and  tb_usuario.activa=1";
	
	try
	{
		if(user!=undefined && pass!=undefined)
		{
	
	
	
	
	
			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(searchUserWithEmail, [], function(errquery, results) 
					{
						connection.release(); // always put connection back in pool after last query
						if(errquery) 
						{ 
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{
							
							if(results[0]!=undefined)
							{	
								if(results[0].clave==md5(pass))
								{
									var removeclave=results;
									delete removeclave['clave'];							
									res.send({'status':'OK','result':removeclave,'mensaje':'Usuario Existente.'});
								}
								else
								{
									res.send({'status':'PE','result':[],'mensaje':'Password Incorrecto.'});
								}
								
							
							}
							else
							{
								res.send({'status':'NR','result':results,'mensaje':'Usuario no existente o inactivo.'});
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


app.post('/getAllMediacionesActivas',function(req,res)
{	

	console.log(req.body);
	
	var iduser			=req.body.idUsuario;
	var fase			=req.body.idFase;	
	
	try
	{
		if(iduser!=undefined && fase!=undefined)
		{
	
	
	
	
			var searchAllmediationsActive="SELECT tb_mediacion.idUsuario,tb_mediacion.idMediacion,tb_mediacion.nombreTramite,tb_cliente.nombreCliente,tb_mediacion.folio,tb_mediacion.descripcion,tb_mediacion.created_at,cat_especialidad.nombreEspecialidad,cat_faseMediacion.nombreFase,"+
						"tb_mediacion.idFaseMediacion,tb_mediacion.idEstadoMediacion,cat_estado_mediacion.nombreEstado FROM tb_mediacion INNER JOIN tb_cliente ON tb_mediacion.idCliente = tb_cliente.idUsuarioCliente INNER JOIN cat_especialidad ON "+
						 "tb_mediacion.idEspecialidad = cat_especialidad.idEspecialidad  INNER JOIN cat_faseMediacion ON tb_mediacion.idFaseMediacion = cat_faseMediacion.idCatFasesMediacion INNER JOIN cat_estado_mediacion ON tb_mediacion.idEstadoMediacion = "+
						"cat_estado_mediacion.idEstadoMediacion WHERE tb_mediacion.idUsuario = "+iduser+" AND tb_mediacion.idFaseMediacion = "	+fase;
			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(searchAllmediationsActive, [], function(errquery, results) 
					{
						connection.release(); // always put connection back in pool after last query
						if(errquery) 
						{ 
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{
							
													
							if(results[0]!=undefined)
							{	
													
								console.log(results);						
								res.send({'status':'OK','result':results,'mensaje':'Mediaciones Activas.'});
							}
							else
							{
								res.send({'status':'NR','result':results,'mensaje':'Sin mediaciones en esa fase para el usuario.'});
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
		res.send({'status':'ERTC','result':[],'mensaje':'Error en el servicio:.'+ex});
	}
	
});




app.post('/getAllMediacionesFiltro',function(req,res)
{	

	//console.log(req.body);
	
	var iduser			=req.body.idUsuario;
	var fase			=req.body.idFase;	
	var fechaI			=req.body.fechaI;	
	var fechaF			=req.body.fechaF;	
	var cliente			=req.body.cliente;	
	var folio			=req.body.folio;	
	
	try
	{
		if(iduser!=undefined && fase!=undefined)
		{
	
	
	
	
			var getAllMediacionesFiltro="SELECT tb_mediacion.idUsuario,tb_mediacion.idMediacion,tb_mediacion.nombreTramite,tb_cliente.nombreCliente,tb_mediacion.folio,tb_mediacion.descripcion,tb_mediacion.created_at,cat_especialidad.nombreEspecialidad,cat_faseMediacion.nombreFase,"+
						"tb_mediacion.idFaseMediacion,tb_mediacion.idEstadoMediacion,cat_estado_mediacion.nombreEstado FROM tb_mediacion INNER JOIN tb_cliente ON tb_mediacion.idCliente = tb_cliente.idUsuarioCliente INNER JOIN cat_especialidad ON "+
						 "tb_mediacion.idEspecialidad = cat_especialidad.idEspecialidad  INNER JOIN cat_faseMediacion ON tb_mediacion.idFaseMediacion = cat_faseMediacion.idCatFasesMediacion INNER JOIN cat_estado_mediacion ON tb_mediacion.idEstadoMediacion = "+
						"cat_estado_mediacion.idEstadoMediacion WHERE tb_mediacion.idUsuario = "+iduser+" AND tb_mediacion.idFaseMediacion = "	+fase;
						
						
			if(cliente != undefined)			
				getAllMediacionesFiltro+=" and tb_cliente.nombreCliente LIKE '%"+cliente+"%'";
			
			if(folio != undefined)
				getAllMediacionesFiltro+=" and tb_mediacion.folio LIKE '%"+folio+"%'";
			
			
			if(fechaI != undefined)
				getAllMediacionesFiltro+=" and tb_mediacion.created_at >= '"+fechaI+"'";
			
				
			if(fechaF != undefined)
				getAllMediacionesFiltro+=" and tb_mediacion.created_at <= '"+fechaF+"'";
							
							
							console.log(getAllMediacionesFiltro);
						
			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(getAllMediacionesFiltro, [], function(errquery, results) 
					{
						connection.release(); // always put connection back in pool after last query
						if(errquery) 
						{ 
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{
							
													
							if(results!=undefined)
							{	
						
								if(results.length>0)
								{
										res.send({'status':'OK','result':results,'mensaje':'Mediaciones Con filtros.'});			
								}
								else
								{
										res.send({'status':'NR','result':[],'mensaje':'Sin mediaciones para el filtro.'});			
								}											
								
							}
							else
							{
								res.send({'status':'ERR','result':[],'mensaje':'Error al buscar las mediaciones.'});
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
		res.send({'status':'ERTC','result':[],'mensaje':'Error en el servicio:.'+ex});
	}
	
});


app.post('/getAllMediacionesPorEspecialidad',function(req,res)
{	

	console.log(req.body);
	
	var idUser			=req.body.idUsuario;
	var idEspecialidad			=req.body.idEspecialidad;	
	
	try
	{
		if(idUser!=undefined && idEspecialidad!=undefined)
		{
			var searchMediacionesPorEspecialidad="SELECT  tb_mediacion.folio,tb_mediacion.idMediacion,tb_mediacion.idEspecialidad,tb_mediacion.idUsuario,tb_mediacion.nombreTramite,tb_mediacion.activa,"+
										  "tb_mediacion.descripcion,cat_especialidad.nombreEspecialidad,cat_faseMediacion.nombreFase,tb_mediacion.idFaseMediacion,tb_mediacion.idEstadoMediacion,"+
										  "cat_estado_mediacion.nombreEstado "+
										  "FROM tb_mediacion " +
										  "INNER JOIN cat_especialidad ON tb_mediacion.idEspecialidad = cat_especialidad.idEspecialidad "+
										  "INNER JOIN cat_faseMediacion ON tb_mediacion.idFaseMediacion = cat_faseMediacion.idCatFasesMediacion "+
										  "INNER JOIN cat_estado_mediacion ON tb_mediacion.idEstadoMediacion = cat_estado_mediacion.idEstadoMediacion "+
										  "WHERE tb_mediacion.idEspecialidad = "+idEspecialidad+ " "+
										  "AND tb_mediacion.idUsuario ="+idUser+ " "+
										  "AND tb_mediacion.activa = 1";
			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(searchMediacionesPorEspecialidad, [], function(errquery, results) 
					{
						connection.release(); // always put connection back in pool after last query
						if(errquery) 
						{ 
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{							
													
							if(results[0]!=undefined)
							{	
													
								console.log(results);						
								res.send({'status':'OK','result':results,'mensaje':'Mediaciones por especialidad.'});
							}
							else
							{
								res.send({'status':'NR','result':results,'mensaje':'Sin mediaciones en esa especialidad para el usuario.'});
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
		res.send({'status':'ERTC','result':[],'mensaje':'Error en el servicio:.'+ex});
	}
	
});






app.post('/crearMediacion',function(req,res)
{	
	console.log(req.body);
	
	var usuario			=req.body.idUsuario;	
	var nombreTramite	=req.body.numTram;
	var folio			=req.body.folio;
	var cliente			=req.body.idCliente;
	var especialidad	=req.body.idEspecialidad;	
	var estadoMediacion	=req.body.idEstadoMediacion;	
	var descripcion		=req.body.descripcion;			
	var fase			=req.body.idFaseMediacion;	


	try
	{
		if(usuario!=undefined && nombreTramite!=undefined && folio!=undefined&& cliente!=undefined&& especialidad!=undefined&& estadoMediacion!=undefined && descripcion!=undefined && fase!=undefined )
		{
	
	
	
			var insertNuevaMediacion="insert into tb_mediacion (idMediacion,idUsuario,nombreTramite,folio,idCliente,idEspecialidad,created_at,activa,idEstadoMediacion,descripcion,idFaseMediacion) values (default,"+
																		 usuario+ ",'"+nombreTramite+"','"+ folio+"',"+ cliente+","+ especialidad+",now(),1,"+estadoMediacion+",'"+descripcion+"',"+fase+")";

			
			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(insertNuevaMediacion, [], function(errquery, results) 
					{
						connection.release();
						if(errquery) 
						{ 
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{							
							if(results!=undefined)
							{					
								
								//console.log("resultsadoPPPPPPPPPPPPPPPPPPPPPPP");	
								//console.log(results.insertId);	
								//console.log(results.idMediacion);	
								//console.log(results[0].idMediacion);									
								res.send({'status':'OK','result':results.insertId,'mensaje':'Mediacion creada correctamente.'});
								
								logger(1,results.insertId,1,"Mediación creada exitosamente");

							}
							else
							{
								res.send({'status':'NR','result':[],'mensaje':'Error al crear la mediacion.'});
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


app.post('/cancelarMediacion',function(req,res)
{	
	console.log(req.body);
	
	var idMediacion			=req.body.idMediacion;	


	try
	{
		if(idMediacion!=undefined)
		{
	
	
	
			var cancelaMediacion="update tb_mediacion set tb_mediacion.idFaseMediacion = 5 where tb_mediacion.idMediacion="+idMediacion;

			
			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(cancelaMediacion, [], function(errquery, results) 
					{
						connection.release();
						if(errquery) 
						{ 
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{							
							if(results!=undefined)
							{					
								console.log(results);						
								res.send({'status':'OK','result':results,'mensaje':'Mediacion abandonada.'});
								logger(17,idMediacion,1,"Mediacion abandonada");
							}
							else
							{
								res.send({'status':'NR','result':[],'mensaje':'Error al modficiar la mediacion.'});
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





app.post('/reactivarMediacion',function(req,res)
{	
	console.log(req.body);
	
	var idMediacion			=req.body.idMediacion;	


	try
	{
		if(idMediacion!=undefined)
		{
	
	
	
			var reactivarMediacion="update tb_mediacion set tb_mediacion.idFaseMediacion = 1 where tb_mediacion.idMediacion="+idMediacion;

			
			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(reactivarMediacion, [], function(errquery, results) 
					{
						connection.release();
						if(errquery) 
						{ 
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{							
							if(results!=undefined)
							{					
								console.log(results);						
								res.send({'status':'OK','result':results,'mensaje':'Mediacion reactivada.'});
							}
							else
							{
								res.send({'status':'NR','result':[],'mensaje':'Error al modficiar la mediacion.'});
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



app.get('/getEspecialidades',function(req,res)
{			
	var insertUserClients="SELECT * from cat_especialidad";
 
	try
	{
		pool.getConnection(function(err, connection) {
			if(err) { 
				console.log(err);  
				res.send({'status':'ER','result':[],'mensaje':err.toString()});
			}
			else
			{
				connection.query(insertUserClients, [], function(errquery, results) 
				{
					connection.release();
					if(errquery) 
					{ 
						console.log(errquery);
						res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
					}
					else
					{							
						if(results!=undefined)
						{			
							res.send({'status':'OK','result':results,'mensaje':'Lista de especialidades.'})				
						}
						else
						{
							res.send({'status':'ERR','result':[],'mensaje':'No se pudo obtener lista de especialidades.'});
						}
					}
				});
			}
		});		
	}
	catch(ex)
	{
		res.send({'status':'ERTC','result':[],'mensaje':'Error en el servicio:.'+ex.message});
	}
	
	
});


app.get('/getEstadosMediacion',function(req,res)
{			
	var insertUserClients="SELECT * from cat_estado_mediacion";
	try
	{
		pool.getConnection(function(err, connection) {
			if(err) { 
				console.log(err);  
				res.send({'status':'ER','result':[],'mensaje':err.toString()});
			}
			else
			{
				connection.query(insertUserClients, [], function(errquery, results) 
				{																 
	  
					connection.release();
					if(errquery) 
					{ 
						console.log(errquery);
						res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
					}
					else
					{							
						if(results!=undefined)
						{			
							res.send({'status':'OK','result':results,'mensaje':'Lista de estados de la mediación.'})				
						}
						else
						{									
							res.send({'status':'ERR','result':[],'mensaje':'No se pudo obtener lista de estados de la mediación.'});																							
		
						}
					}
	 
				});
   
			}
		});		
   	}
	catch(ex)
	{
		res.send({'status':'ERTC','result':[],'mensaje':'Error en el servicio:.'+ex.message});
	}
	
	
});



app.get('/getFasesMediacion',function(req,res)
{			
	var getFasesMed="SELECT * from cat_faseMediacion";
	try
	{
		pool.getConnection(function(err, connection) {
			if(err) { 
				console.log(err);  
				res.send({'status':'ER','result':[],'mensaje':err.toString()});
			}
			else
			{
				connection.query(getFasesMed, [], function(errquery, results) 
				{
					connection.release();
					if(errquery) 
					{ 
						console.log(errquery);
						res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
					}
					else
					{							
						if(results!=undefined)
						{			
							res.send({'status':'OK','result':results,'mensaje':'Lista de estados de la mediación.'})				
						}
						else
						{
							res.send({'status':'ERR','result':[],'mensaje':'No se pudo obtener lista de estados de la mediación.'});
						}
					}
				});
			}
		});		
	}
	catch(ex)
	{
		res.send({'status':'ERTC','result':[],'mensaje':'Error en el servicio:.'+ex.message});
	}
});

app.post('/insertEventsMediacion',function(req,res)
{			

	var idEvento			=req.body.idEvento;	
	var idMediacion			=req.body.idMediacion;	
	var resultado			=req.body.idResultado;	
	var mensaje			=req.body.mensaje;	


	try
	{
		if(idEvento!=undefined && idMediacion!=undefined && resultado!=undefined && mensaje!=undefined )
		{
			
			logger(idEvento,idMediacion,resultado,mensaje);
			res.send( {'status':'OK','result':[],'mensaje':'Se salva evento'});
		}
		else
		{
			res.send({'status':'ERP','result':[],'mensaje':'Parametros incorrectos favor de revisar'});
		}
	}
	catch(ex)
	{
		res.send({'status':'ERTC','result':[],'mensaje':'Error en el servicio:'+ex});
	}
});



app.post('/getEventsMediacion',function(req,res)
{			

	console.log(req.body);	
	var idMediacion			=req.body.idMediacion;	
	try
	{
		if(idMediacion!=undefined)
		{
	
	
			var getEventsMediacion= "SELECT cat_evento.nombreEvento,tb_eventoMediacion.idEvento,tb_eventoMediacion.idResultadoEvento,cat_resEvento.nombreResultado,tb_eventoMediacion.mensaje,tb_eventoMediacion.created_at "+
									"FROM tb_eventoMediacion "+
									"INNER JOIN cat_evento ON tb_eventoMediacion.idEvento = cat_evento.idEvento "+
									"INNER JOIN cat_resEvento ON cat_resEvento.idResultadoEvento = tb_eventoMediacion.idResultadoEvento "+
									"WHERE tb_eventoMediacion.idMediacion = "+idMediacion+" ORDER BY tb_eventoMediacion.created_at DESC";



			
			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(getEventsMediacion, [], function(errquery, results) 
					{
						connection.release();
						if(errquery) 
						{ 
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{							
							if(results!=undefined)
							{					
								if(results.length>0)
								{
										res.send({'status':'OK','result':results,'mensaje':'Lista de eventos de mediación.'});			
								}
								else
								{
										res.send({'status':'NR','result':[],'mensaje':'Sin eventos de mediacion.'});			
								}
							}
							else
							{
								res.send({'status':'ERR','result':[],'mensaje':'Error al modficiar la mediacion.'});
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

app.get('/getTiposArchivos',function(req,res)
{			
	var getTiposArchivos="SELECT * from cat_tiposArchivos";
	try
	{
		pool.getConnection(function(err, connection) {
			if(err) { 
				console.log(err);  
				res.send({'status':'ER','result':[],'mensaje':err.toString()});
			}
			else
			{
				connection.query(getTiposArchivos, [], function(errquery, results) 
				{
					connection.release();
					if(errquery) 
					{ 
						console.log(errquery);
						res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
					}
					else
					{							
						if(results!=undefined)
						{			
							if(results.length>0)
							{
									res.send({'status':'OK','result':results,'mensaje':'Lista de tipos de archivos.'});			
							}
							else
							{
									res.send({'status':'OK','result':results,'mensaje':'Sin lista de tipos de archivos.'});			
							}
										
						}
						else
						{
							res.send({'status':'ERR','result':[],'mensaje':'No se pudo obtener lista de estados de la mediación.'});
						}
					}
				});
			}
		});		
	}
	catch(ex)
	{
		res.send({'status':'ERTC','result':[],'mensaje':'Error en el servicio:.'+ex.message});
	}
});



   ///
app.post('/getListaArchivosUsuario',function(req,res)
{	
	console.log(req.body);

	var idUsuario				=req.body.idUsuario;	
	var idMediacion				=req.body.idMediacion;	

	
	
	var hash				=req.body.hash;	

	
	
	var getFilesMediacionByUser = "SELECT tb_archivosMediacion.idArchivo,tb_archivosMediacion.idMediacion,tb_archivosMediacion.idArchivosMediacion,tb_archivosMediacion.idUsuario,tb_archivo.nombre,tb_archivo.descripcion,tb_archivo.url,tb_archivo.hashArchivo,"+
							      "tb_archivo.created_at,tb_archivosMediacion.activa "+
								  "FROM tb_archivosMediacion "+
								  "INNER JOIN tb_archivo ON tb_archivosMediacion.idArchivo = tb_archivo.idArchivo "+
								 
								  "WHERE tb_archivosMediacion.idMediacion = "+idMediacion+" AND tb_archivosMediacion.idUsuario = "+idUsuario+" AND tb_archivosMediacion.activa = 1 ";
								
								  
	if(hash!=undefined)
	{
		getFilesMediacionByUser+= " AND tb_archivo.hashArchivo IS NOT NULL";
	}		
								  
								  
								  
	getFilesMediacionByUser +=   " ORDER BY tb_archivo.created_at ASC ";							  
								  
								  console.log(getFilesMediacionByUser);

	try
	{
		if(idUsuario!=undefined && idMediacion!=undefined  )
		{
	

			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(getFilesMediacionByUser, [], function(errquery, results) 
					{
						connection.release();
						if(errquery) 
						{ 
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{							
							if(results!=undefined)
							{			
								if(results.length>0)
								{
									console.log(results);						
									res.send({'status':'OK','result':results,'mensaje':'Lista de archivos.'});
								}							
								else
								{
									res.send({'status':'NR','result':results,'mensaje':'Sin Archivos para esta mediacion.'});
								}
						
							}
							else
							{
								res.send({'status':'ERR','result':[],'mensaje':'No se pudo obtenr los archivos.'});
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





app.post('/obtenerClientesUsuario',function(req,res)
{	
	console.log(req.body);

	var idUsuario				=req.body.idUsuario;			
	var insertUserClients="SELECT * from tb_cliente where tb_cliente.idUsuario="+idUsuario;
	
	try
	{
		if(idUsuario!=undefined && insertUserClients!=undefined  )
		{
	

			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(insertUserClients, [], function(errquery, results) 
					{
						connection.release();
						if(errquery) 
						{ 
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{							
							if(results!=undefined)
							{			
								if(results.length>0)
								{
									console.log(results);						
									res.send({'status':'OK','result':results,'mensaje':'Lista de clientes.'});
								}							
								else
								{
									res.send({'status':'NR','result':results,'mensaje':'Sin clientes dados de Alta.'});
								}
						
							}
							else
							{
								res.send({'status':'ERR','result':[],'mensaje':'No se pudo obtenr los clientes.'});
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



app.post('/insertarNewCliente',function(req,res)
{	
	console.log(req.body);
	
	var nombreCliente			=req.body.nombreCliente;	
	var abreviaturaCliente		=req.body.abreviaturaCliente;	
	var idUsuario				=req.body.idUsuario;	
	
	
	
	try
	{
		if(nombreCliente!=undefined && abreviaturaCliente!=undefined && idUsuario!=undefined)
		{
	
			var searchUserClients="SELECT * from tb_cliente where tb_cliente.idUsuario="+idUsuario+" and tb_cliente.abreviaturaCliente='"+abreviaturaCliente+"' and tb_cliente.nombreCliente='"+nombreCliente+"'";

			pool.getConnection(function(err, connection) {
				if(err) { 
					console.log(err);  
					res.send({'status':'ER','result':[],'mensaje':err.toString()});
				}
				else
				{
					connection.query(searchUserClients, [], function(errquery, results) 
					{
						
						if(errquery) 
						{ 
						    connection.release();
							console.log(errquery);
							res.send({'status':'ERQ','result':[],'mensaje':errquery.toString()})
						}
						else
						{			
							console.log(results);			
							if(results!=undefined)
							{			
								if(results.length>0)
								{
									res.send({'status':'RF','result':results,'mensaje':'Ya existe el cliente.'});
								}
								else
								{
									var insertNewUserClient="insert into tb_cliente (idUsuarioCliente,nombreCliente,abreviaturaCliente,idUsuario,activa) values (default"+
										  ",'"+nombreCliente+"','"+abreviaturaCliente+"',"+idUsuario+",1)";					
														
									console.log(insertNewUserClient);
									
									connection.query(insertNewUserClient, [], function(errqueryinsertNewUserClient, resultsinsertNewUserClient) {


										connection.release(); // always put connection back in pool after last query
										if(errqueryinsertNewUserClient) 
										{ 
											console.log(errqueryinsertNewUserClient);
											res.send({'status':'ER','result':[],'mensaje':errqueryinsertNewUserClient.toString()});
										}
										else
										{
											console.log(resultsinsertNewUserClient);
											res.send({'status':'OK','result':resultsinsertNewUserClient,'mensaje':'Se inserto correctamete el nuevo cliente'});
										}
									});
								}
								
							}
							else
							{
										
									res.send({'status':'ER','result':[],'mensaje':'Sin resultado definido'});
							
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






function logger(idevento,idmediacion,resultado,mensaje)
{


console.log("HOLA");
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

	
	
var httpServer = http.createServer(app);
var httpsServer = https.createServer(credentials, app);

httpServer.listen(6001);
httpsServer.listen(6002);
console.log('Server online en puerto: ' + 6002);

/*
var httpsServer = https.createServer(credentials, app).listen(6002);
console.log('Server online en puerto: ' + 6002);
*/
/*
app.listen(6002, function () {
  console.log('server migestor development online 6002 V1.1');
});

*/
process.on('SIGINT', function() {
  console.log( "\nGracefully shutting down from SIGINT (Ctrl-C)" );
  // some other closing procedures go here
  process.exit(1);
});


