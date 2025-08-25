from fastapi import FastAPI

app = FastAPI()

class Book:
    id:int
    title:str
    author:str
    description:str
    rating:int

    def __init__(self,id,title,author,description,rating):
        self.id = id
        self.title = title
        self.author = author
        self.description = description
        self.rating = rating



BOOKS = [Book(1, 'CS Pro 1','coding with roby 1','A nice book 1',5),
         Book(2, 'CS Pro 2','coding with roby 2','A nice book 2',5),
         Book(3, 'CS Pro 3','coding with roby 3','A nice book 3',5),
         Book(4, 'CS Pro 4','coding with roby 4','A nice book 4',5),
         Book(5, 'CS Pro 5','coding with roby 5','A nice book 5',5),
         Book(6, 'CS Pro 6','coding with roby 6','A nice book 6',5)
         ]

@app.get("/books")
async def read_all_books():
    return BOOKS