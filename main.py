
from flask import Flask, render_template, request, url_for, redirect, session, flash, send_from_directory
from datetime import timedelta
from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin, login_user, LoginManager, login_required, logout_user, current_user
from flask_wtf import FlaskForm
from wtforms import *
from wtforms import StringField, PasswordField, SubmitField, EmailField
from wtforms.validators import InputRequired, Length, ValidationError
from flask import json
from flask import jsonify
from sqlalchemy import create_engine
# from wtforms.fields.html5 import EmailField
from flask_bcrypt import Bcrypt
import os 
import sqlite3
from sqlalchemy.orm import sessionmaker


app = Flask(__name__)
app.secret_key = "cclquizgame"
bcrypt = Bcrypt(app)
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///database.db'

app.config['SECRET_KEY'] = 'key'
db = SQLAlchemy(app) 

login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = "login"

login = None
username = None

connection = sqlite3.connect("instance/questions.db", check_same_thread=False)
cursor = connection.cursor()

connection2 = sqlite3.connect("instance/database.db", check_same_thread = False)
cursor2 = connection2.cursor()

@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))

class User(db.Model, UserMixin):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(20), nullable=False, unique=True)
    password = db.Column(db.String(80), nullable=False)
    quiz1score = db.Column(db.Integer)
    quiz2score = db.Column(db.Integer)
    quiz3score = db.Column(db.Integer)
    quiz4score = db.Column(db.Integer)
    quiz5score = db.Column(db.Integer)
    quiz6score = db.Column(db.Integer)
    quiz7score = db.Column(db.Integer)
    quiz8score = db.Column(db.Integer)
    quiz9score = db.Column(db.Integer)
    
# class Question(db.Model):
#     QUESTION = db.Column(db.Text())
#     QUESTIONTYPE = db.Column(db.Integer)
#     ANSWERCHOICE1 = db.Column(db.Text())
#     ANSWERCHOICE2 = db.Column(db.Text())
#     ANSWERCHOICE3 = db.Column(db.Text())
#     ANSWERCHOICE4 = db.Column(db.Text())
#     CORRECTANSWER = db.Column(db.Text())
#     CATEGORY = db.Column(db.Integer())
def fetch_questions():
    # Query adjusted to match the column names you provided
    cursor.execute("""
        SELECT QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY
        FROM questions
    """)
    questions = cursor.fetchall()  # Fetch all questions as a list of tuples
    return questions
    
@app.route('/get-questions')
# Example server-side logic in app.py for /get-questions endpoint
@app.route('/get-questions', methods=['POST'])
def get_questions():
    cursor.execute("SELECT QUESTION, QUESTIONTYPE, ANSWERCHOICE1, ANSWERCHOICE2, ANSWERCHOICE3, ANSWERCHOICE4, CORRECTANSWER, CATEGORY FROM questions")
    rows = cursor.fetchall()
    questions = [] #array of question structs
    info = request.json
    number = info["number"]
    for row in rows:
        question_text, question_type, choice1, choice2, choice3, choice4, correct_answer, category = row
        
        # Check if all answer choices are NULL (indicating a short-answer question)
        if number == category:
            if question_type == 2:
                questions.append({
                    "question": question_text,
                    "questionType": "short",
                    "correct": correct_answer
                })
            # Check if it's a True/False question (only two options)
            elif question_type == 1:  # Assuming question_type 1 means True/False
                questions.append({
                    "question": question_text,
                    "questionType": "true_false",
                    "answers": ["TRUE", "FALSE"],
                    "correct": correct_answer
                })
            # Otherwise, it's a multiple-choice question
            else:
                questions.append({
                    "question": question_text,
                    "questionType": "multiple_choice",
                    "answers": [choice1, choice2, choice3, choice4],
                    "correct": correct_answer
                })

    return jsonify(questions)




with app.app_context():
    db.create_all()
    
