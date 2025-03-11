import './App.css';

import React, { Component } from 'react'
import NewsItem from './components/NewsItem';

export default class App extends Component {
  c = 'John';
  render() {
    return (
      <div className="container my-2">
        <div className="row">
          <div className="col-md-6">
            <NewsItem title="myTitle" description="MyDescription" />
            <div className="col-md-6">
              <NewsItem title="myTitle" description="MyDescription" />
            </div>
          </div>
        </div>
      </div>
    )
  }
}

