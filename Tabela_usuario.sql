USE [RegChamadas]
GO

/****** Object:  Table [dbo].[Tb_usurios]    Script Date: 22/07/2016 11:18:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Tb_usurios](
	[Id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[Txt_CPF] [nchar](12) NOT NULL,
	[Txt_email] [nvarchar](50) NULL,
	[Txt_Senha] [char](8) NULL,
 CONSTRAINT [PK_Tb_usurios] PRIMARY KEY CLUSTERED 
(
	[Id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


