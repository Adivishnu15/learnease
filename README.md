# LearnEase 🎓  

**LearnEase** is an interactive e-learning web platform built with **HTML, CSS, JavaScript, PHP, and MySQL**.  
It enables **students** to explore structured courses with videos, quizzes, playlists, and comments, while **teachers** can create and manage content seamlessly.  

---

## 📖 Introduction  

Education is rapidly moving online, and **LearnEase** aims to provide a **student-friendly, engaging, and scalable** platform.  
It includes:  

- 📚 A library of courses with descriptions, tutors, and multimedia content.  
- 🎥 Video tutorials with interactive quizzes and instant feedback.  
- 💬 A community system with likes, comments, and playlists.  
- 👨‍🏫 Teacher tools to upload and manage videos, quizzes, and notes.  

---

## 🚩 Problem Statement  

- ❌ Many platforms lack **interactivity and organization**.  
- ❌ Students struggle with disorganized content.  
- ❌ Teachers face difficulty in managing engaging material.  

✅ **LearnEase solves this** by offering a holistic, interactive e-learning system for both students and teachers.  

---

## 🎯 Scope  

- **Students**: Register, access courses, watch videos, take quizzes, like, comment, and save playlists.  
- **Teachers**: Create, manage, and deliver courses with videos, quizzes, and notes.  
- **Tech Stack**:  
  - Frontend → HTML, CSS, JavaScript  
  - Backend → PHP  
  - Database → MySQL  

---

## 🛠️ Tools and Technologies  

### Technologies  
- HTML, CSS, JavaScript  
- PHP, MySQL  

### Tools  
- VS Code / Sublime / PhpStorm  
- Web Browser (Chrome, Firefox, Edge)  
- DB Browser / MySQL Workbench  

---

## 💻 System Requirements  

### Hardware  
- OS: Windows 10 or above  
- Processor: Intel Core i5 (or equivalent)  
- RAM: 8GB  
- System Type: 64-bit  

### Software  
- PHP 8+  
- MySQL 5.7+  
- Apache / PHP Built-in Server  
- Internet Connection  

---

## 🚀 Getting Started  

Follow these steps to run **LearnEase** locally:  

### 1️⃣ Clone the repository  
```bash
git clone https://github.com/Adivishnu15/learnease.git
cd learnease
2️⃣ Setup Database
Open phpMyAdmin or MySQL CLI.

Create the database:

sql
Copy code
CREATE DATABASE course_db;
Import the course_db.sql file (provided in this repo).

bash
Copy code
# Example using MySQL CLI
mysql -u root -p course_db < course_db.sql
🗄️ Database Structure
The database name is course_db.
It includes the following main tables:

Table	Purpose
users	Stores student accounts (id, name, email, password, profile image, status).
tutors	Stores tutor accounts (id, name, email, profession, password, profile image).
playlist	Course playlists created by tutors (id, tutor_id, title, description, thumbnail, status).
content	Individual course videos (id, tutor_id, playlist_id, title, description, video, thumbnail, status).
comments	Stores comments from students on course content.
likes	Tracks which users liked which content.
bookmark	Saves playlists bookmarked by users.
contact	Stores messages submitted via contact form.

🔑 Example Data (from course_db.sql)
A sample tutor: Bhuvi (Bhuvi@gmail.com)

A sample user: Virat (Virat@gmail.com)

Playlists: HTML, CSS, JavaScript

Content: Example HTML video lectures

3️⃣ Configure Database Connection
Update your config.php (or similar) with database credentials:

php
Copy code
<?php
$host = "localhost";
$user = "root";
$pass = "";
$db   = "course_db";

$conn = mysqli_connect($host, $user, $pass, $db);
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>
4️⃣ Run PHP Server
Option A: Using built-in PHP server
bash
Copy code
php -S localhost:8000
Now open in browser:
👉 http://localhost:8000

Option B: Using XAMPP / WAMP
Place the project in htdocs folder.

Start Apache + MySQL from control panel.

Visit:
👉 http://localhost/learnease

🧑‍💻 Interactive PHP Commands
You can also test PHP interactively:

bash
Copy code
php -a
Example session:

php
Copy code
php > echo "Hello LearnEase!";
Hello LearnEase!
php > $a = 5; $b = 10; echo $a + $b;
15
Run a specific PHP file:

bash
Copy code
php index.php
📌 Features
👨‍🏫 Teacher portal for content management

🎥 Video tutorials with quizzes

💬 Student comments and discussions

❤️ Like & save playlists

👤 Personalized profiles

🤝 Contributing
Contributions are welcome 🚀

Fork the repo

Create a feature branch (git checkout -b feature-xyz)

Commit changes (git commit -m "Added xyz feature")

Push branch (git push origin feature-xyz)

Open a Pull Request
