-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:55:46.878




-- tables
-- Table: TNhanvien 
CREATE TABLE TNhanvien  (
    MaNV char(10)  NOT NULL,
    TenNV nvarchar(200)  NOT NULL,
    , Ngaysinh datetime  NOT NULL,
    GioiTinh nvarchar(10)  NOT NULL,
    Email nvarchar(200)  NOT NULL,
    MucLuong money  NOT NULL,
    MaPhong char(10)  NOT NULL,
    TenPhong nvarchar(200)  NOT NULL,
    CONSTRAINT TNhanvien _pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    MaPhong char(10)  NOT NULL,
    TenPhong nvarchar(200)  NOT NULL,
    TNhanvien _MaNV char(10)  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TPhongban_TNhanvien  (table: TPhongban)

ALTER TABLE TPhongban ADD CONSTRAINT TPhongban_TNhanvien  
    FOREIGN KEY (TNhanvien _MaNV)
    REFERENCES TNhanvien  (MaNV)
;





-- End of file.

