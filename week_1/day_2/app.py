from flask import Flask
import os

# Get port from environment variable, default to 5000
port = int(os.environ.get('PORT', 5000))

app = Flask(__name__)

@app.route('/')
def hello_world():
    # Return a basic message
    return '<h1>Hello World! Containerized App is Running!</h1>'

if __name__ == '__main__':
    # Run the application on all interfaces (0.0.0.0)
    app.run(debug=False, host='0.0.0.0', port=port)
