# 🧢 Baseball Card Store (Rails + PostgreSQL + Stripe + ShipBob)

A full-stack eCommerce-style application built with **Ruby on Rails**, designed for managing and selling collectible products like **baseball cards**.

This system supports product listing, ordering, payments through **Stripe**, and shipping integration via **ShipBob** — with polymorphic notes and admin value assignment.

---

## 🚀 Features

### 👤 Users
- User authentication (basic setup)
- Role-based actions (Admin / User)

### 🧩 Products
- Generic `products` model (supports baseball cards, comics, etc.)
- Front/back image uploads
- Admin can assign estimated values
- Notes (polymorphic) for each product

### 💳 Orders
- Order creation linked to user and payment method
- String-based `status` enum (`created`, `pending`, `in_progress`, etc.)
- Track `amount`, `discount`, `total_amount`
- Stripe integration for secure payment processing
- ShipBob integration for shipping and fulfillment

### 🧾 Notes (Polymorphic)
- Notes can be attached to:
    - Products
    - Orders
    - Users
- Supports admin and user comments for tracking

### 🏦 Payment Methods
- Linked to users
- String-backed enum for provider (`stripe`, `paypal`, `other`)
- Stores non-sensitive card info (`brand`, `last4`, expiration`)

---

## 🏗️ Tech Stack

| Component | Technology |
|------------|-------------|
| Backend | Ruby on Rails 8 |
| Database | PostgreSQL (UUID primary keys) |
| Auth | Devise or JWT (customizable) |
| Payment | Stripe API |
| Shipping | ShipBob API |
| ORM | ActiveRecord |
| Image Storage | ActiveStorage (local/S3 compatible) |

---

## 🗃️ Database Schema (Simplified)

### **Users**
- id (uuid)
- name
- email
- password_hash
- role (`user`, `admin`)

### **Products**
- id (uuid)
- name, description, product_type
- front_image_url, back_image_url
- estimated_value (decimal)
- status (`active`, `sold`, `archived`)

### **Orders**
- id (uuid)
- user_id (fk)
- payment_method_id (fk)
- status (`created`, `pending`, etc.)
- amount, discount, total_amount
- provider, provider_id (external ref)
- shipment_id (ShipBob)

### **Payment Methods**
- id (uuid)
- user_id (fk)
- provider (`stripe`, `paypal`)
- card_brand, card_last4, exp_month, exp_year
- stripe_payment_method_id

### **Notes (Polymorphic)**
- noteable_type (`product`, `order`, `user`)
- noteable_id (uuid)
- user_id (fk)
- content (text)

---

## ⚙️ Setup Instructions

### 1️⃣ Clone Repository
```bash
git clone https://github.com/yourusername/baseball-card-store.git
cd baseball-card-store
