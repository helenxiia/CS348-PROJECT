# Course Connect
CS 348: Introduction to Database Systems Spring 2023 Group Project

Members: Helen Xia, Jasmine Xu, Sohom Ghosh, Kevin Zhang

### Current Features that the application supports
Milestone 1
1. The user can input previous courses through search and click then see their prerequisite
and term availabilities. Ultimately, we want this to be a drag-and-drop feature for a better
user experience.

2. After the user has inputted previous courses, we ask them to rate them. The average
course rating is calculated and stored for each course and displayed when shown to
users.

3. Users can filter their courses based on rating, term availability, and subject. This display
of the searched courses will provide various information, such as friends taking the
course, course term availability, subject, course code, etc.

4. The implementation of seeing what a user’s friends are taking. This feature makes users
more inclined to take a course if their friends are taking it, creating a social aspect of the
application.

Milestone 2
5. Login and sign/up page for existing and new users. Sessions are saved and used to track
which user is using the application. Checks for incorrect passwords and stores them encrypted
in the database.
6. Displays the highest-rated courses in the web application. 

## Installation

Make sure you have python3 and pip installed

Create and activate virtual environment using virtualenv
```bash
$ python -m venv python3-virtualenv
$ source python3-virtualenv/bin/activate
```

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install all dependencies!

```bash
pip install -r requirements.txt
```

## How to setup the database
You should install MySQL based on your system (https://dev.mysql.com/doc/refman/8.0/en/installing.html)

Download MySQL Workbench to help with database management. https://dev.mysql.com/downloads/workbench/

run
```
$ sudo mysql -u root
$ CREATE USER 'CS348USER'@'localhost' IDENTIFIED BY 'mypassword';
$ GRANT ALL PRIVILEGES ON *.* TO 'CS348USER'@'localhost' WITH GRANT OPTION;
$ FLUSH PRIVILEGES;
$ exit
$ mysql -u myportfolio -p
```
```
$ CREATE DATABASE testDB;
```
For now - manually change the fields in the app.py file, we are not using .env files at the moment.
```
.env file
URL=localhost:5000
MYSQL_HOST=localhost
MYSQL_USER=CS348USER
MYSQL_PASSWORD=mypassword
MYSQL_DATABASE=testDB
```

## Importing Data
Copy and Paste the provided createtables.sql and test-sample.sql files into MySQL Workbench and run them to populate testDB with the sample data.

## Usage

Create a .env file using the example.env template (make a copy using the variables inside of the template)

Start flask development server
```bash
$ export FLASK_ENV=development
$ python app.py
```

You should get a response like this in the terminal:
```
❯ flask run
 * Environment: development
 * Debug mode: on
 * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)
```

You'll now be able to access the website at `localhost:5000` or `127.0.0.1:5000` in the browser! 


