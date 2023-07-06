USE [QuynhLinhDb]

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TienMat]') AND type in (N'U'))
DROP TABLE [dbo].[TienMat]


