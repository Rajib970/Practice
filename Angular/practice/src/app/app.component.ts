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
  display = true
  x = 10
  toggle = false

  hideDiv() {
    this.display = false
  }

  showDiv() {
    this.display = true
  }

  toggleDiv() {
    this.display = !this.display
  }

  toggleDivTwo() {
    this.toggle = !this.toggle
  }

  handleEvent(event:Event) {
    console.log("Event!", event.type)
    console.log((event.target as HTMLInputElement).value)
  }



}

