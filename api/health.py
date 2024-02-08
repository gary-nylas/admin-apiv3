from flask import Blueprint, request, abort

health_api = Blueprint("health", __name__)

@health_api.route("/health", methods=["GET"])
def health():
    return "OK", 200