USE quan_ly_chung_cu;

INSERT INTO users (username, password, full_name, email, phone, role, status) VALUES
('admin', '123456', 'Quan Tri Vien', 'admin@gmail.com', '0900000001', 'ADMIN', 'ACTIVE'),
('manager1', '123456', 'Ban Quan Ly 1', 'manager1@gmail.com', '0900000002', 'MANAGEMENT', 'ACTIVE'),
('resident1', '123456', 'Cu Dan 1', 'resident1@gmail.com', '0900000003', 'RESIDENT', 'ACTIVE'),
('resident2', '123456', 'Cu Dan 2', 'resident2@gmail.com', '0900000004', 'RESIDENT', 'ACTIVE');

INSERT INTO apartments (apartment_code, building_name, floor_number, area, status) VALUES
('A101', 'Toa A', 1, 65.5, 'OCCUPIED'),
('A102', 'Toa A', 1, 70.0, 'AVAILABLE'),
('B201', 'Toa B', 2, 80.0, 'OCCUPIED');

INSERT INTO residents (full_name, date_of_birth, gender, phone, cccd, email, apartment_id, user_id) VALUES
('Nguyen Van An', '2000-05-10', 'Nam', '0911111111', '079200000001', 'an@gmail.com', 1, 3),
('Tran Thi Binh', '2001-08-20', 'Nu', '0922222222', '079200000002', 'binh@gmail.com', 3, 4);

INSERT INTO bills (apartment_id, bill_month, bill_year, electricity_fee, water_fee, service_fee, total_amount, payment_status) VALUES
(1, 3, 2026, 300000, 150000, 200000, 650000, 'UNPAID'),
(3, 3, 2026, 450000, 180000, 250000, 880000, 'PAID');

INSERT INTO vehicle_cards (resident_id, vehicle_type, license_plate, card_status) VALUES
(1, 'Xe may', '59A1-12345', 'APPROVED'),
(2, 'O to', '51H-67890', 'PENDING');

INSERT INTO feedbacks (resident_id, title, content, status, reply_content) VALUES
(1, 'Den hanh lang bi hong', 'Den hanh lang tang 1 khong sang', 'PENDING', NULL),
(2, 'Thang may cham', 'Thang may toa B di chuyen cham', 'PROCESSING', 'Ban quan ly dang kiem tra');

INSERT INTO notifications (title, content, created_by) VALUES
('Thong bao dong phi thang 3', 'Cu dan vui long dong phi truoc ngay 25/03/2026', 2),
('Thong bao bao tri thang may', 'Thang may toa B se bao tri vao cuoi tuan', 2);
