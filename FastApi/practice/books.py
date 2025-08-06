from fastapi import FastAPI

app = FastAPI()

@app.get("/") # url: http://127.0.0.1:8000/
# @app.get("/api-endpoint") # url: http://127.0.0.1:8000/api-endpoint
async def first_api():
    return {"message": "Hello Rajib"}