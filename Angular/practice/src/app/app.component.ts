import { Component, computed, effect, signal } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { LoginComponent } from './login/login.component';
import { SignupComponent } from './signup/signup.component';
import { ProfileComponent } from './profile/profile.component';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  x = signal(10);
  y = signal(20);
  z = computed(() => this.x() + this.y())

  showValue() {
    console.log(this.z())
  }

  updateX() {
    this.x.set(100)
  }
}

