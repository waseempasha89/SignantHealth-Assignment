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


def test_register_new_user():
    try:
        url = f"{BASE_URL}{user_path}"
        headers = {'Content-Type': 'application/json'}
        payload = {'username': username, 'password': password, 'firstname': firstname, 'lastname': lastname,
                   'phone': phoneno}
        resp = requests.post(url, headers=headers, data=json.dumps(payload, indent=4))
        response = resp.json()
        print(resp.status_code)
        if resp.status_code == 201:
            assert response['status'] == "SUCCESS"
        else:
            logging.info(response['message'])
    except Exception as e:
        print("Exception Occured", e)


'''Creating an object for executing register Function
    Important thing is this file should be on the top of other files
'''


