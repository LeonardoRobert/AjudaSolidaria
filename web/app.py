# app.py

from flask import Flask, render_template, request, redirect, jsonify
import sqlite3
import os

app = Flask(__name__)


def init_db():
    if not os.path.exists('database.db'):
        conn = sqlite3.connect('database.db')
        cursor = conn.cursor()
        cursor.execute("""
            CREATE TABLE IF NOT EXISTS itens (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                nome TEXT NOT NULL,
                quantidade INTEGER NOT NULL,
                status TEXT DEFAULT 'Disponível'
            )
        """)
        conn.commit()
        conn.close()

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api/itens', methods=['GET'])
def listar_itens():
    conn = sqlite3.connect('database.db')
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM itens")
    itens = cursor.fetchall()
    conn.close()
    return jsonify([{"id": i[0], "nome": i[1], "quantidade": i[2], "status": i[3]} for i in itens])

@app.route('/api/itens', methods=['POST'])
def adicionar_item():
    data = request.get_json()
    conn = sqlite3.connect('database.db')
    cursor = conn.cursor()
    cursor.execute("INSERT INTO itens (nome, quantidade) VALUES (?, ?)", (data['nome'], data['quantidade']))
    conn.commit()
    conn.close()
    return jsonify({"message": "Item adicionado com sucesso!"})

@app.route('/api/itens/<int:item_id>', methods=['PUT'])
def atualizar_status(item_id):
    conn = sqlite3.connect('database.db')
    cursor = conn.cursor()
    cursor.execute("UPDATE itens SET status = 'Entregue' WHERE id = ?", (item_id,))
    conn.commit()
    conn.close()
    return jsonify({"message": "Status atualizado com sucesso!"})

@app.route('/api/itens/<int:item_id>', methods=['DELETE'])
def excluir_item(item_id):
    conn = sqlite3.connect('database.db')
    cursor = conn.cursor()
    cursor.execute("DELETE FROM itens WHERE id = ?", (item_id,))
    conn.commit()
    conn.close()
    return jsonify({"message": "Item excluído com sucesso!"})

if __name__ == '__main__':
    if not os.path.exists('database.db'):
        conn = sqlite3.connect('database.db')
        c = conn.cursor()
        c.execute('''
            CREATE TABLE IF NOT EXISTS itens (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                nome TEXT NOT NULL,
                quantidade INTEGER NOT NULL,
                status TEXT NOT NULL DEFAULT 'Disponível'
            )
        ''')
        conn.commit()
        conn.close()

    app.run(debug=True)

