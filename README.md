# Personal_Chatbot-with-opensource-LLMs-Flask

An interactive personal chatbot web application powered by open-source Large Language Models (LLMs) and built using Flask. This project provides a simple, container-ready interface for users to chat with an AI assistant directly from their browser.

---

## 📝 Project Overview

**Personal_Chatbot-with-opensource-LLMs-Flask** is designed to offer a conversational AI experience using open-source LLMs. The backend is developed in Python with Flask, while the frontend uses HTML, CSS, and JavaScript for a responsive and user-friendly interface. All static assets are included for a seamless deployment, and Docker support makes it easy to run anywhere.

---

## ✨ Features

- **Interactive Web UI:** Chat with the AI in real time.
- **Open-source LLM Integration:** Connects to open-source language models for generating responses.
- **Static Assets:** Custom bot and user images, favicon, error visuals, CSS styling, and JavaScript for smooth UX.
- **Docker Support:** Effortlessly containerize and deploy the app.
- **Easy Setup:** Simple installation and configuration steps.

---

## 🏗️ Project Architecture

- **Frontend:**  
  - Uses `templates/index.html` for the chat interface.
  - CSS styling through `static/css/style.css`.
  - Client-side interactivity via `static/script.js` (AJAX calls to Flask).
  - Images and icons in `static/` for branding and user experience.

- **Backend:**  
  - `app.py` runs the Flask server and defines routes for:
    - Serving the chat UI.
    - Receiving user messages and returning LLM-generated responses.
  - Integrates with an open-source LLM (e.g., via API or local model) for generating chatbot replies.

- **Interaction Flow:**  
  1. User enters a message in the browser UI.
  2. JavaScript sends the message to Flask backend via AJAX.
  3. Flask processes the message, queries the LLM, and returns a response.
  4. UI updates with the chatbot’s reply.

---
## 📖 Usage Guide

1. Start the server (locally or via Docker).
2. Open your browser and go to [http://localhost:5000](http://localhost:5000).
3. Enter your message in the chat window and start conversing with the AI chatbot.

---
## 🚀 Installation Instructions

**1. Clone the repository:**
```bash
git clone https://github.com/MahinShahriar/Personal_Chatbot-with-opensource-LLMs-Flask.git
cd Personal_Chatbot-with-opensource-LLMs-Flask
```

**2. Create a virtual environment(locally):**
```bash
python -m venv venv
source venv/bin/activate         # On Windows: venv\Scripts\activate
```

**3. Install dependencies(locally):**
```bash
pip install -r requirements.txt
```

**4. Run the Flask server:**
```bash
export FLASK_APP=app.py
export FLASK_ENV=development     # Optional: enables debug mode
flask run
```
The app will be available at [http://127.0.0.1:5000](http://127.0.0.1:5000).

---

## 🐳 Docker Usage

**1. Build the Docker image:**
```bash
docker build -t personal-chatbot .
```

**2. Run the container:**
```bash
docker run -p 5000:5000 personal-chatbot
```
Then access the chatbot at [http://localhost:5000](http://localhost:5000).

---


## 📂 Folder Structure Explanation

```
.
├── app.py                # Main Flask application (server & routes)
├── Dockerfile            # Docker configuration for containerization
├── requirements.txt      # Python package dependencies
├── static/               # Static assets for frontend
│   ├── Bot_logo.png      # Chatbot avatar image
│   ├── Error.png         # Error/alert image
│   ├── favicon.ico       # Site favicon
│   ├── user.jpeg         # User avatar image
│   ├── css/style.css     # Custom styles for UI
│   └── script.js         # JavaScript for AJAX, UI interactivity
└── templates/
    └── index.html        # Main HTML template for chat interface
```

- **app.py:** Handles all backend logic and LLM communication.
- **Dockerfile:** Enables easy deployment in any environment.
- **requirements.txt:** Lists all Python packages needed.
- **static/:** Stores all client-facing assets – images, styles, scripts.
- **templates/:** Holds the HTML templates rendered by Flask.

---

## 🌱 Future Improvements

- Store and retrieve conversations using SQLite or PostgreSQL.
- Integrate additional open-source LLMs, support model switching.
- Enhance UI/UX with chat bubbles, timestamps, and file uploads.
- Add authentication for personal/protected chat.
- Deploy to cloud platforms.

---

## 📄 License & Credits

- **License:** _[Open-source license placeholder. Please specify, e.g., MIT, Apache 2.0, etc.]_
- **Credits:**  
  - Open-source LLM providers  
  - Flask web framework  
  - Project contributors

---

_Interested in contributing? Please open an issue or submit a pull request!_
