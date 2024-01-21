from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# Configure PostgreSQL database
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://your_username:your_password@localhost/your_database'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

# Your models go here

# Sample model (modify as needed)
class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(20), unique=True, nullable=False)
    email = db.Column(db.String(120), unique=True, nullable=False)

# Routes
@app.route('/')
def home():
    return render_template('index.html')

@app.route('/feedback')
def feedback():
    return render_template('feedback.html')

@app.route('/connect')
def connect():
    return render_template('connect.html')

@app.route('/calendar')
def calendar():
    return render_template('calendar.html')

if __name__ == '__main__':
    app.run(debug=True)
