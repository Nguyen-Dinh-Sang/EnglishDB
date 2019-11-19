create database WebDB;
go

Use WebDB;
go

create table NguoiDung
(
	ID int IDENTITY(1,1) PRIMARY KEY,
	TenNguoiDung nvarchar(100),
	TaiKhoan varchar(50),
	MatKhau varchar(50),
	NgayTao date default getdate(),
	SoDienThoai varchar(20),
	Gmail varchar(50),
	VaiTro int default 1
);
go

truncate table NguoiDung;

insert into NguoiDung(TenNguoiDung, TaiKhoan, MatKhau, SoDienThoai, Gmail, VaiTro)
output inserted.ID
values (N'Trần Thanh Phong', 'phongle', '123456', '0333568910', 'tranphong123@gmail.com', 2);

insert into NguoiDung(TenNguoiDung, TaiKhoan, MatKhau, SoDienThoai, Gmail, VaiTro)
output inserted.ID
values (N'Nguyễn Thị Xuan Linh', 'linhxinhdep', '123456', '0333748913', 'xuanlinh@gmail.com', 2);

insert into NguoiDung(TenNguoiDung, TaiKhoan, MatKhau, SoDienThoai, Gmail, VaiTro)
output inserted.ID
values (N'Nguyễn Đình Sang', 'sangdeptrai', '123456', '0345225651', 'nguyendinhsang9199@gmail.com', 2);

insert into NguoiDung(TenNguoiDung, TaiKhoan, MatKhau, SoDienThoai, Gmail)
output inserted.ID
values (N'Trần Minh Nhật', 'nhattran', '123456', '0333568100', 'trannhat24@gmail.com');

insert into NguoiDung(TenNguoiDung, TaiKhoan, MatKhau, SoDienThoai, Gmail)
output inserted.ID
values (N'Huỳnh Khương Ninh', 'hkn', '123456', '0345678900', 'ninh@gmail.com');

insert into NguoiDung(TenNguoiDung, TaiKhoan, MatKhau, SoDienThoai, Gmail)
output inserted.ID
values (N'Trần Minh Hiếu', 'tranminhhieu', '123456', '0345678932', 'hieutran@gmail.com');

insert into NguoiDung(TenNguoiDung, TaiKhoan, MatKhau, SoDienThoai, Gmail)
output inserted.ID
values (N'Phạm Phương Thanh', 'thanhthanh', '123456', '0339999999', 'chethichhoa@gmail.com');

insert into NguoiDung(TenNguoiDung, TaiKhoan, MatKhau, SoDienThoai, Gmail)
output inserted.ID
values (N'Trần Thị Thúy An', 'thuyan', '123456', '0985632547', 'an123@gmail.com');

insert into NguoiDung(TenNguoiDung, TaiKhoan, MatKhau, SoDienThoai, Gmail)
output inserted.ID
values (N'Thái Minh Quân', 'vodoi', '123456', '0333568910', 'batcandoi@gmail.com');

insert into NguoiDung(TenNguoiDung, TaiKhoan, MatKhau, SoDienThoai, Gmail)
output inserted.ID
values (N'Phạm Tấn Phát', 'phamtanphat', '123456', '0987654321', 'phatpham@gmail.com');
go

select *
from NguoiDung;
go

drop table NguoiDung;
go