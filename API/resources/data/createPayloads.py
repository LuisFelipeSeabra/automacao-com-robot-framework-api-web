import json

def criar_payload_para_gerar_token(email, senha):
    payload = {
        "email": f"{email}",
        "password": f"{senha}"
    }
    payload_json = json.dumps(payload, indent=4)
    return  payload_json

def criar_payload_para_cadastro_de_cliente(nome,email, senha, adm):
    payload = {
        "nome": f"{nome}",
        "email": f"{email}",
        "password": f"{senha}",
        "administrador": f"{adm}"
    }
    payload_json = json.dumps(payload, indent=4)
    return  payload_json