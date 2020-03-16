<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exterior.aspx.cs" Inherits="sy2_Interior" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>运用外部样式表</title>
    <link href="../Styles/Exterior.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <p>调用Exterior.css中基于元素选择器的样式</p>
        <p title="attr Test">调用Exterior.css中基于[attr~=val]属性选择器的样式</p>
        <p title="attributeTest">调用Exterior.css中基于[sttr*=val]属性选择器的样式</p>
        <p class="classTest">调用Exterior.css中基于类选择器的样式</p>
        <div id="divTest">调用Exterior.css中基于id选择器的样式</div>
    </form>
</body>
</html>
