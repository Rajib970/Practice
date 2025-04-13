import React, { Component } from 'react'
import NewsItem from './NewsItem'

export default class News extends Component {
    constructor() {
        super();
        this.state = {
            articles: [],
            loading: false
        }
    }

    async componentDidMount() {
        let url = "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=0f72d2b3a1e4442593eecc151b5d77b8";
        let data = await fetch(url);
        let parsedata = await data.json();
        console.log(parsedata);
        this.setState({ articles: parsedata.articles })
    }

    render() {
        return (
            <div className="row" >
                <h2> This is a news component</h2>
                {this.state.articles.map((element) => {
                    return (<div className="col-md-4" key={element.url}>
                        <NewsItem title={element.title ? element.title.slice(0, 40) : ""} description={element.description ? element.description.slice(0, 88) : ""} urlToImage={!element.urlToImage ? "https://media.npr.org/include/images/facebook-default-wide-s1400-c100.jpg" : element.urlToImage} url={element.url} />
                    </div>
                    )
                })
                }
            </div >
        )
    }

}
