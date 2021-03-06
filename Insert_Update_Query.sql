use QLNS

insert into KhachHang values
('kh1', N'Nguyễn Văn A', N'123/45 Gò Vấp', 'ngva123@gmail.com'),
('kh2', N'Phạm Thị B', N'456/78 Thủ Đức', 'phthb456@gmail.com')

insert into NhanVien values
('nv1', N'Trần Trọng C', N'678/90', '123456789'),
('nv2', N'Lê Thị D', N'789/12', '987654321')

insert into Sach values
('sach1', N'Đắc nhân tâm', 'Dale Carnegie', N'Kỹ năng sống', N'NXB Trẻ', 76000),
('sach2', N'5 centimet trên giây', 'Shinkai Makoto', N'Tiểu thuyết', N'NXB Văn Học', 50000),
('sach3', N'Tôi thấy hoa vàng trên cỏ xanh', N'Nguyễn Nhật Ánh', N'Sách thiếu nhi', N'NXB Trẻ', 82000),
('sach4', N'Tôi tài giỏi - Bạn cũng thế', 'Adam Khoo', N'Nghệ thuật sống', N'NXB Phụ Nữ', 110000)

insert into HoaDon values
('hd1', '1/1/2016', 'nv1', 'kh1'),
('hd2', '2/2/2016', 'nv2', 'kh2')

insert into ChiTietHD values
('hd1', 'sach1', 1, 76000, 76000),
('hd2', 'sach2', 3, 50000, 150000)


update Sach set Gia = 75000 where MaSach = 'sach1'
update Sach set Gia = 55000 where MaSach = 'sach2'
update Sach set Gia = 80000 where MaSach = 'sach3'
update Sach set Gia = 100000 where MaSach = 'sach4'


select * from NhanVien
select * from KhachHang
select * from Sach
select * from HoaDon
select * from ChiTietHD