# Thiết kế cơ sở dữ liệu - Hệ thống quản lý chung cư

## 1. Mục tiêu
Cơ sở dữ liệu phục vụ cho việc quản lý người dùng, căn hộ, cư dân, hóa đơn,
phản ánh, thẻ xe và thông báo trong hệ thống quản lý chung cư.

## 2. Danh sách bảng dự kiến
1. roles
2. users
3. buildings
4. apartments
5. residents
6. fee_types
7. bills
8. service_requests
9. vehicle_cards
10. notifications

## 3. Mô tả các bảng

### 3.1. roles
- id
- name

### 3.2. users
- id
- username
- password
- full_name
- email
- phone
- role_id
- status
- created_at

### 3.3. buildings
- id
- name
- address
- total_floors

### 3.4. apartments
- id
- building_id
- apartment_number
- floor
- area
- status

### 3.5. residents
- id
- user_id
- apartment_id
- identity_card
- move_in_date

### 3.6. fee_types
- id
- name
- price
- description

### 3.7. bills
- id
- apartment_id
- fee_type_id
- month
- amount
- due_date
- payment_status
- paid_at
- created_by

### 3.8. service_requests
- id
- resident_id
- title
- content
- status
- response_content
- created_at

### 3.9. vehicle_cards
- id
- apartment_id
- owner_name
- vehicle_type
- license_plate
- status

### 3.10. notifications
- id
- title
- content
- target_role
- created_by
- created_at