from fastapi import FastAPI

app = FastAPI()


BOOKS = [
    {"title":"Title One","author":"Author 1","category":"Science"},
    {"title":"Title Two","author":"Author 2","category":"Mathematics"},
    {"title":"Title Three","author":"Author 3","category":"History"},
    {"title":"Title Four","author":"Author 4","category":"Geography"},
    {"title":"Title Five","author":"Author 5","category":"English"}
]

@app.get("/books")
async def read_all_books():
    return BOOKS