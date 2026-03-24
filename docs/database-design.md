# Thiet Ke Co So Du Lieu MySQL

## 1. Muc dich
Co so du lieu duoc thiet ke de phuc vu he thong quan ly chung cu, ho tro quan ly tai khoan, cu dan, can ho, hoa don, the xe, phan anh va thong bao.

## 2. Danh sach bang

### 2.1. Bang users
Muc dich:
- Luu thong tin tai khoan dang nhap cua he thong

Cac truong:
- id: khoa chinh
- username: ten dang nhap, duy nhat
- password: mat khau da ma hoa
- full_name: ho ten nguoi dung
- email: email
- phone: so dien thoai
- role: vai tro ADMIN, MANAGEMENT, RESIDENT
- status: trang thai tai khoan
- created_at: ngay tao

### 2.2. Bang apartments
Muc dich:
- Luu thong tin can ho

Cac truong:
- id: khoa chinh
- apartment_code: ma can ho
- building_name: ten toa nha
- floor_number: tang
- area: dien tich
- status: trang thai can ho

### 2.3. Bang residents
Muc dich:
- Luu thong tin cu dan

Cac truong:
- id: khoa chinh
- full_name: ho ten cu dan
- date_of_birth: ngay sinh
- gender: gioi tinh
- phone: so dien thoai
- cccd: can cuoc cong dan
- email: email
- apartment_id: khoa ngoai lien ket den bang apartments
- user_id: khoa ngoai lien ket den bang users

### 2.4. Bang bills
Muc dich:
- Luu thong tin hoa don theo can ho

Cac truong:
- id: khoa chinh
- apartment_id: khoa ngoai lien ket den apartments
- bill_month: thang hoa don
- bill_year: nam hoa don
- electricity_fee: tien dien
- water_fee: tien nuoc
- service_fee: phi dich vu
- total_amount: tong tien
- payment_status: trang thai thanh toan
- created_at: ngay tao

### 2.5. Bang vehicle_cards
Muc dich:
- Luu thong tin dang ky the xe cua cu dan

Cac truong:
- id: khoa chinh
- resident_id: khoa ngoai lien ket den residents
- vehicle_type: loai xe
- license_plate: bien so xe
- card_status: trang thai duyet the xe
- created_at: ngay tao

### 2.6. Bang feedbacks
Muc dich:
- Luu phan anh cua cu dan

Cac truong:
- id: khoa chinh
- resident_id: khoa ngoai lien ket den residents
- title: tieu de phan anh
- content: noi dung phan anh
- status: trang thai xu ly
- reply_content: noi dung phan hoi
- created_at: ngay tao

### 2.7. Bang notifications
Muc dich:
- Luu thong bao gui den cu dan

Cac truong:
- id: khoa chinh
- title: tieu de thong bao
- content: noi dung thong bao
- created_by: nguoi tao thong bao, khoa ngoai den users
- created_at: ngay tao

## 3. Quan he giua cac bang
- users co the lien ket voi residents thong qua user_id
- apartments lien ket voi residents thong qua apartment_id
- apartments lien ket voi bills thong qua apartment_id
- residents lien ket voi vehicle_cards thong qua resident_id
- residents lien ket voi feedbacks thong qua resident_id
- users lien ket voi notifications thong qua created_by
