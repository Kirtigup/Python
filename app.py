import os
#flask package install (in that Flask class define)((Flask function from flask package)render_template=used to generate output from template file based on jinja2 engine that is found in application's template folder )
from flask import Flask, render_template
#app defined here 
app = Flask(__name__)
#whenever end user goes in /point he or she will see output
@app.route('/')
def hello_world():
    return render_template('index.html');
#here app.run is used to run ur web based application
if __name__ == "__main__":
    app.run(host ='0.0.0.0', port=5001 ,debug =True)
#debug=true means automatically detect the change in output and show 
