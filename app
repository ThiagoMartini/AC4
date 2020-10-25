import os
from flask import Flask, jsonify, request
from math import sqrt

app = Flask(__name__)

@app.route('/')


def fibonati():
    suce = 1
    ante = 0
    ate = 50
    cont = 0
    resultado = '0, '
    while (cont < ate):
        temp = suce
        suce = suce + ante
        ante = temp
        cont = cont + 1
        resultado+= str(suce) +', '

    return resultado

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))
    app.run(host='0.0.0.0', port=port)
