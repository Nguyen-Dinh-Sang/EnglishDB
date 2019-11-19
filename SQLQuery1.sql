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

create table ChuDe
(
	ID int IDENTITY(1,1) PRIMARY KEY,
	TenChuDe nvarchar(100),
	ThongTin nvarchar(1000),
	NgayTao date default getdate()
)
go

truncate table ChuDe;

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Gặp Mặt Lần Đầu', N'Nói chuyên làm quen, hỏi quê quán, gặp người nước ngoài lần đầu');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Gặp Gỡ Tình Cờ', N'Hỏi thăm sau khi chuyển nhà, hỏi thăm sau thời gian dài không gặp, sự thay đổi sau thời gian dài không gặp');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Vui Mừng - Hạnh Phúc', N'Báo tin tốt lành về kì thi, mong ước gặp một người, hào hứng với chiếc xe mới');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Lo Lắng - Buồn', N'Buồn chán vì bài thi tiếng Anh không đạt, chia tay người yêu, bất tiện khi nhà ở gần sân bay');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Chia Sẻ - Cảm Thông', N'Động viên bạn cố gắng, động viên bạn cố gắng làm việc tốt hơn, chia sẻ khi bạn có tin buồn');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Cảm Ơn - Xin Lỗi', N'Trượt phỏng vấn, đề nghị giúp đỡ người khác, xin lỗi vì đến trễ bữa tiệc');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Tại Hiệu Thuốc', N'Mua thuốc theo đơn, mua thuốc nhờ tư vấn của nhân viên bán hàng, mua thuốc đau lưng');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Tại Ngân Hàng', N'Tư vấn gửi tiết kiệm kỳ hạn, tư vấn mở tài khoản tiết kiệm, không biết nên mở tài khoản tiết kiệm như thế nào');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Tại Bưu Điện', N'Gửi bưu phẩm và hỏi mua tem, cân nhắc/hỏi tư vấn về gửi bưu phẩm qua đường hàng không, gửi bưu kiện tới Pháp qua đường hàng hải');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Tại Rạp Chiếu Phim', N'Hỏi giá mua vé xem phim, bình luận về một bộ phim, rủ đi xem phim');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Tại Hiệu Chụp Ảnh', N'Chụp ảnh thẻ, đề nghị rửa cuộn phim, tạo dáng khi chụp ảnh');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Tại Tiệm Làm Đẹp', N'Gội đầu và sửa tóc, mát xa mặt, thử com lê');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Tại Bệnh Viện', N'Mô tả triệu chứng bệnh, đau bụng');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Tại Hiệu Giặt Là', N'Cách đưa ra một yêu cầu làm sạch cụ thể, đưa ra yêu cầu giặt đơn giản, hỏi giá');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Đi Ăn Nhà Hàng', N'Tình huống chưa đặt bàn trước, tình huống đã đặt bàn, gọi món');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Đi Mua Sắm', N'Mua giày, mua áo sơ mi');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Nói Lời Khẳng Định', N'Khẳng định sẻ đến buổi diễn ca nhạc, khẳng định nỗ lực học tiếng anh');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Đề Nghị - Xin Phép', N'Đệ nghị qua xem phòng thuê, xin phép gặp một người thông qua người thứ ba');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Phán Đoán Và Ý Kiến', N'Thảo luận về chạy bộ, bình luận về một cuốn sách');

insert into ChuDe(TenChuDe, ThongTin)
output inserted.ID
values (N'Kinh Doanh', N'Hỏi doanh thi và trụ sở/địa chỉ, hỏi về cơ chế và nguyên tắc hoạt động của doanh nghiệp, hỏi thị phần định hướng phát triển doanh nghiệp');
go

create table ThamGiaChuDe
(
	ID int IDENTITY(1,1) PRIMARY KEY,
	IDNguoiDung int FOREIGN KEY REFERENCES dbo.NguoiDung(ID),
	IDChuDe int FOREIGN KEY REFERENCES dbo.ChuDe(ID)
)
go

truncate table ThamGiaChuDe;

insert into ThamGiaChuDe(IDNguoiDung, IDChuDe)
output inserted.ID
values (1,1);

insert into ThamGiaChuDe(IDNguoiDung, IDChuDe)
output inserted.ID
values (1,2);

insert into ThamGiaChuDe(IDNguoiDung, IDChuDe)
output inserted.ID
values (2,5);

insert into ThamGiaChuDe(IDNguoiDung, IDChuDe)
output inserted.ID
values (3,10);

insert into ThamGiaChuDe(IDNguoiDung, IDChuDe)
output inserted.ID
values (3,11);

insert into ThamGiaChuDe(IDNguoiDung, IDChuDe)
output inserted.ID
values (3,12);
go

select *
from ThamGiaChuDe
go

select *
from ChuDe
go

select *
from NguoiDung;
go

drop table ThamGiaChuDe
go

drop table NguoiDung;
go

drop table ChuDe;
go