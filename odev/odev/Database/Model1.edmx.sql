
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/12/2021 11:56:50
-- Generated from EDMX file: D:\YAZILIM PROJE\projee\odev\odev\Database\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [test2];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_alt_kategori_kategori]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[alt_kategori] DROP CONSTRAINT [FK_alt_kategori_kategori];
GO
IF OBJECT_ID(N'[dbo].[FK_kullanici_skor_kullanici]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[kullanici_skor] DROP CONSTRAINT [FK_kullanici_skor_kullanici];
GO
IF OBJECT_ID(N'[dbo].[FK_kullanici_soru_cevap_kullanici]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[kullanici_soru_cevap] DROP CONSTRAINT [FK_kullanici_soru_cevap_kullanici];
GO
IF OBJECT_ID(N'[dbo].[FK_kullanici_soru_cevap_soru]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[kullanici_soru_cevap] DROP CONSTRAINT [FK_kullanici_soru_cevap_soru];
GO
IF OBJECT_ID(N'[dbo].[FK_kullanici_soru_cevap_soru_secenek]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[kullanici_soru_cevap] DROP CONSTRAINT [FK_kullanici_soru_cevap_soru_secenek];
GO
IF OBJECT_ID(N'[dbo].[FK_secenekler_soru]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[secenekler] DROP CONSTRAINT [FK_secenekler_soru];
GO
IF OBJECT_ID(N'[dbo].[FK_sinav_tablo_alt_kategori]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sinav_tablo] DROP CONSTRAINT [FK_sinav_tablo_alt_kategori];
GO
IF OBJECT_ID(N'[dbo].[FK_sinav_tablo_soru]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sinav_tablo] DROP CONSTRAINT [FK_sinav_tablo_soru];
GO
IF OBJECT_ID(N'[dbo].[FK_sinav_tablo_soru1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[sinav_tablo] DROP CONSTRAINT [FK_sinav_tablo_soru1];
GO
IF OBJECT_ID(N'[dbo].[FK_soru_alt_kategori]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[soru] DROP CONSTRAINT [FK_soru_alt_kategori];
GO
IF OBJECT_ID(N'[dbo].[FK_soru_secenek_soru]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[soru_secenek] DROP CONSTRAINT [FK_soru_secenek_soru];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[alt_kategori]', 'U') IS NOT NULL
    DROP TABLE [dbo].[alt_kategori];
GO
IF OBJECT_ID(N'[dbo].[kategori]', 'U') IS NOT NULL
    DROP TABLE [dbo].[kategori];
GO
IF OBJECT_ID(N'[dbo].[kullanici]', 'U') IS NOT NULL
    DROP TABLE [dbo].[kullanici];
GO
IF OBJECT_ID(N'[dbo].[kullanici_skor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[kullanici_skor];
GO
IF OBJECT_ID(N'[dbo].[kullanici_soru_cevap]', 'U') IS NOT NULL
    DROP TABLE [dbo].[kullanici_soru_cevap];
GO
IF OBJECT_ID(N'[dbo].[secenekler]', 'U') IS NOT NULL
    DROP TABLE [dbo].[secenekler];
GO
IF OBJECT_ID(N'[dbo].[sinav_tablo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sinav_tablo];
GO
IF OBJECT_ID(N'[dbo].[soru]', 'U') IS NOT NULL
    DROP TABLE [dbo].[soru];
GO
IF OBJECT_ID(N'[dbo].[soru_secenek]', 'U') IS NOT NULL
    DROP TABLE [dbo].[soru_secenek];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'alt_kategori'
CREATE TABLE [dbo].[alt_kategori] (
    [alt_kategori_id] int IDENTITY(1,1) NOT NULL,
    [alt_kategori_ad] varchar(50)  NULL,
    [kategori_id] int  NULL,
    [aktif] bit  NULL
);
GO

-- Creating table 'kategori'
CREATE TABLE [dbo].[kategori] (
    [kategori_id] int IDENTITY(1,1) NOT NULL,
    [kategori_ad] varchar(50)  NULL,
    [aktif] bit  NULL
);
GO

-- Creating table 'kullanici'
CREATE TABLE [dbo].[kullanici] (
    [kullanici_id] int IDENTITY(1,1) NOT NULL,
    [kullanici_adi] varchar(50)  NOT NULL,
    [kullanici_mail] varchar(50)  NOT NULL,
    [kullanici_sifre] varchar(50)  NOT NULL,
    [aktif] bit  NULL,
    [yetki] varchar(50)  NULL
);
GO

-- Creating table 'kullanici_skor'
CREATE TABLE [dbo].[kullanici_skor] (
    [skor_id] int  NOT NULL,
    [kullanici_id] int  NULL,
    [eniyi_skor] int  NULL
);
GO

-- Creating table 'kullanici_soru_cevap'
CREATE TABLE [dbo].[kullanici_soru_cevap] (
    [kullanici_id] int  NOT NULL,
    [soru_id] int  NULL,
    [secim_id] int  NULL,
    [secim] nchar(10)  NULL,
    [skor] int  NULL
);
GO

-- Creating table 'secenekler'
CREATE TABLE [dbo].[secenekler] (
    [secenek_id] int IDENTITY(1,1) NOT NULL,
    [secenekler1] varchar(500)  NULL,
    [soru_id] int  NULL
);
GO

-- Creating table 'sinav_tablo'
CREATE TABLE [dbo].[sinav_tablo] (
    [sinav_id] int IDENTITY(1,1) NOT NULL,
    [alt_kategori_id] int  NULL,
    [soru_id] int  NULL,
    [Sınav_ad] varchar(50)  NULL
);
GO

-- Creating table 'soru'
CREATE TABLE [dbo].[soru] (
    [soru_id] int IDENTITY(1,1) NOT NULL,
    [soru_ad] varchar(50)  NULL,
    [alt_kategori_id] int  NULL,
    [aktif] bit  NULL
);
GO

-- Creating table 'soru_secenek'
CREATE TABLE [dbo].[soru_secenek] (
    [secim_id] int IDENTITY(1,1) NOT NULL,
    [soru_id] int  NULL,
    [dogru_cevap] varchar(500)  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [alt_kategori_id] in table 'alt_kategori'
ALTER TABLE [dbo].[alt_kategori]
ADD CONSTRAINT [PK_alt_kategori]
    PRIMARY KEY CLUSTERED ([alt_kategori_id] ASC);
GO

-- Creating primary key on [kategori_id] in table 'kategori'
ALTER TABLE [dbo].[kategori]
ADD CONSTRAINT [PK_kategori]
    PRIMARY KEY CLUSTERED ([kategori_id] ASC);
GO

-- Creating primary key on [kullanici_id] in table 'kullanici'
ALTER TABLE [dbo].[kullanici]
ADD CONSTRAINT [PK_kullanici]
    PRIMARY KEY CLUSTERED ([kullanici_id] ASC);
GO

-- Creating primary key on [skor_id] in table 'kullanici_skor'
ALTER TABLE [dbo].[kullanici_skor]
ADD CONSTRAINT [PK_kullanici_skor]
    PRIMARY KEY CLUSTERED ([skor_id] ASC);
GO

-- Creating primary key on [kullanici_id] in table 'kullanici_soru_cevap'
ALTER TABLE [dbo].[kullanici_soru_cevap]
ADD CONSTRAINT [PK_kullanici_soru_cevap]
    PRIMARY KEY CLUSTERED ([kullanici_id] ASC);
GO

-- Creating primary key on [secenek_id] in table 'secenekler'
ALTER TABLE [dbo].[secenekler]
ADD CONSTRAINT [PK_secenekler]
    PRIMARY KEY CLUSTERED ([secenek_id] ASC);
GO

-- Creating primary key on [sinav_id] in table 'sinav_tablo'
ALTER TABLE [dbo].[sinav_tablo]
ADD CONSTRAINT [PK_sinav_tablo]
    PRIMARY KEY CLUSTERED ([sinav_id] ASC);
GO

-- Creating primary key on [soru_id] in table 'soru'
ALTER TABLE [dbo].[soru]
ADD CONSTRAINT [PK_soru]
    PRIMARY KEY CLUSTERED ([soru_id] ASC);
GO

-- Creating primary key on [secim_id] in table 'soru_secenek'
ALTER TABLE [dbo].[soru_secenek]
ADD CONSTRAINT [PK_soru_secenek]
    PRIMARY KEY CLUSTERED ([secim_id] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [kategori_id] in table 'alt_kategori'
ALTER TABLE [dbo].[alt_kategori]
ADD CONSTRAINT [FK_alt_kategori_kategori]
    FOREIGN KEY ([kategori_id])
    REFERENCES [dbo].[kategori]
        ([kategori_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_alt_kategori_kategori'
CREATE INDEX [IX_FK_alt_kategori_kategori]
ON [dbo].[alt_kategori]
    ([kategori_id]);
GO

-- Creating foreign key on [alt_kategori_id] in table 'sinav_tablo'
ALTER TABLE [dbo].[sinav_tablo]
ADD CONSTRAINT [FK_sinav_tablo_alt_kategori]
    FOREIGN KEY ([alt_kategori_id])
    REFERENCES [dbo].[alt_kategori]
        ([alt_kategori_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_sinav_tablo_alt_kategori'
CREATE INDEX [IX_FK_sinav_tablo_alt_kategori]
ON [dbo].[sinav_tablo]
    ([alt_kategori_id]);
GO

-- Creating foreign key on [alt_kategori_id] in table 'soru'
ALTER TABLE [dbo].[soru]
ADD CONSTRAINT [FK_soru_alt_kategori]
    FOREIGN KEY ([alt_kategori_id])
    REFERENCES [dbo].[alt_kategori]
        ([alt_kategori_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_soru_alt_kategori'
CREATE INDEX [IX_FK_soru_alt_kategori]
ON [dbo].[soru]
    ([alt_kategori_id]);
GO

-- Creating foreign key on [kullanici_id] in table 'kullanici_skor'
ALTER TABLE [dbo].[kullanici_skor]
ADD CONSTRAINT [FK_kullanici_skor_kullanici]
    FOREIGN KEY ([kullanici_id])
    REFERENCES [dbo].[kullanici]
        ([kullanici_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_kullanici_skor_kullanici'
CREATE INDEX [IX_FK_kullanici_skor_kullanici]
ON [dbo].[kullanici_skor]
    ([kullanici_id]);
GO

-- Creating foreign key on [kullanici_id] in table 'kullanici_soru_cevap'
ALTER TABLE [dbo].[kullanici_soru_cevap]
ADD CONSTRAINT [FK_kullanici_soru_cevap_kullanici]
    FOREIGN KEY ([kullanici_id])
    REFERENCES [dbo].[kullanici]
        ([kullanici_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [soru_id] in table 'kullanici_soru_cevap'
ALTER TABLE [dbo].[kullanici_soru_cevap]
ADD CONSTRAINT [FK_kullanici_soru_cevap_soru]
    FOREIGN KEY ([soru_id])
    REFERENCES [dbo].[soru]
        ([soru_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_kullanici_soru_cevap_soru'
CREATE INDEX [IX_FK_kullanici_soru_cevap_soru]
ON [dbo].[kullanici_soru_cevap]
    ([soru_id]);
GO

-- Creating foreign key on [secim_id] in table 'kullanici_soru_cevap'
ALTER TABLE [dbo].[kullanici_soru_cevap]
ADD CONSTRAINT [FK_kullanici_soru_cevap_soru_secenek]
    FOREIGN KEY ([secim_id])
    REFERENCES [dbo].[soru_secenek]
        ([secim_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_kullanici_soru_cevap_soru_secenek'
CREATE INDEX [IX_FK_kullanici_soru_cevap_soru_secenek]
ON [dbo].[kullanici_soru_cevap]
    ([secim_id]);
GO

-- Creating foreign key on [soru_id] in table 'secenekler'
ALTER TABLE [dbo].[secenekler]
ADD CONSTRAINT [FK_secenekler_soru]
    FOREIGN KEY ([soru_id])
    REFERENCES [dbo].[soru]
        ([soru_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_secenekler_soru'
CREATE INDEX [IX_FK_secenekler_soru]
ON [dbo].[secenekler]
    ([soru_id]);
GO

-- Creating foreign key on [soru_id] in table 'sinav_tablo'
ALTER TABLE [dbo].[sinav_tablo]
ADD CONSTRAINT [FK_sinav_tablo_soru]
    FOREIGN KEY ([soru_id])
    REFERENCES [dbo].[soru]
        ([soru_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_sinav_tablo_soru'
CREATE INDEX [IX_FK_sinav_tablo_soru]
ON [dbo].[sinav_tablo]
    ([soru_id]);
GO

-- Creating foreign key on [soru_id] in table 'soru_secenek'
ALTER TABLE [dbo].[soru_secenek]
ADD CONSTRAINT [FK_soru_secenek_soru]
    FOREIGN KEY ([soru_id])
    REFERENCES [dbo].[soru]
        ([soru_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_soru_secenek_soru'
CREATE INDEX [IX_FK_soru_secenek_soru]
ON [dbo].[soru_secenek]
    ([soru_id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------