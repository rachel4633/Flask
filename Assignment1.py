from flask import *


app = Flask(__name__)

#caculation  route

@app.route("/api/math", methods=["POST"])
def calculation():
    if request.method =="POST":
        principal = request.form["principal"]
        years = request.form["years"]
        rate = request.form["rate"]
        simpleinterest = float(principal)*float(years)*float(rate)/100

        return jsonify({"The simple interest is ": simpleinterest})
    
    



    
#run application
app.run(debug=True)