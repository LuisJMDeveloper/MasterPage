USE [SegurosBD]
GO
/****** Object:  Table [dbo].[tblUSER]    Script Date: 13/03/2023 18:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUSER](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[deleteUSER]    Script Date: 13/03/2023 18:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[deleteUSER]
@email varchar(50),
@password varchar(50)
as
	DELETE FROM tblUSER where email = @email and password = @password  
GO
/****** Object:  StoredProcedure [dbo].[getUSer]    Script Date: 13/03/2023 18:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getUSer]
as
	SELECT * FROM tblUSER
GO
/****** Object:  StoredProcedure [dbo].[saveUSER]    Script Date: 13/03/2023 18:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[saveUSER]
@name varchar(50),
@lastname varchar(50),
@email varchar(50),
@password varchar(50)
as
	insert into tblUSER(name, lastname, email, password)
	values(@name, @lastname, @email, @password)
GO
/****** Object:  StoredProcedure [dbo].[updateUSER]    Script Date: 13/03/2023 18:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROC [dbo].[updateUSER]
@name varchar(50),
@lastname varchar(50),
@email varchar(50),
@password varchar(50)
as
	update tblUSER set name=@name, lastname=@lastname, email=@email where email=@email
GO
/****** Object:  StoredProcedure [dbo].[Validar]    Script Date: 13/03/2023 18:36:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Validar]
@email varchar(50),
@password varchar(50)
as
	select * from tblUSER where email=@email and password = @password
GO
