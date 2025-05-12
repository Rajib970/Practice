import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { SignupComponent } from './signup/signup.component';
import { ProfileComponent } from './profile/profile.component';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, LoginComponent, SignupComponent, ProfileComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  name = "";
  displayName = "";
  setName = "Sam";
  email = ""

  getName(event: Event) {
    this.name = (event.target as HTMLInputElement).value
  }

  showName() {
    this.displayName = this.name;
  }

  nameSet() {
    this.name = "Sam";
  }

  getEmail(val: string) {
    this.email = val;
  }

  setEmail() {
    this.email = "Default@gmail.com"
  }


}

