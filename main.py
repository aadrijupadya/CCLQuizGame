from flask import Flask, render_template, request, url_for, redirect, session, flash, send_from_directory
from datetime import timedelta
from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin, login_user, LoginManager, login_required, logout_user, current_user
from flask_wtf import FlaskForm
from wtforms import *
from wtforms import StringField, PasswordField, SubmitField, EmailField
from wtforms.validators import InputRequired, Length, ValidationError
from sqlalchemy import create_engine
# from wtforms.fields.html5 import EmailField
from flask_bcrypt import Bcrypt
import os 
import sqlite3


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

connection = sqlite3.connect("questions.db", check_same_thread=False)
cursor = connection.cursor()

@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))

class User(db.Model, UserMixin):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(20), nullable=False, unique=True)
    password = db.Column(db.String(80), nullable=False)
    quiz1score = db.Column(db.String())
    quiz2score = db.Column(db.String())
    quiz3score = db.Column(db.String())
    quiz4score = db.Column(db.String())
    quiz5score = db.Column(db.String())
    quiz6score = db.Column(db.String())
    quiz7score = db.Column(db.String())
    quiz8score = db.Column(db.String())
    quiz9score = db.Column(db.String())
    quiz10score = db.Column(db.String())
    quiz11score = db.Column(db.String())
    quiz12score = db.Column(db.String())
    quiz13score = db.Column(db.String())
    quiz14score = db.Column(db.String())
    quiz15score = db.Column(db.String())
    quiz16score = db.Column(db.String())
    quiz17score = db.Column(db.String())
    quiz18score = db.Column(db.String())
    quiz19score = db.Column(db.String())
    quiz20score = db.Column(db.String())
    quiz21score = db.Column(db.String())
    quiz22score = db.Column(db.String())


with app.app_context():
    db.create_all()
    
class RegisterForm(FlaskForm):
    
    username = EmailField(validators = [InputRequired()],  render_kw={"placeholder": "Username"})
    
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
    return render_template('index.html')
    
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
            new_user = User(username = form.username.data, password = hashed_password, quiz1score = 0, quiz2score = 0, quiz3score = 0, 
                            quiz4score = 0, quiz5score = 0, quiz6score = 0, quiz7score = 0, quiz8score = 0, quiz9score = 0, quiz10score = 0,
                            quiz11score = 0, quiz12score = 0, quiz13score = 0, quiz14score = 0, quiz15score = 0, quiz16score = 0, quiz17score = 0,
                            quiz18score = 0, quiz19score = 0, quiz20score = 0, quiz21score = 0, quiz22score = 0)
            db.session.add(new_user)
            db.session.commit()
            login = True
            return render_template("index.html", username = form.username.data, login = login)

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
                login = True
                username = form.username.data
                return render_template("index.html", username = username, login = login)
            else:
                 error = "Incorrect Password"
        else:
            error = "Username Not Found"
    # else:
    #     error = "Form did not submit, try again"

    return render_template("login.html", form = form, error = error)

@app.route("/game", methods = ["GET", "POST"])
def game():
    return render_template("game.html")


if __name__ == "__main__":
    app.run(debug=True)
