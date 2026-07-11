"""Minimal Flask app demonstrating MySQL connection and parameterized query."""

from flask import Flask, render_template, request
import mysql.connector
from mysql.connector import Error
import config

app = Flask(__name__)


def get_db_connection():
    """Return a new MySQL connection using values from config.py."""
    return mysql.connector.connect(
        host=config.DB_HOST,
        user=config.DB_USER,
        password=config.DB_PASSWORD,
        database=config.DB_NAME,
        port=config.DB_PORT,
    )


@app.route('/', methods=['GET'])
def index():
    q = request.args.get('q', '').strip()
    results = []
    error = None

    if q:
        try:
            conn = get_db_connection()
            cursor = conn.cursor(dictionary=True)
            query = (
                "SELECT empID, empName, jobTitle, homeCity, annualSalary, deptID "
                "FROM Employee WHERE empName LIKE %s"
            )
            # "SELECT empID, empName, jobTitle, homeCity, annualSalary, deptID "
            # "FROM Employee WHERE empName LIKE '%M%'"
            cursor.execute(query, (f"%{q}%",))
            results = cursor.fetchall()
        except Error as e:
            error = str(e)
        finally:
            try:
                cursor.close()
                conn.close()
            except Exception:
                pass

    return render_template('index.html', results=results, q=q, error=error)


if __name__ == '__main__':
    app.run(debug=True)
