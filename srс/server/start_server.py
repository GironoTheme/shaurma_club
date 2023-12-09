from fastapi import FastAPI
import uvicorn
from fastapi.responses import RedirectResponse
from bayers import router as bayers_router

app = FastAPI()

app.include_router(bayers_router, prefix="/bayers")


@app.get('/')
def root():
    return RedirectResponse('/docs')


if __name__ == '__main__':
    uvicorn.run(app="start_server:app", host="127.0.0.1", port=8000, reload=True)
