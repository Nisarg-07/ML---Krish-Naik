from flask import Flask, render_template

"""
Createing instance of flask,
Which will your WSGI (Web server gateway interface) application.
"""
# WSGI application
app = Flask(__name__)


@app.route("/")  # Home page for route
def welcome():
    return "<html><h1>Hey there! Welcome</h1></html>"


@app.route("/index")
def index():
    return render_template("index.html")


@app.route("/about")
def about():
    return render_template("about.html")


if __name__ == "__main__":
    app.run(debug=True)
