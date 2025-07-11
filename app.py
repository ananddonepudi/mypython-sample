from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "<h1>Welcome to my Python Website!</h1><p>Today demo class</p><p>Running inside a Docker container 🐳</p>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
