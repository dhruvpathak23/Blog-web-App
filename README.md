# 📝 Django Blog Application

A full-stack Django Blog Application that allows users to create, read, update, and delete blog posts with authentication support. The project follows Django’s MVT architecture and uses templates, static files, and migrations properly.

# 🚀 Features

User authentication (register, login, logout)

Create, update, and delete blog posts

View all posts and user-specific posts

Responsive UI using CSS

Django admin panel integration

Secure URL routing and views

Organized templates and static files

# 🗂 Project Structure
blog_project/
│
├── blog/
│   ├── migrations/
│   │   └── 0001_initial.py
│   ├── static/blog/
│   │   └── main.css
│   ├── templates/blog/
│   │   ├── about.html
│   │   ├── base.html
│   │   ├── home.html
│   │   ├── post_confirm_delete.html
│   │   ├── post_detail.html
│   │   ├── post_form.html
│   │   └── user_posts.html
│   ├── admin.py
│   ├── apps.py
│   ├── models.py
│   ├── tests.py
│   ├── urls.py
│   └── views.py
│
├── blog_project/
│   ├── settings.py
│   ├── urls.py
│   ├── asgi.py
│   └── wsgi.py
│
├── users/
├── manage.py
├── .gitignore
├── LICENSE
└── README.md

# 🛠 Tech Stack

Backend: Django (Python)

Frontend: HTML, CSS

Database: SQLite (default Django DB)

Authentication: Django Auth System

# ⚙️ Installation & Setup

Clone the repository

git clone https://github.com/your-username/your-repo-name.git


Navigate to the project directory

cd your-repo-name


Create a virtual environment

python -m venv venv


Activate the virtual environment

venv\Scripts\activate   # Windows
source venv/bin/activate  # Linux/Mac


Install dependencies

pip install django


Run migrations

python manage.py migrate


Create superuser

python manage.py createsuperuser


Start the development server

python manage.py runserver


Open in browser

http://127.0.0.1:8000/

# 🔐 Admin Panel

Access the Django admin panel at:

http://127.0.0.1:8000/admin/


Use the superuser credentials created earlier.

# 📌 Future Enhancements

Rich text editor for posts

Comment system

Likes and bookmarks

Pagination and search

Deployment (AWS / Render / Railway)

# 📄 License

This project is licensed under the MIT License.
