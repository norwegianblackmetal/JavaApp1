from flask import Flask
from flask import render_template
from flask_cors import CORS, cross_origin

app = Flask(__name__)
CORS(app)

@app.route('/')
@cross_origin()
def index():
    return render_template('index.html')

if __name__ == '__main__':
    app.run()