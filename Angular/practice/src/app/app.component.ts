import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { FormsModule } from '@angular/forms';


@Component({
  selector: 'app-root',
  imports: [RouterOutlet, FormsModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  bgColor = "red"

  headingSizeBig = "100px"
  headingSizeSmall = "30px"

  zoom = true

  UpdateFont() {
    this.zoom = !this.zoom;
  }
}

