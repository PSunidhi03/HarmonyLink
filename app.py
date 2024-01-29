from flask import Flask, render_template, request, redirect, url_for
import mysql.connector

app = Flask(__name__)

# MySQL Configuration
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'orange'
app.config['MYSQL_PASSWORD'] = 'orange'
app.config['MYSQL_DB'] = 'harmonylink'

mysql = mysql.connector.connect(
    host=app.config['MYSQL_HOST'],
    user=app.config['MYSQL_USER'],
    password=app.config['MYSQL_PASSWORD'],
    database=app.config['MYSQL_DB']
)

#=============== ROUTES ==========================


@app.route('/')
def index():
    # Sample query to fetch data from a table
    return render_template('index.html')

@app.route('/volunteer.html')
def volunteer():
    # Sample query to fetch data from a table
    return render_template('volunteer.html')

@app.route('/donate.html')
def donate():
    # Sample query to fetch data from a table
    return render_template('donate.html')

@app.route('/calendar.html')
def calendar():
    # Sample query to fetch data from a table
    return render_template('calendar.html')

@app.route('/register_login')
def register_login():
    # Sample query to fetch data from a table
    return render_template('user reg form.html')

#=============== ROUTES ==========================



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
        password = str(request.form['password'])
        confirm_password = str(request.form['confirm_password'])
        address = str(request.form['address'])
        contact = str(request.form['contact'])

        success, error_message = add_user_to_database(username, email, password, confirm_password, address, contact)

        return render_template('index.html', success=success, error_message=error_message)


#=============== REGISTRATION ==========================


if __name__ == '__main__':
    app.run(debug=True)