from flask import Flask

"""
Createing instance of flask,
Which will your WSGI (Web server gateway interface) application.
"""
# WSGI application
app = Flask(__name__)


@app.route("/")  # Home page for route
def welcome():
    return "Hey there! It's Nick. Welcome, I am sure you will enjoy your time here."


@app.route("/index")
def index():
    return "Hey! This is an index page."


if __name__ == "__main__":
    app.run(debug=True)
