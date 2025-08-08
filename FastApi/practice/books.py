from fastapi import FastAPI

app = FastAPI()

BOOKS = [
    {"title":"Title One","author":"Author One","category":"Science"},
    {"title":"Title Two","author":"Author Two","category":"Science"},
    {"title":"Title Three","author":"Author Three","category":"History"},
    {"title":"Title Four","author":"Author Four","category":"Math"},
    {"title":"Title Five","author":"Author Five","category":"Math"},
    {"title":"Title Six","author":"Author Six","category":"Math"}
]


@app.get("/books") # url: http://127.0.0.1:8000/api-endpoint
async def read_all_books():
    return BOOKS

@app.get("/books/mybook") 
async def read_all_books(mybook):
    return {"book_title":"My Favourite Book"}

@app.get("/books/{dynamic_param}")
async def read_all_books(dynamic_param:str): 
    return {"dynamic_param":dynamic_param}

@app.get("/book/{book_title}")
async def read_book(book_title:str):
    for book in BOOKS:
        if book.get('title').casefold() == book_title.casefold():
            return book


