# API Documentation - Hệ thống quản lý chung cư

## 1. Auth API

### POST /api/auth/register
- Mô tả: Đăng ký tài khoản cư dân

### POST /api/auth/login
- Mô tả: Đăng nhập hệ thống

### GET /api/auth/me
- Mô tả: Lấy thông tin người dùng hiện tại

## 2. Apartment API

### GET /api/apartments
- Mô tả: Lấy danh sách căn hộ

### GET /api/apartments/{id}
- Mô tả: Lấy chi tiết căn hộ

### POST /api/apartments
- Mô tả: Thêm căn hộ mới

### PUT /api/apartments/{id}
- Mô tả: Cập nhật căn hộ

### DELETE /api/apartments/{id}
- Mô tả: Xóa căn hộ

## 3. Resident API

### GET /api/residents
- Mô tả: Lấy danh sách cư dân

### POST /api/residents
- Mô tả: Thêm cư dân

### PUT /api/residents/{id}
- Mô tả: Cập nhật cư dân

### DELETE /api/residents/{id}
- Mô tả: Xóa cư dân

## 4. Bill API

### GET /api/bills
- Mô tả: Lấy danh sách hóa đơn

### POST /api/bills
- Mô tả: Tạo hóa đơn

### PUT /api/bills/{id}
- Mô tả: Cập nhật hóa đơn

### PUT /api/bills/{id}/pay
- Mô tả: Thanh toán hóa đơn giả lập

## 5. Service Request API

### GET /api/service-requests
- Mô tả: Lấy danh sách phản ánh

### POST /api/service-requests
- Mô tả: Gửi phản ánh

### PUT /api/service-requests/{id}/process
- Mô tả: Xử lý phản ánh

## 6. Vehicle Card API

### GET /api/vehicle-cards
- Mô tả: Lấy danh sách đăng ký thẻ xe

### POST /api/vehicle-cards
- Mô tả: Đăng ký thẻ xe

### PUT /api/vehicle-cards/{id}/approve
- Mô tả: Duyệt thẻ xe

### PUT /api/vehicle-cards/{id}/reject
- Mô tả: Từ chối thẻ xe

## 7. Notification API

### GET /api/notifications
- Mô tả: Lấy danh sách thông báo

### POST /api/notifications
- Mô tả: Tạo thông báo

## 8. Dashboard API

### GET /api/dashboard/summary
- Mô tả: Lấy dữ liệu thống kê tổng quan