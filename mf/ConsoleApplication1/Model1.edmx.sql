
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 11/13/2020 15:44:03
-- Generated from EDMX file: D:\Projects\mf\ConsoleApplication1\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [model first];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CustomerOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Order集] DROP CONSTRAINT [FK_CustomerOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerProduct_Customer]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CustomerProduct] DROP CONSTRAINT [FK_CustomerProduct_Customer];
GO
IF OBJECT_ID(N'[dbo].[FK_CustomerProduct_Product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CustomerProduct] DROP CONSTRAINT [FK_CustomerProduct_Product];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Customer集]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customer集];
GO
IF OBJECT_ID(N'[dbo].[Order集]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Order集];
GO
IF OBJECT_ID(N'[dbo].[Product集]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Product集];
GO
IF OBJECT_ID(N'[dbo].[CustomerProduct]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CustomerProduct];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Customer集'
CREATE TABLE [dbo].[Customer集] (
    [ID] int  NOT NULL,
    [Telephone] nvarchar(11)  NOT NULL,
    [CompanyName] nvarchar(50)  NOT NULL,
    [Age] smallint  NOT NULL,
    [Name] nvarchar(11)  NOT NULL
);
GO

-- Creating table 'Order集'
CREATE TABLE [dbo].[Order集] (
    [ID] uniqueidentifier  NOT NULL,
    [OrderNo] nvarchar(30)  NOT NULL,
    [Amount] decimal(2,0)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [CustomerID] int  NOT NULL
);
GO

-- Creating table 'Product集'
CREATE TABLE [dbo].[Product集] (
    [ID] uniqueidentifier  NOT NULL,
    [Name] nvarchar(11)  NOT NULL,
    [Price] decimal(2,0)  NOT NULL,
    [Weight] decimal(2,0)  NOT NULL
);
GO

-- Creating table 'CustomerProduct'
CREATE TABLE [dbo].[CustomerProduct] (
    [Customer_ID] int  NOT NULL,
    [Product_ID] uniqueidentifier  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'Customer集'
ALTER TABLE [dbo].[Customer集]
ADD CONSTRAINT [PK_Customer集]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Order集'
ALTER TABLE [dbo].[Order集]
ADD CONSTRAINT [PK_Order集]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Product集'
ALTER TABLE [dbo].[Product集]
ADD CONSTRAINT [PK_Product集]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Customer_ID], [Product_ID] in table 'CustomerProduct'
ALTER TABLE [dbo].[CustomerProduct]
ADD CONSTRAINT [PK_CustomerProduct]
    PRIMARY KEY NONCLUSTERED ([Customer_ID], [Product_ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CustomerID] in table 'Order集'
ALTER TABLE [dbo].[Order集]
ADD CONSTRAINT [FK_CustomerOrder]
    FOREIGN KEY ([CustomerID])
    REFERENCES [dbo].[Customer集]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerOrder'
CREATE INDEX [IX_FK_CustomerOrder]
ON [dbo].[Order集]
    ([CustomerID]);
GO

-- Creating foreign key on [Customer_ID] in table 'CustomerProduct'
ALTER TABLE [dbo].[CustomerProduct]
ADD CONSTRAINT [FK_CustomerProduct_Customer]
    FOREIGN KEY ([Customer_ID])
    REFERENCES [dbo].[Customer集]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Product_ID] in table 'CustomerProduct'
ALTER TABLE [dbo].[CustomerProduct]
ADD CONSTRAINT [FK_CustomerProduct_Product]
    FOREIGN KEY ([Product_ID])
    REFERENCES [dbo].[Product集]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerProduct_Product'
CREATE INDEX [IX_FK_CustomerProduct_Product]
ON [dbo].[CustomerProduct]
    ([Product_ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------