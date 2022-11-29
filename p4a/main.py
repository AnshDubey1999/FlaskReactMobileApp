from flask import Flask
from flask_cors import CORS


app = Flask(__name__,
            static_folder='./htmls/',
            static_url_path="/ui/" # http://127.0.0.1/ui/
            )
CORS(app)


@app.route('/', defaults={'path': ''})
@app.route('/<path:path>')
def catch_all(path):
    return app.send_static_file("index.html")


if __name__ == "__main__":
    print("http://127.0.0.1:5000/ui/")
    app.run(host="0.0.0.0", port=5000, debug=False)
