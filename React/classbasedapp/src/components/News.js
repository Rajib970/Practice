import React, { Component } from 'react'
import NewsItem from './NewsItem'

export default class News extends Component {
    atricles = [a1, a2, a3];
    constructor() {
        super();
        this.state = {
            articles: this.atricles,
            loading: false
        }
    }
    render() {
        return (
            <div>
                <h2> This is a news component</h2>
                <NewsItem title="test" description="test" url="https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/ASK4776MBKLWFUK6SMLZLOAJDQ.jpg&w=1440" />
                <NewsItem />
                <NewsItem />
                <NewsItem />
            </div>
        )
    }
}
