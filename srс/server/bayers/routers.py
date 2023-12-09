from fastapi import APIRouter
from typing import List
from .models import OutputBayers, ImputBayers
from .resolvers import get_bayers, get_bayer, add_bayer, update_bayer, delete_bayer


router = APIRouter()


@router.get('/')
def get_bayers() -> List[OutputBayers]:
    return get_bayers()


@router.get('/{bayer_id}')
def get_current_bayer(bayer_id: int) -> OutputBayers:
    return get_bayer(bayer_id)


@router.post('/')
def add_bayer(new_bayer: ImputBayers) -> OutputBayers:
    return add_bayer(new_bayer)


@router.post('/{bayer_id}')
def update_bayer(bayer_id: int, new_bayer: ImputBayers) -> OutputBayers:
    return update_bayer(bayer_id, new_bayer)


@router.delete("/{bayer_id}")
def delete_bayer(group_id: int) -> int:
    return delete_bayer(group_id)
