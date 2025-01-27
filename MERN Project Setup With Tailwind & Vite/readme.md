# MERN Project Setup with Vite and Tailwind CSS

This project provides a simple **MERN** (MongoDB, Express, React, Node.js) setup with **Vite** for the frontend and **Tailwind CSS** for styling. The project includes an automated script to set up the backend and frontend with necessary configurations.

## Requirements

Before you begin, ensure you have the following installed on your system:

1. **Node.js**: You need **Node.js** installed (version 14 or higher). You can download it from [Node.js official website](https://nodejs.org/).
2. **MongoDB**: Ensure **MongoDB** is running locally or use a cloud MongoDB provider like [MongoDB Atlas](https://www.mongodb.com/cloud/atlas).
3. **Git**: You'll need **Git** installed to clone the repository or execute the script.
4. **Vite**: For frontend development, the script will automatically set up **Vite** for React.
5. **npm**: The Node Package Manager (npm) comes with Node.js and is required to install dependencies.

## Setting Up the Project

### 1. Clone the Repository

Clone this repository to your local machine using the following command:

```bash
git clone <repository-url>
cd <repository-folder>
```

````bash
Project Structure:

After running the setup script, your project structure will look like this:

mern-project/
│
├── backend/
│   ├── src/
│   │   ├── controllers/
│   │   ├── models/
│   │   │   └── User.js
│   │   ├── routes/
│   │   └── index.js
│   ├── .env
│   ├── package.json
│   └── package-lock.json
│
├── frontend/  (React app created using Vite with Tailwind CSS)
│   ├── public/
│   ├── src/
│   │   ├── assets/
│   │   ├── components/
│   │   ├── App.jsx
│   │   ├── main.jsx
│   │   ├── index.css
│   │   └── tailwind.config.js
│   ├── index.html
│   ├── package.json
│   └── package-lock.json
├── package-lock.json
└── package.json
````
