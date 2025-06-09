import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { FormsModule } from '@angular/forms';
import { NgFor, NgIf } from '@angular/common';


@Component({
  selector: 'app-root',
  imports: [RouterOutlet, FormsModule, NgIf, NgFor],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})

export class AppComponent {
  students = ["Anil", "Sidhu", "Sam", "Bruce", "Peter"]

  studentsData = [
    {
      name: 'Rajib',
      roll: '30',
      email: 'rajib@gmail.com'
    },
    {
      name: 'Sam',
      roll: '33',
      email: 'sam@gmail.com'
    },
    {
      name: 'Jhon',
      roll: '35',
      email: 'jhon@gmail.com'
    },
    {
      name: 'Karan',
      roll: '40',
      email: 'karan@gmail.com'
    }, {
      name: 'Peter',
      roll: '50',
      email: 'peter@gmail.com'
    }
  ]
}

