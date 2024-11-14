# auth_service.py
from flask import Flask, request, abort

import os

app = Flask(__name__)

API_KEY = os.getenv('API_KEY')

@app.route('/auth')
def auth():
    api_key = request.headers.get('X-API-KEY')
    if api_key == API_KEY:
        return '', 200
    else:
        abort(403)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)

