from flask import Flask, render_template, request, redirect, url_for, session
from datetime import date

import mysql.connector

app = Flask(__name__)

isLoggedIn = False
g_username = '';


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
    return render_template('index.html', isLoggedIn=isLoggedIn, username=g_username)

@app.route('/volunteer.html')
def volunteer():
    # Sample query to fetch data from a table
    return render_template('volunteer.html')

@app.route('/donate.html')
def donate():
    # Check if the user is logged in before allowing access to the donate page
    if isLoggedIn:
        return render_template('donate.html', username=session['username'])
    else:
        return render_template('user reg form.html')

@app.route('/calendar.html')
def calendar():
    # Sample query to fetch data from a table
    return render_template('calendar.html')

@app.route('/register_login')
def register_login():
    # Sample query to fetch data from a table
    return render_template('user reg form.html')

@app.route('/donationcomplete')
def donationcomplete():
    # Sample query to fetch data from a table
    return render_template('donationcomplete.html')

@app.route('/carehomes')
def carehomes():
    try:
        cursor = mysql.cursor()
        query = "SELECT c_name, c_location FROM carehomes"
        cursor.execute(query)
        rows = cursor.fetchall()
        return render_template('carehomes.html', data=rows)

    finally:
        cursor.close()
        mysql.close()
    return render_template('donationcomplete.html')


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
        password = request.form['password']
        confirm_password = request.form['confirm_password']
        address = request.form['address']
        contact = request.form['contact']

        success, error_message = add_user_to_database(username, email, password, confirm_password, address, contact)

        return render_template('index.html', success=success, error_message=error_message)


#=============== REGISTRATION ==========================


#=============== LOGIN ==========================

app.secret_key = 'your_secret_key'  # Change this to a secret and unique value


def authenticate_user(username, password):
    cursor = mysql.cursor()
    cursor.execute("SELECT * FROM users WHERE username=%s AND password=%s", (username, password))
    user = cursor.fetchone()
    if user:
        return True
    else:
        return False

@app.route('/login', methods=['GET', 'POST'])
def login():
    global isLoggedIn
    global g_username

    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']

        if authenticate_user(username, password):
            # If authentication is successful, store the user in the session
            isLoggedIn = True
            g_username = username

            session['username'] = username
            return redirect(url_for('index'))
        else:
            error_message = "Invalid username or password"
            return render_template('user reg form.html', error_message=error_message)

    return render_template('login.html')




#=============== LOGIN ==========================


#=============== MONETARY DONATION ==========================

def add_dontation(username, amount, date):

    user_data = (username, amount, date)
    insert_query = "INSERT INTO monetary_donations (username, amount, dat) VALUES (%s, %s, %s)"

    cursor = mysql.cursor()
    cursor.execute(insert_query, user_data)
    mysql.commit()

    return True, None

@app.route('/monetarydonation', methods=['POST'])
def monetarydonation():
    global g_username
    if request.method == 'POST':
        amount = request.form['amount']
        username = g_username

        success, error_message = add_dontation(g_username,amount, date.today())

        return render_template('dummypg.html', success=success, error_message=error_message)



#=============== MONETARY DONATION ==========================



if __name__ == '__main__':
    app.run(debug=True)