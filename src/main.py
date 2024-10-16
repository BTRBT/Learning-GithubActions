from datetime import datetime

from flask import Flask, render_template


def one():
    # Returns one. What do you want?
    # Used in testing
    return 1

# Rudimentary flask application.
app = Flask(__name__)

@app.route("/")
def hello_world():
    # Fetches the current time.
    now = datetime.now()

    # Formats the time.
    # eg: Monday, October 14, 2024 at 03:45 PM
    formatted_date_time = now.strftime("%A, %B %d, %Y at %I:%M %p")

    return render_template('index.html', time=formatted_date_time)
