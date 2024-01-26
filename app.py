from flask import Flask, render_template, request, redirect, url_for
import mysql.connector

app = Flask(__name__)

# MySQL Configuration
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'moon'
app.config['MYSQL_PASSWORD'] = 'moon'
app.config['MYSQL_DB'] = 'harmonylink'

mysql = mysql.connector.connect(
    host=app.config['MYSQL_HOST'],
    user=app.config['MYSQL_USER'],
    password=app.config['MYSQL_PASSWORD'],
    database=app.config['MYSQL_DB']
)


@app.route('/')
def index():
    # Sample query to fetch data from a table
    return render_template('index.html')



#=============== REGISTRATION ==========================


def add_user_to_database(username, email, password, confirm_password, address, contact):
    if password != confirm_password:
        return False, "Password and Confirm Password do not match"

    user_data = (username, email, password, address, contact)
    insert_query = "INSERT INTO users (username, email, password, address, contact) VALUES (%s, %s, %s, %s, %s)"

    cursor = mysql.cursor()
    cursor.execute(insert_query, user_data)
    mysql.commit()

    return True, None

@app.route('/register', methods=['POST'])
def register():
    if request.method == 'POST':
        username = request.form['username']
        email = request.form['email']
        password = request.form['password']
        confirm_password = request.form['confirm_password']
        address = request.form['address']
        contact = request.form['contact']

        success, error_message = add_user_to_database(username, email, password, confirm_password, address, contact)

        return render_template('result.html', success=success, error_message=error_message)


#=============== REGISTRATION ==========================


if __name__ == '__main__':
    app.run(debug=True)