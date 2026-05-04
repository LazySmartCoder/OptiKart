# OptiKart — Eyewear E-Commerce Platform

## 🚀 Overview
OptiKart is a full-stack e-commerce platform developed for an eyewear (spectacles/glasses) business. It provides a complete digital storefront experience, including product browsing, user interaction, and backend data management.

The project was built as part of an academic initiative, with a strong focus on implementing real-world e-commerce workflows using a structured backend and relational database system.

---

## 🧠 Key Features
- **Product Catalog Management** — Display and organize eyewear products  
- **User Interaction Flow** — Browse, view, and interact with products  
- **Database Integration** — Persistent storage using MySQL  
- **Dynamic Content Rendering** — Backend-driven UI updates via Django  
- **Admin Control Panel** — Manage products and data efficiently  

---

## ⚙️ Tech Stack
- **Backend:** Python, Django  
- **Database:** MySQL  
- **Frontend:** HTML, CSS  
- **Server-Side Rendering:** Django Templates  

---

## 🏗️ Architecture / How It Works
OptiKart follows a **Model-View-Template (MVT)** architecture powered by Django:

- **Models** define the relational schema for products and user data  
- **Views** handle business logic and request processing  
- **Templates** render dynamic content on the frontend  

The platform integrates with a **MySQL relational database**, enabling structured data storage and efficient query handling.

- User actions trigger server-side logic via Django views  
- Data is retrieved and persisted through ORM-based queries  
- Templates dynamically render product and user data  

This results in a **database-driven, server-rendered e-commerce system** with clear separation of concerns.

---

## 📊 Use Case
- Simulates a real-world online store for eyewear products  
- Demonstrates full-stack development with backend + database integration  
- Highlights understanding of e-commerce workflows and data handling  

---

## 🛠️ Setup Instructions
```bash
# Clone the repository
git clone https://github.com/your-username/optikart.git

# Navigate to project directory
cd optikart

# Install dependencies
pip install -r requirements.txt

# Configure MySQL database in settings.py

# Run migrations
python manage.py migrate

# Start server
python manage.py runserver
