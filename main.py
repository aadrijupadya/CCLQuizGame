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
    # return render_template("./pages/index.html")
    return render_template('index.html')
    

# @app.route('/pages/about', methods=['GET', 'POST'])
# def about():
#     return render_template("./pages/about.html")
    
# @app.route("./register", methods=["GET", "POST"])
# def register():
#     if request.method == "GET":
#         if 'registered' in session:
#             print("you've been redirected")
#             return redirect(url_for("login"))
#     elif request.method == "POST":
#         first = request.form["first"]
#         last = request.form["last"]
#         email = request.form["email"]
#         password = request.form["password"]
#         cursor = mysql.connection.cursor()
#         cursor.execute(''' INSERT INTO user_info(first, last, gmail, password) VALUES(%s, %s, %s, %s) ''',
#                        (first, last, email, password))
#         mysql.connection.commit()
#         session["registered"] = True
#         print("in session")
#         return redirect(url_for("login"))
#     return render_template("register.html")
    

if __name__ == "__main__":
    app.run(debug=True)
