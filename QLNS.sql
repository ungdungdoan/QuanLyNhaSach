create database QLNS
go
use QLNS
go

create table KhachHang
(
	MaKH	int not null,
	TenKH	nvarchar(30),
	DiaChi	nvarchar(30),
	Email	varchar(30),
	constraint pk_khachHang primary key(MaKH)
)

create table QuanLy
(
	MaQL	varchar(30) not null,
	TenQL	nvarchar(30),
	DiaChi	nvarchar(30),
	SoDT	varchar(30),
	constraint pk_quanLy primary key(MaQL)
)

create table ThuKho
(
	MaTK	varchar(30) not null,
	TenTK	nvarchar(30),
	DiaChi	nvarchar(30),
	SoDT	varchar(30),
	constraint pk_thuKho primary key(MaTK)
)

create table ThuKho
(
	MaTK	varchar(30) not null,
	TenTK	nvarchar(30),
	DiaChi	nvarchar(30),
	SoDT	varchar(30),
	constraint pk_thuKho primary key(MaTK)
)

create table NhanVienBanHang
(
	MaNV	varchar(30) not null,
	TenNV	nvarchar(30),
	DiaChi	nvarchar(30),
	SoDT	varchar(30),
	constraint pk_nhanVien primary key(MaNV)
)

create table Sach
(
	MaSach	varchar(30) not null,
	TenSach	nvarchar(30),
	TacGia	nvarchar(30),
	NXB		nvarchar(30),
	Gia		int,

	constraint pk_maSach primary key(MaSach)
)