class RegisterForm(FlaskForm):
    
    username = StringField(validators = [InputRequired()],  render_kw={"placeholder": "Username"})
    
    password = PasswordField(validators = [InputRequired(), Length(min = 8, max = 20)],
                             render_kw={"placeholder": "Password"})
    password_val = PasswordField(validators = [InputRequired(), Length(min = 8, max = 20)],
                             render_kw={"placeholder": "Confirm Password"})                
    submit = SubmitField("Register")

    def validate_username(self, username):
        existing_user_username = User.query.filter_by(
            username = username.data).first()
        
        if existing_user_username:
            flash("That username already exists. Please pick another one")
        

class LoginForm(FlaskForm):
    username = StringField(validators= [InputRequired(), Length(min = 4, max = 20)],
                           render_kw = {"placeholder": "Username"})
    
    password = PasswordField(validators = [InputRequired(), Length(min = 4, max = 20)],
                             render_kw={"placeholder": "Password"})
    submit = SubmitField("Login")


@app.route('/', methods = ['GET','POST'])

def home():
    if "login" in session and session["login"]:
        return render_template('index.html', login = True, username = session["username"])
    else:
        return render_template('index.html', login = False)
    
@app.route('/about', methods=['GET', 'POST'])
@login_required
def about():
    return render_template("about.html")
    
@app.route("/register", methods=["GET", "POST"])
def register():
    error = None
    form = RegisterForm()

    if form.validate_on_submit():
        if (form.password_val.data != form.password.data):
            print(form.password_val.data)
            print(form.password.data)
            error = True
        else:
            hashed_password = bcrypt.generate_password_hash(form.password.data)
            new_user = User(username = form.username.data, password = hashed_password)
            db.session.add(new_user)
            db.session.commit()
            session["username"] = form.username.data
            session["login"] = True
            return render_template("index.html", username = session["username"], login = session["login"])

    return render_template('register.html', form = form, error = error)
    
@app.route("/login", methods=["GET", "POST"])
def login():
    form  = LoginForm()
    error = None
    if form.validate_on_submit():
        user = User.query.filter_by(username = form.username.data).first()
        if user:
            if bcrypt.check_password_hash(user.password, form.password.data):
                login_user(user)
                session["login"] = True
                session["username"] = form.username.data
                return render_template("index.html", username = session["username"], login = session["login"])
            else:
                 error = "Incorrect Password"
        else:
            error = "Username Not Found"
    # else:
    #     error = "Form did not submit, try again"
    return render_template("login.html", form = form, error = error)

@app.route('/game', methods=['GET', 'POST'])
def game():
    if "username" in session:
        return render_template("game.html", username = session["username"])
    else:
        return render_template("game.html")


@app.route('/quizzes', methods= ['GET', 'POST'])
def quizzes():
    if "username" in session:
        curr_user = User.query.filter_by(username = session["username"]).first()
        return render_template("quizzes.html", login = True, username = session["username"], user = curr_user)
    else:
        return render_template("quizzes.html", login = False)
@app.route('/uppdate_score')

@app.route('/update_score', methods = ['POST'])
def update_score():
    req = request.json
    score = int(req["score"])
    quiznumber = int(req["number"])
    username = session["username"]
    curr_user = User.query.filter_by(username = session["username"]).first()
    score2 = 0
    if quiznumber == 1:
        score2 = curr_user.quiz1score
    elif quiznumber == 2:
        score2 = curr_user.quiz2score
    elif quiznumber == 3:
        score2 = curr_user.quiz3score
    elif quiznumber == 4:
        score2 = curr_user.quiz4score
    elif quiznumber == 5:
        score2 = curr_user.quiz5score
    elif quiznumber == 6:
        score2 = curr_user.quiz6score
    elif quiznumber == 7:
        score2 = curr_user.quiz7score
    elif quiznumber == 8:
        score2 = curr_user.quiz8score
    elif quiznumber == 9:
        score2 = curr_user.quiz9score
    if "username" in session:
        qnum = 'quiz' + str(quiznumber) + "score"
        if score2 is None or score > score2:
            command = f'UPDATE user SET {qnum} = ? WHERE username = ?'
            cursor2.execute(command, (score, username))
            connection2.commit()
    return "Worked"

@app.route('/logout')
def logout():
    session.clear()
    return redirect("/")


if __name__ == "__main__":
    app.run()
