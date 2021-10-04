create database qlsinhvien;

use TranDiepQuocTrung_qlsinhvien;

create table Khoa(
MaKhoa int primary key,
Tenkhoa nvarchar (20) not null,
Dienthoai varchar (12) not null,
Diachi nvarchar (200) not null
);

create table SinhVien(
MaSV int primary key,
Ho nvarchar (25) not null,
Ten nvarchar (8) not null,
Ngaysinh datetime not null,
Gioitinh nvarchar (3) not null,
Makhoa char (2) not null,
Dienthoai varchar (12) not null,
Quequan nvarchar (20) not null,
Doituong nvarchar  not null
);

create table MonHoc(
MaMH int primary key not null,
TenMH nvarchar (40) not null,
DVHT char (3) not null,
Hocky char (3) not null
);

create table KetQua(
MaSV int foreign key references SinhVien (MaSV),
MaMH int foreign key references MonHoc (MaMH),
primary key (MaSV,MaMH),
Diem float ,
KQHoc varchar (1) not null
);

insert into Khoa (MaKhoa,Tenkhoa,Dienthoai,Diachi) values ('123','chính trị','1900-6868','Phạm Phú Thứ'); 
insert into Khoa (MaKhoa,Tenkhoa,Dienthoai,Diachi) values ('456','Mac','1900-7878','Phạm Phú Thứ');


insert into SinhVien(MaSV,Ho,Ten,Ngaysinh,Gioitinh,Makhoa,Dienthoai,Quequan,Doituong) values ('0706','Trần','Trung','31-1','Nam','123','012345678','Ninh Thuận','KHÁC');
insert into SinhVien(MaSV,Ho,Ten,Ngaysinh,Gioitinh,Makhoa,Dienthoai,Quequan,Doituong) values ('0707','Trần','Trong','22-12','Nam','456','012345689','TPHCM','KHÁC');


insert into MonHoc(MaMH,TenMH,DVHT,Hocky) values ('0808','Design','3','2');
insert into MonHoc(MaMH,TenMH,DVHT,Hocky) values ('0909','database','2','2');

insert into KetQua(MaSV,MaMH,Diem,KQHoc) values ('0706','0808','8','Q');
insert into KetQua(MaSV,MaMH,Diem,KQHoc) values ('0707','0909','8','Q');

 
  alter table Khoa add constraint FK_Khoa foreign key(MaKhoa) references SinhVien (MaKhoa)
  alter table KetQua add constraint FK_sinhvien foreign key(MaSV) references SinhVien (MaSV)
  alter table KetQua add constraint FK_monhoc foreign key(MaMH) references MonHoc (MaMH)
