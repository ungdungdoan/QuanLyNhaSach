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
	constraint pk_nhanVien primary key(MaNV),
)

create table Sach
(
	MaSach	varchar(30) not null,
	TenSach	nvarchar(30),
	TacGia	nvarchar(30),
	TheLoai nvarchar(30),
	NXB		nvarchar(30),
	Gia		int,
	constraint pk_Sach primary key(MaSach),
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
	MaHD	varchar(30) not null,
	MaSach	varchar(30) not null,
	Soluong	int,
	DonGia	int,
	ThanhTien int,
	constraint pk_CTHD primary key (MaHD, MaSach),
	constraint fk_CTHD_HoaDon foreign key (MaHD) references HoaDon (MaHD),
	constraint fk_CTHD_MaSach foreign key (MaSach) references Sach (MaSach)
)
