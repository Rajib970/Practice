import { Component } from '@angular/core';
import { RouterLink, RouterOutlet } from '@angular/router';
import { HeaderComponent } from './header/header.component';
import { FormControl, FormGroup, FormsModule, NgForm, ReactiveFormsModule, Validators } from '@angular/forms';
import { NgIf } from '@angular/common';
import { UserComponent } from './user/user.component';


@Component({
  selector: 'app-root',
  imports: [RouterOutlet, RouterLink, HeaderComponent, ReactiveFormsModule, NgIf, FormsModule, UserComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})

export class AppComponent {

  userlist: undefined | string;

  handleUsers(users: string) {
    console.log(users);
    this.userlist = users;
  }
}


