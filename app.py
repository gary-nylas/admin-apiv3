from flask import Flask
import os
from api.retool import retool_api
from api.health import health_api

app = Flask(__name__)
# app.register_blueprint(retool_api)
# app.register_blueprint(health_api)


@app.route('/')
def hello():
    return 'Hello, Kubernetes with Flask!'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
