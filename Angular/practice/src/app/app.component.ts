import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { SignupComponent } from './signup/signup.component';
import { ProfileComponent } from './profile/profile.component';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet,LoginComponent,SignupComponent,ProfileComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  count: number = 0
  
  handleIncrememnt() {
    this.count+=1
  }

  handleDecrememnt() {
    if(this.count>0)
    this.count -= 1
  }

  handleReset() {
    this.count = 0
  }

  handleCounter(val: string) {

    if (val == '+') {
      this.count += 1
    } else if (val == '-' && this.count > 0) {
      this.count -= 1
    } else {
      this.count = 0
    }
    
  }
}

