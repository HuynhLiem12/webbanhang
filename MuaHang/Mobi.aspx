<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mobi.aspx.cs" Inherits="NhaHang.MuaHang.Mobi" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>Welcome to the Page</title>
    <style>
        h1
        {
            text-align: center;
            color: Maroon;
            background-color: gray;
            margin-bottom: 0;
        }
        
        #menu
        {
            color: #eeaabb;
            background-color: gray;
            width: 10%;
            height: 80%;
            float: left;
        }
        
        #content
        {
            background-color: whitesmoke;
            height: 80%;
        }
        
        #footer
        {
            color: Maroon;
            text-align: center;
            background-color: Gray;
        }
        
        li
        {
            margin-bottom: 0;
        }
        
        
        .style1
        {
            height: 26px;
        }
        
        
        #Select3
        {
            width: 135px;
        }
        #btnsave
        {
            width: 69px;
            height: 26px;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function Submit1_onclick() {
            document.getElementById('Text1').value = document.getElementById('Select4').value;
        }

// ]]>
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <header>MobiPhone</header>
    <section>
    <article>
        Firstname
        <input id="Text1" type="text" maxlength="20" runat="server" name="txtfname" style="width: 135px;
            height: 22px" />
        Lastname
        <input id="Text2" type="text" maxlength="20" runat="server" style="width: 135px;
            height: 22px" />
        Qualification(U.G)
        <select id="Select4" name="D1" runat="server" style="width: 135px; height: 22px">
            <option>B.SC(Physics)</option>
            <option>B.SC(Mathematics)</option>
            <option>B.SC(Chemistry)</option>
            <option>B.Tech</option>
            <option>B.E</option>
        </select>
        Qualification(P.G)
        <select id="Select1" name="D1" runat="server" style="width: 135px; height: 22px">
            <option>M.SC(Physics)</option>
            <option>M.SC(Mathematics)</option>
            <option>M.SC(Chemistry)</option>
            <option>M.Tech</option>
            <option>M.E</option>
        </select>
        Functionality
        <select id="Select2" name="D1" runat="server" style="width: 135px; height: 22px">
            <option>Automobile</option>
            <option>Marine</option>
            <option>Thermal</option>
            <option>Civil Architecture</option>
            <option>I.T Technology</option>
        </select>
        Functional Area
        <select id="Select3" name="D1" runat="server">
            <option>Administrator</option>
            <option>Manager</option>
            <option>Asst.Manager</option>
            <option>Architect</option>
            <option>Technical</option>
        </select>
        <input id="Submit1" type="submit" name="btnsave" value="Save" style="width: 69px;
            height: 26px" runat="server" onclick="return Submit1_onclick()" />
        <input id="Reset1" type="reset" value="Clear" runat="server" style="width: 69px;
            height: 26px" runat="server" />
    </article>
    </section>
    <footer>copy right MACBRAIN</footer>
    </form>
</body>
</html>
