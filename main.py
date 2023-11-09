from fastapi import FastAPI
import asyncio

app = FastAPI()

@app.get("/")
async def read_root():
    # Agregamos un retraso de 2 segundos antes de responder a la solicitud
    await asyncio.sleep(2)
    return {"message": "¡Hola, este es un servidor que utiliza la app FastAPI con un retraso de 2 segundos!"}

