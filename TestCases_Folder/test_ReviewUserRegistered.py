import requests
import json
import logging

BASE_URL = "http://localhost:8080"
token_path = "/api/auth/token"
user_path = "/api/users"
username = "waseem"


def test_get_registered_users():
    url = f"{BASE_URL}{user_path}"
    headers = {'Content-Type': 'application/json'}

    resp = requests.get(url, headers=headers)

    assert resp.status_code == 200
    resp_body = resp.json()
    print(resp_body)
    assert username in resp_body['payload']
