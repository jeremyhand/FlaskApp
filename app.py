from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/health')
def health():
    return {"status": "healthy"}, 200

if __name__ == '__main__':
    # When running directly, use 0.0.0.0 to make the server publicly available
    # Debug mode should be turned off in production
    app.run(debug=True, host='0.0.0.0', port=5000) 