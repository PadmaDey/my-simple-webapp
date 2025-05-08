import os
from flask import Flask

app = Flask(__name__)

@app.route("/")
def main():
    return "Welcome to Klizos"

@app.route("/How are you doing?")
def hello():
    return "I am good. What about you?"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)