
# Step 1: Create the project directory and initialize Node.js backend
mkdir mern-project
cd mern-project

# Step 2: Set up the backend folder structure
mkdir backend
cd backend

# Initialize Node.js with ES6 modules
npm init -y

# Update package.json to use ES6 modules
sed -i 's/"type": "module"/"type": "module",/' package.json

# Install necessary backend dependencies
npm install express mongoose dotenv

# Create the necessary folder structure for backend
mkdir src
mkdir src/routes src/models src/controllers

# Create a basic server file (index.js)
echo "import express from 'express';
import mongoose from 'mongoose';
import dotenv from 'dotenv';
dotenv.config();

const app = express();
const port = process.env.PORT || 5000;

app.use(express.json());

mongoose.connect(process.env.MONGO_URI, { useNewUrlParser: true, useUnifiedTopology: true })
  .then(() => console.log('Connected to MongoDB'))
  .catch(err => console.log(err));

app.get('/', (req, res) => {
  res.send('Hello, MERN World!');
});

app.listen(port, () => {
  console.log(\`Server running on port \${port}\`);
});
" > src/index.js

# Create a basic MongoDB model
echo "import mongoose from 'mongoose';

const userSchema = new mongoose.Schema({
  name: { type: String, required: true },
  email: { type: String, required: true, unique: true }
});

const User = mongoose.model('User', userSchema);
export default User;
" > src/models/User.js

# Create a simple .env file
echo "MONGO_URI=mongodb://localhost:27017/mernDB
PORT=5000
" > .env

# Inform the user that the backend setup is complete
echo "Backend setup complete! To run the server, use 'node src/index.js'."

# Step 3: Set up the frontend using Vite (React)
cd ..
npm create vite@latest frontend --template react

# Step 4: Navigate into the frontend folder and install necessary dependencies
cd frontend

# Install Tailwind CSS and other necessary dependencies
npm install -D tailwindcss postcss autoprefixer
npx tailwindcss init

# Step 5: Configure Tailwind CSS
echo "// tailwind.config.js
export default {
  content: [
    './index.html',
    './src/**/*.{js,ts,jsx,tsx}',
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
" > tailwind.config.js

# Create and configure the PostCSS file
echo "import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react()],
});
" > postcss.config.js

# Step 6: Add Tailwind to the CSS file
echo "@tailwind base;
@tailwind components;
@tailwind utilities;" > src/index.css

# Inform the user that the frontend setup is complete
echo "Frontend setup complete! Tailwind CSS is configured. To start the React app, use 'npm run dev' inside the 'frontend' folder."
