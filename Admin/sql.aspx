<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="sql.aspx.cs" Inherits="NhaHang.Admin.sql" ValidateRequest="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="btnSQL" runat="server" Text="Button" OnClick="btnSQL_Click" />
    &nbsp;SQL:
    <asp:TextBox ID="txtSQL" runat="server" Height="148px" TextMode="MultiLine" Width="466px"></asp:TextBox>
    <br />
    <span class="style1">Xoa bang</span><br />
    IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N&#39;[dbo].[HinhQuangCao]&#39;)
    AND type in (N&#39;U&#39;)) DROP TABLE [dbo].[HinhQuangCao]<br />
    <br />
    <span class="style1">Tao bang</span><br />
    CREATE TABLE [dbo].[HinhQuangCao]( [hinhID] [int] IDENTITY(1,1) NOT NULL, [hinhName]
    [nvarchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL, [ghichu] [nvarchar](350)
    COLLATE SQL_Latin1_General_CP1_CI_AS NULL, [tieude] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS
    NULL, [hef] [nvarchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL, [loai] [nvarchar](50)
    COLLATE SQL_Latin1_General_CP1_CI_AS NULL, CONSTRAINT [PK_HinhQuangCao] PRIMARY
    KEY CLUSTERED ( [hinhID] ASC )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF,
    IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
    ) ON [PRIMARY]
    <br />
    <br />
    <span class="style1">Them cot</span>
    <br />
    ALTER TABLE hmenu ADD uutien varchar(2); ALTER TABLE hmenu ADD trangchu varchar(30);<br />
    <br />
    <span class="style1">Cap nhat toan bo khong co WHERE</span><br />
    UPDATE [[dbo].[TenBang] SET [SoLuong] = 0 GO 
</asp:Content>
