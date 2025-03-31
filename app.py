from datetime import datetime
from flask import Flask

app = Flask(__name__)

@app.route('/')
def the_time():
    current = datetime.now().strftime("%b %d, %Y, %H:%M")

    return f"<h1>Current time: {now}</h1>"

if __name__ == "__main__":
    app.run(host="10.92.21.104", port=8044)
