import { Component, effect, signal } from '@angular/core';
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
  x = 10
  count = signal(10);

  constructor() {
    effect(() => {
      console.log(this.count());
      // console.log(this.x);
    })
  }

  updateValue(val: string) {
    if (val == 'inc') {
      this.count.set(this.count() + 1);
    } else {
      this.count.set(this.count() - 1);
    }
  }
}

