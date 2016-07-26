USE [RegChamadas]
GO

/****** Object:  Table [dbo].[Tb_Cadastro]    Script Date: 22/07/2016 11:27:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Tb_Cadastro](
	[Id_Cadastro] [int] IDENTITY(1,1) NOT NULL,
	[Id_usuario] [int] NULL,
	[Txt_Nome] [nvarchar](50) NULL,
	[Num_Telefone] [nchar](15) NULL,
	[Int_Prioridade] [int] NULL,
	[Txt_Messagem] [text] NULL,
	[Dt_Data] [date] NULL,
 CONSTRAINT [PK_Tb_Cadastro] PRIMARY KEY CLUSTERED 
(
	[Id_Cadastro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[Tb_Cadastro] ADD  CONSTRAINT [DF_Tb_Cadastro_Dt_Data]  DEFAULT (getdate()) FOR [Dt_Data]
GO

ALTER TABLE [dbo].[Tb_Cadastro]  WITH CHECK ADD  CONSTRAINT [FK_Tb_Cadastro_Tb_Cadastro] FOREIGN KEY([Id_usuario])
REFERENCES [dbo].[Tb_usurios] ([Id_usuario])
GO

ALTER TABLE [dbo].[Tb_Cadastro] CHECK CONSTRAINT [FK_Tb_Cadastro_Tb_Cadastro]
GO


