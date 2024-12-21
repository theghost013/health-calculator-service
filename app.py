from flask import Flask, request, jsonify
from health_utils import calculate_bmi, calculate_bmr
import dotenv
import os

dotenv.load_dotenv()

app = Flask(__name__)


@app.route("/", methods=["GET"])
def index():
    return "Welcome to the Health Calculator Service\nAll endpoints are available : /bmi, /bmr, /test"


@app.route("/bmi", methods=["POST"])
def bmi():
    return jsonify(bmi=calculate_bmi(request.json["weight"], request.json["height"]))


@app.route("/bmr", methods=["POST"])
def bmr():
    return jsonify(
        bmr=calculate_bmr(
            request.json["weight"],
            request.json["height"],
            request.json["age"],
            request.json["gender"],
        )
    )


@app.route("/test", methods=["GET"])
def test():
    return "test valid"


if __name__ == "__main__":
    app.run(host=os.getenv("APP_HOST"), port=os.getenv("APP_PORT"))
