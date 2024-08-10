from flask import Flask

"""
Createing instance of flask,
Which will your WSGI (Web server gateway interface) application.
"""
# WSGI application
app = Flask(__name__)


@app.route("/") # Home page for route
def welcome():
    return "Hey there! Welcome"


if __name__ == "__main__":
    app.run(debug=True)
