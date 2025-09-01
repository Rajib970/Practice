from fastapi import FastAPI
from pydantic import BaseModel, Field


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


class BookRequest(BaseModel):
    id: int | None = Field(description="ID is not needed on create",default=None)
    title:str = Field(min_length=3)
    author:str = Field(min_length=1)
    description:str = Field(min_length=1, max_length=100)
    rating:int = Field(gt=1, lt=6)

    model_config = {
        "json_schema_extra":{
            "example":{
                "title":"A new Title",
                "author":"New Author",
                "description":"A New Description",
                "rating":5
            }
        }
    }


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

@app.get("/books/{book_id}")
async def read_book(book_id:int):
    for book in BOOKS:
        if book.id == book_id:
            return book
        
@app.get("/books/")
async def read_book_by_rating(rating: int):
    book_to_return = []
    for book in BOOKS:
        if book.rating == rating:
            book_to_return.append(book)
    return book_to_return        
                    

@app.post("/create-book")
async def create_book(book : BookRequest):
    new_book = Book(**book.model_dump())
    print(type(new_book))
    BOOKS.append(find_book_id(new_book))

def find_book_id(book:Book):
    # if len(BOOKS) > 0:
    #     book.id = BOOKS[-1].id + 1
    # else:
    #     book.id = 1

    book.id = 1 if len(BOOKS) == 0 else BOOKS[-1].id + 1

    return book            


@app.put("/books/update_book")
async def update_book(book: BookRequest):
    for i in range(len(BOOKS)):
        if BOOKS[i].id == book.id:
            BOOKS[i] = book

@app.delete("/books/{book_id}")
async def delete_book(book_id:int):
    for i in range(len(BOOKS)):
        if BOOKS[i].id == book_id:
            BOOKS.pop(i)
            break            