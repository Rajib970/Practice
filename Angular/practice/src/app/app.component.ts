import { Component } from '@angular/core';
import { RouterLink, RouterOutlet } from '@angular/router';
import { HeaderComponent } from './header/header.component';
import { FormControl, FormGroup, FormsModule, NgForm, ReactiveFormsModule, Validators } from '@angular/forms';
import { CommonModule, NgIf } from '@angular/common';
import { UserComponent } from './user/user.component';


@Component({
  selector: 'app-root',
  imports: [RouterOutlet, RouterLink, HeaderComponent, ReactiveFormsModule, NgIf, FormsModule, UserComponent, CommonModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})

export class AppComponent {
  title = "Code Step By Step"
  name = "RAJIB"

  date = new Date();

  amount = 10;


}


