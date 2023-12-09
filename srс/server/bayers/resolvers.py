from srс.server.database.db_manager import base_manager
from .models import OutputBayers, ImputBayers

ID = 0
NAME = 1


def get_bayers():
    res = base_manager.execute("SELECT id, fio, phone, email, address FROM bayers", many=True)
    print(res)
    bayers = []
    for bayer in bayers:
        OutputBayers(id=bayer["id"], fio=bayer["fio"], phone=bayer["phone"], email=bayer["email"], address=bayer["address"])
    return bayers


def get_bayer(bayer_id: int):
    res = base_manager.execute("SELECT id ,fio, phone, email, address FROM bayers WHERE id = ?",
                               args=(bayer_id,), many=False)
    print(res)
    return OutputBayers(id=res["id"], fio=res["fio"], phone=res["phone"], email=res["email"], address=res["address"])


def add_bayer(new_bayer: ImputBayers):
    res = base_manager.execute("INSERT INTO bayers(fio, phone, email, address)",
                               "VALUES (?, ?, ?, ?)"
                               "RETURING id", args=(new_bayer.fio, new_bayer.phone, new_bayer.email, new_bayer.address,))
    print(res)
    return res


def update_bayer(bayer_id: int, bayer: ImputBayers):
    res = base_manager.execute("UPDATE bayers SET (fio = ?, phone = ?, email = ?, address = ?) WHERE id = ?",
                               args=(bayer.fio, bayer.phone, bayer.email, bayer.address, bayer_id,))
    return 200


def delete_bayer(bayer_id: int):
    res = base_manager.execute("DELETE FROM bayers WHERE id = ?",
                               args=(bayer_id,))
