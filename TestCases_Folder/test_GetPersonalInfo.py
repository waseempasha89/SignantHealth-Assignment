import requests
import json
import logging

BASE_URL = "http://localhost:8080"
token_path = "/api/auth/token"
user_path = "/api/users"
username = "waseem"
password = "admin123"


def getToken():
    token_url = f"{BASE_URL}{token_path}"
    resp = requests.get(token_url, auth=(username, password))
    print(resp.status_code)
    assert resp.status_code == 200
    TOKEN = json.loads(resp.text)['token']
    return TOKEN




def test_get_user_info():
    url = f"{BASE_URL}{user_path}/{username}"
    TOKEN = getToken()
    headers = {'token': TOKEN}
    resp = requests.get(url, headers=headers)
    assert resp.status_code == 200
    return resp
