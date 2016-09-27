create database QLNS
go
use QLNS
go

create table KhachHang
(
	MaKH	varchar(30) not null,
	TenKH	nvarchar(30),
	DiaChi	nvarchar(30),
	Email	varchar(30),
	constraint pk_khachHang primary key(MaKH)
)

create table NhanVien
(
	MaNV	varchar(30) not null,
	TenNV	nvarchar(30),
	DiaChi	nvarchar(30),
	SoDT	varchar(30),
	MaPhieuNhap varchar(30),
	constraint pk_nhanVien primary key(MaNV),
	constraint fk_NhanVien_PhieuNhapSach foreign key(MaPhieuNhap) 
		references PhieuNhapSach(MaPhieuNhap),
)

create table PhieuNhapSach
(
	MaPhieuNhap		varchar(30) not null,
	NgayLapPhieu	datetime,
	constraint pk_PhieuNhapSach primary key(MaPhieuNhap)
)

create table Sach
(
	MaSach	varchar(30) not null,
	TenSach	nvarchar(30),
	TacGia	nvarchar(30),
	MaTheLoai varchar(30),
	MaNXB	nvarchar(30),
	Gia		int,
	constraint pk_Sach primary key(MaSach),
	constraint fk_Sach_NXB foreign key(MaNXB) references NXB(MaNXB),
	constraint fk_Sach_TheLoai foreign key(MaTheLoai) references TheLoai(MaTheLoai),
)

create table NXB
(
	MaNXB	nvarchar(30) not null,
	TenNXB	nvarchar(30),
	DiaChi	nvarchar(30),
	SoDT	int,
	constraint pk_NXB primary key(MaNXB)
)

create table TheLoai
(
	MaTheLoai	varchar(30) not null,
	TenTheLoai	nvarchar(30),
	constraint pk_TheLoai primary key(MaTheLoai),
)

create table HoaDon
(
	MaHD		varchar(30) not null,
	NgayLapHD	datetime,
	MaNV		varchar(30),
	MaKH		varchar(30),
	constraint pk_HoaDon primary key(MaHD),
	constraint fk_HoaDon_NhanVien foreign key(MaNV) references NhanVien(MaNV),
	constraint fk_HoaDon_KhachHang foreign key(MaKH) references KhachHang(MaKH),
)

create table ChiTietHD
(
	MaHD	varchar(30),
	MaSach	varchar(30),
	Soluong	int,
	DonGia	int,
	ThanhTien int,
	constraint pk_CTHD primary key(MaHD, MaSach),
	constraint fk_CTHD_HoaDon foreign key(MaHD) references HoaDon(MaHD),
	constraint fk_CTHD_MaSAch foreign key(MaSach) references Sach(MaSach),
)

insert into KhachHang values
(),

insert into NhanVien values


insert into Sach values


insert into TheLoai values


insert into NXB values


insert into HoaDon values


insert into ChiTietHD values


insert into PhieuNhapSach values

