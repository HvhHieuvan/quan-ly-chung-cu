# Phân tích yêu cầu - Hệ thống quản lý chung cư

## 1. Giới thiệu đề tài
Hệ thống quản lý chung cư được xây dựng nhằm hỗ trợ cư dân, ban quản lý và admin
trong việc quản lý căn hộ, cư dân, hóa đơn, phản ánh, thẻ xe và thông báo.

## 2. Mục tiêu hệ thống
- Quản lý thông tin cư dân
- Quản lý căn hộ
- Quản lý hóa đơn
- Hỗ trợ cư dân gửi phản ánh
- Hỗ trợ cư dân đăng ký thẻ xe
- Gửi thông báo đến cư dân
- Quản lý người dùng và phân quyền

## 3. Đối tượng sử dụng

### 3.1. Cư dân
- Đăng nhập
- Xem thông tin căn hộ
- Xem hóa đơn
- Thanh toán hóa đơn giả lập
- Gửi phản ánh
- Đăng ký thẻ xe
- Xem thông báo

### 3.2. Ban quản lý
- Quản lý cư dân
- Quản lý căn hộ
- Tạo hóa đơn
- Quản lý hóa đơn
- Xử lý phản ánh
- Duyệt thẻ xe
- Gửi thông báo

### 3.3. Admin
- Quản lý tài khoản
- Quản lý loại phí
- Quản lý tòa nhà
- Xem dashboard thống kê

## 4. Yêu cầu chức năng

### 4.1. Đăng nhập và phân quyền
- Người dùng đăng nhập bằng tài khoản và mật khẩu
- Hệ thống phân quyền theo vai trò ADMIN, MANAGEMENT, RESIDENT

### 4.2. Quản lý cư dân
- Thêm cư dân
- Cập nhật cư dân
- Xóa cư dân
- Xem danh sách cư dân

### 4.3. Quản lý căn hộ
- Thêm căn hộ
- Cập nhật căn hộ
- Xóa căn hộ
- Xem danh sách căn hộ

### 4.4. Quản lý hóa đơn
- Tạo hóa đơn
- Xem danh sách hóa đơn
- Cập nhật trạng thái thanh toán

### 4.5. Quản lý phản ánh
- Cư dân gửi phản ánh
- Ban quản lý tiếp nhận và xử lý phản ánh

### 4.6. Quản lý thẻ xe
- Cư dân đăng ký thẻ xe
- Ban quản lý duyệt hoặc từ chối đăng ký

### 4.7. Quản lý thông báo
- Ban quản lý hoặc admin tạo thông báo
- Cư dân xem thông báo

## 5. Yêu cầu phi chức năng
- Giao diện rõ ràng, dễ sử dụng
- Dữ liệu lưu trong MySQL
- Bảo mật bằng Spring Security và JWT
- Quản lý phiên đăng nhập an toàn
- Dễ mở rộng thêm chức năng sau này