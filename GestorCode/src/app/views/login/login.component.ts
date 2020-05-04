import { Component ,OnInit} from '@angular/core';
import { Router, ActivatedRoute } from '@angular/router';
import { AuthService } from     '../../auth/auth.service';  ///'../auth.service';



import {FormControl, FormGroupDirective, NgForm, Validators} from '@angular/forms';
import {ErrorStateMatcher} from '@angular/material/core';




@Component({
  selector: 'app-dashboard',
  templateUrl: 'login.component.html',
  styleUrls: ['login.component.css']
})



export class LoginComponent implements OnInit,ErrorStateMatcher {
  email = '';
  password = '';
   
  constructor(private authService: AuthService) {
     
  }


  Login() 
  {
  console.log("Login try:")
  this.authService.login(this.email, this.password)
   
  }
 
  ngOnInit() { }

  isErrorState(control: FormControl | null, form: FormGroupDirective | NgForm | null): boolean {
    const isSubmitted = form && form.submitted;
    return !!(control && control.invalid && (control.dirty || control.touched || isSubmitted));
  }
  


}