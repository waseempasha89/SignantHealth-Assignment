import requests
import json
import logging

username = "waseem"
password = "admin123"
firstname = 'waseem'
lastname = 'pasha'
phoneno = '123456'
update_firstname = 'testone'
update_lastname = 'member'
update_phoneno = '789654'
BASE_URL = "http://localhost:8080"
token_path = "/api/auth/token"
user_path = "/api/users"

def getToken():
    token_url = f"{BASE_URL}{token_path}"
    resp = requests.get(token_url, auth=(username, password))
    print(resp.status_code)
    assert resp.status_code == 200
    TOKEN = json.loads(resp.text)['token']
    return TOKEN


def test_update_user_info():
    url = f"{BASE_URL}{user_path}/{username}"
    TOKEN = getToken()
    headers = {'token': TOKEN, 'Content-Type': 'application/json'}
    payload = {'firstname': update_firstname, 'lastname': update_lastname, 'phone': update_phoneno}
    resp = requests.put(url, headers=headers, data=json.dumps(payload))
    assert resp.status_code == 201

    # verify updated user info by getting New Token Again
    TOKEN = getToken()
    headers = {'token': TOKEN}
    resp = requests.get(url, headers=headers)
    assert resp.status_code == 200
    return resp

    resp_body = resp.json()
    assert resp_body['payload']['firstname'] == update_firstname
    assert resp_body['payload']['lastname'] == update_lastname
    assert resp_body['payload']['phone'] == update_phoneno
    assert resp_body['status'] == "SUCCESS"
    logging.info(updated_info.text)