from pydantic import BaseModel
from typing import Optional


class ImputBayers(BaseModel):
    fio: str
    phone: str
    email: str
    address: str


class OutputBayers(BaseModel):
    id: int
    fio: str
    phone: str
    email: str
    address: str

