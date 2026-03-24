
CREATE DATABASE IF NOT EXISTS quan_ly_chung_cu;
USE quan_ly_chung_cu;

CREATE TABLE users (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(20),
    role VARCHAR(20) NOT NULL,
    status VARCHAR(20) DEFAULT 'ACTIVE',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE apartments (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    apartment_code VARCHAR(20) NOT NULL UNIQUE,
    building_name VARCHAR(100) NOT NULL,
    floor_number INT NOT NULL,
    area DOUBLE,
    status VARCHAR(30) DEFAULT 'AVAILABLE'
);

CREATE TABLE residents (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
    gender VARCHAR(10),
    phone VARCHAR(20),
    cccd VARCHAR(20) UNIQUE,
    email VARCHAR(100),
    apartment_id BIGINT,
    user_id BIGINT,
    FOREIGN KEY (apartment_id) REFERENCES apartments(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE bills (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    apartment_id BIGINT NOT NULL,
    bill_month INT NOT NULL,
    bill_year INT NOT NULL,
    electricity_fee DECIMAL(12,2) DEFAULT 0,
    water_fee DECIMAL(12,2) DEFAULT 0,
    service_fee DECIMAL(12,2) DEFAULT 0,
    total_amount DECIMAL(12,2) NOT NULL,
    payment_status VARCHAR(20) DEFAULT 'UNPAID',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (apartment_id) REFERENCES apartments(id)
);

CREATE TABLE vehicle_cards (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    resident_id BIGINT NOT NULL,
    vehicle_type VARCHAR(30) NOT NULL,
    license_plate VARCHAR(20) NOT NULL,
    card_status VARCHAR(20) DEFAULT 'PENDING',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (resident_id) REFERENCES residents(id)
);

CREATE TABLE feedbacks (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    resident_id BIGINT NOT NULL,
    title VARCHAR(150) NOT NULL,
    content TEXT NOT NULL,
    status VARCHAR(20) DEFAULT 'PENDING',
    reply_content TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (resident_id) REFERENCES residents(id)
);

CREATE TABLE notifications (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    content TEXT NOT NULL,
    created_by BIGINT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (created_by) REFERENCES users(id)
);
