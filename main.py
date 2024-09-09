from flask import Flask, render_template, request, url_for, redirect, session, flash, send_from_directory
from datetime import timedelta
from flask_uploads import UploadSet, IMAGES, configure_uploads
from flask_wtf import FlaskForm
from flask_wtf.file import FileField, FileRequired, FileAllowed
from wtforms import SubmitField
import os 


app = Flask(__name__)
app.secret_key = "cclquizgame"


@app.route('/', methods = ['GET','POST'])

def home():
    return render_template('index.html')
    

@app.route('/about', methods=['GET', 'POST'])
def about():
    return render_template("about.html")
    
@app.route("/register", methods=["GET", "POST"])
def register():
    return render_template("register.html")

@app.route("/login", methods=["GET", "POST"])
def login():
    return render_template("login.html")
    


if __name__ == "__main__":
    app.run(debug=True)
