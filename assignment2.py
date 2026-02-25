from flask import *
import os
import pymysql

app = Flask(__name__)

app.config["UPLOAD_FOLDER"] = "static/images"


@app.route("/api/smartphones",methods = ["POST"])
def smartphone():
    if request.method == "POST":
        name = request.form["name"]
        brand = request.form["brand"]
        model = request.form["model"]
        storage = request.form["storage"]
        ram = request.form["ram"]
        battery = request.form["battery"]
        price = request.form["price"]
        stock = request.form["stock"]
        photo = request.files["photo"]

        filename = photo.filename

        photo_path = os.path.join(app.config["UPLOAD_FOLDER"], filename)

        photo.save(photo_path)

        #connection with pymsql
        connection = pymysql.connect(host="localhost",user="root",password="",database="online")

        cursor = connection.cursor()

        sql = "INSERT INTO smartphones(name,brand,model,storage,ram,battery,price,stock,photo)VALUES(%s, %s, %s, %s, %s, %s, %s, %s, %s)"

        data = (name,brand,model,storage,ram,battery,price,stock,filename)
        
        cursor.execute(sql,data)

        connection.commit()

        return jsonify({"message":"sucessful"})
    
@app.route("/api/laptops",methods = ["POST"])
def laptops():
    if request.method == "POST":
        name = request.form["name"]
        brand = request.form["brand"]
        processor = request.form["processor"]
        ram= request.form["ram"]
        storage = request.form["storage"]
        screensize= request.form["screensize"]
        price = request.form["price"]
        stock = request.form["stock"]
        photo = request.files["photo"]

        filename = photo.filename

        photo_path = os.path.join(app.config["UPLOAD_FOLDER"], filename)

        photo.save(photo_path)

        #connection with pymsql
        connection = pymysql.connect(host="localhost",user="root",password="",database="online")

        #create cursor
        cursor = connection.cursor()

        sql = "INSERT INTO laptops(name,brand,processor,ram,storage,screensize,price,stock,photo)VALUES(%s, %s, %s, %s, %s, %s, %s, %s, %s)"

        data = (name,brand,processor,ram,storage,screensize,price,stock,filename)
        
        cursor.execute(sql,data)

        connection.commit()

        return jsonify({"message":"sucessful"})
    
app.run(debug=True)






