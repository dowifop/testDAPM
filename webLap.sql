use master 
create database webLaptop
use webLaptop
create table KhachHang 
(
 MaKh int identity(1,1) primary key,
 HoTenKH nvarchar(100),
 Email nvarchar(100),
 MatKhau nvarchar(100),
 DiaChi nvarchar(100),
 SDT nvarchar(100),
 )
 create table SanPham
 (
	MaSP int IDENTITY(1,1) primary key,
	TenSP nvarchar(100),
	img varchar(100),
	moTa nvarchar(100),
	soLuong int ,
	gia int ,
)
create table Loai
(
	MaLoai int Identity(1,1) primary key,
	tenLoai nvarchar(100),
)
create table HoaDon
(
 maHD varchar(10) primary key,
 ngayDat datetime,
 TongTien int,
 maKH int,
 maSp int,
 DiaChi nvarchar(100),
 constraint FK_KH foreign key maKH references KhachHang(MaKh)
 )

