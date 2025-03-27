import './App.css';

import React, { Component } from 'react'
import NewsItem from './components/NewsItem';

export default class App extends Component {
  c = 'John';
  render() {
    return (
      <div className="container">
        <div className="row">
          <div className="col-md-6">
            <NewsItem title="myTitle" description="MyDescription" imageUrl="https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/ASK4776MBKLWFUK6SMLZLOAJDQ.jpg&w=1440" newsUrl="Todo" />
          </div>
          <div className="col-md-6">
            <NewsItem title="myTitle" description="MyDescription" newsUrl="Todo" />
          </div>
        </div>
      </div>
    )
  }
}

