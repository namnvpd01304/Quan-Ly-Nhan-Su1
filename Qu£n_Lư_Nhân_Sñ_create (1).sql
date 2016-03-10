-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 01:25:13.843




-- tables
-- Table: Nhan_vien
CREATE TABLE Nhan_vien (
    MaNV char(10)  NOT NULL,
    TenNV nvarchar(200)  NOT NULL,
    GioiTinh nvarchar(10)  NOT NULL,
    Email nvarchar(200)  NOT NULL,
    MucLuong money  NOT NULL,
    MaPhong char(10)  NOT NULL,
    TenPhong nvarchar(200)  NOT NULL,
    NgaySinh date  NOT NULL,
    CONSTRAINT Nhan_vien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: Phong_Ban
CREATE TABLE Phong_Ban (
    MaPhong char(10)  NOT NULL,
    TenPhong nvarchar(20)  NOT NULL,
    Nhan_vien_MaNV char(10)  NOT NULL,
    CONSTRAINT Phong_Ban_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  Phong_Ban_Nhan_vien (table: Phong_Ban)

ALTER TABLE Phong_Ban ADD CONSTRAINT Phong_Ban_Nhan_vien 
    FOREIGN KEY (Nhan_vien_MaNV)
    REFERENCES Nhan_vien (MaNV)
;





-- End of file.

