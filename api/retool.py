from flask import Blueprint, request, abort

retool_api = Blueprint("retool", __name__)

@retool_api.route("/")
def hello():
    return "Hello World"
