# Simple Flask Application

A simple Flask web application with Docker containerization.

## Project Structure

```
├── app.py              # Main Flask application
├── requirements.txt    # Python dependencies
├── Dockerfile          # Docker configuration
├── static/             # Static files (CSS, JS)
│   ├── css/
│   │   └── style.css
│   └── js/
│       └── main.js
└── templates/          # HTML templates
    └── index.html
```

## Running Locally

1. Install the required dependencies:
   ```
   pip install -r requirements.txt
   ```

2. Run the Flask application:
   ```
   python app.py
   ```

3. Access the application at http://localhost:5000

## Running with Docker

1. Build the Docker image:
   ```
   docker build -t simple-flask-app .
   ```

2. Run the Docker container:
   ```
   docker run -p 5000:5000 simple-flask-app
   ```

3. Access the application at http://localhost:5000

## Features

- Simple responsive web interface using Bootstrap
- Custom CSS animations
- JavaScript interactivity
- Containerized with Docker for easy deployment 