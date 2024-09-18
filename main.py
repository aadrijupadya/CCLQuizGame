from flask import Flask, render_template, request, url_for, redirect, session, flash, send_from_directory
from datetime import timedelta
from flask_sqlalchemy import SQLAlchemy
from flask_login import UserMixin, login_user, LoginManager, login_required, logout_user, current_user
from flask_wtf import FlaskForm
from wtforms import *
from wtforms import StringField, PasswordField, SubmitField, EmailField
from wtforms.validators import InputRequired, Length, ValidationError
# from wtforms.fields.html5 import EmailField
from flask_bcrypt import Bcrypt
import os 


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


@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))

class User(db.Model, UserMixin):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(20), nullable=False, unique=True)
    password = db.Column(db.String(80), nullable=False)

with app.app_context():
    db.create_all()
    
class RegisterForm(FlaskForm):
    
    username = EmailField(validators = [InputRequired()],  render_kw={"placeholder": "Password"})
    
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
            new_user = User(username = form.username.data, password = hashed_password)
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
    


if __name__ == "__main__":
    app.run(debug=True)
