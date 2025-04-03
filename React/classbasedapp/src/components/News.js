import React, { Component } from 'react'
import NewsItem from './NewsItem'

export default class News extends Component {
    articles = [
        {
            "source": {
                "id": null,
                "name": "BBC News"
            },
            "author": null,
            "title": "Bitcoin in the bush - the crypto mine in remote Zambia",
            "description": "Bitcoin miners will go to remote locations to take advantage of cheap electricity.",
            "url": "https://www.bbc.com/news/articles/cly4xe373p4o",
            "urlToImage": "https://ichef.bbci.co.uk/news/1024/branded_news/583f/live/26541af0-0628-11f0-b773-ddd19e96af91.jpg",
            "publishedAt": "2025-03-25T05:53:55Z",
            "content": "Joe TidyCyber correspondent, BBC World Service\r\nEngineers from Gridless create makeshift computer labs to maintain their bitcoin mines\r\nThe roar of the Zambezi is deafening as millions of gallons of … [+8832 chars]"
        },
        {
            "source": {
                "id": null,
                "name": "CNET"
            },
            "author": "Evan Zimmer",
            "title": "Trump Signs Executive Order Creating a Strategic Bitcoin Reserve. What Does It Mean for Cryptocurrency?",
            "description": "Similar to how the government has a reserve of other currencies such as gold, this reserve houses the country's digital currency.",
            "url": "https://www.cnet.com/personal-finance/crypto/trump-signs-executive-order-creating-a-strategic-bitcoin-reserve-what-does-it-mean-for-cryptocurrency/",
            "urlToImage": "https://www.cnet.com/a/img/resize/511d7a10a23afef51a95ef553fa61647efd01373/hub/2025/01/29/f11cf59d-a006-459c-a618-56ed85969d87/gettyimages-2159371875.jpg?auto=webp&fit=crop&height=675&width=1200",
            "publishedAt": "2025-03-07T17:31:00Z",
            "content": "On Thursday, President Donald Trump signed an executive order authorizing the creation of a strategic bitcoin reserve. The reserve will hold bitcoin obtained by the US government through criminal or … [+3785 chars]"
        },
        {
            "source": {
                "id": "business-insider",
                "name": "Business Insider"
            },
            "author": "Kwan Wei Kevin Tan",
            "title": "Cathie Wood says people are going to learn the hard way that meme coins are the worst",
            "description": "Wood, who has been bullish about cryptocurrencies like bitcoin, said her private funds are not investing in meme coins.",
            "url": "https://www.businessinsider.com/cathie-wood-people-buying-meme-coins-learn-a-hard-lesson-2025-3",
            "urlToImage": "https://i.insider.com/67da328fb8b41a9673fb0acb?width=1200&format=jpeg",
            "publishedAt": "2025-03-19T05:04:25Z",
            "content": "Ark Invest's Cathie Wood, who has been bullish about cryptocurrencies like bitcoin, said her private funds are not investing in meme coins.Joe Raedle via Getty Images\r\n<ul><li>Cathie Wood said most m… [+3159 chars]"
        },
        {
            "source": {
                "id": null,
                "name": "Slashdot.org"
            },
            "author": "BeauHD",
            "title": "Trump Signs Order To Establish Strategic Bitcoin Reserve",
            "description": "President Trump has signed an executive order to establish a strategic reserve of cryptocurrencies by using tokens already owned by the government. Reuters reports: A \"Strategic Bitcoin Reserve\" will be capitalized with bitcoin owned by the federal government…",
            "url": "https://yro.slashdot.org/story/25/03/07/2224215/trump-signs-order-to-establish-strategic-bitcoin-reserve",
            "urlToImage": "https://a.fsdn.com/sd/topics/bitcoin_64.png",
            "publishedAt": "2025-03-07T23:20:00Z",
            "content": "I think this is probably a typical story. Back in 2011 or so I screwed around with Bitcoin. Back then it was possible to mine it without using the power output of Argentina. I figured it was a nice p… [+312 chars]"
        }
    ];
    constructor() {
        super();
        this.state = {
            articles: this.articles,
            loading: false
        }
    }
    render() {
        return (
            <div className="row">
                <h2> This is a news component</h2>
                {this.state.articles.map((element) => {
                    return (<div className="col-md-4" key={element.url}>
                        <NewsItem title={element.title.slice(0, 40)} description={element.description.slice(0, 88)} urlToImage={element.urlToImage} url={element.url} />
                    </div>
                    )
                })}
            </div>
        )
    }

}
