<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ChallengeFirstPapaBobsPizza.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="font-family: Arial, Helvetica, sans-serif">
        <div style="background:#f0f8ff;border-bottom:groove">


            <asp:Image ID="Image1" runat="server" ImageUrl="PapaBob.png" />
            <h1 style="text-align:center; font-family: Arial, Helvetica, sans-serif;">Papa Bob's Pizza and Software</h1>


        </div>
        <div style="font-family: 'Times New Roman', Times, serif">
        <asp:RadioButton ID="radSizeBaby" runat="server" Checked="True" GroupName="sizes" Text="Baby Bob Size  (10&quot;) - $10" />
        <br />
        <asp:RadioButton ID="radSizeMama" runat="server" GroupName="sizes" Text="Mama Bob Size (13&quot;) - $13" />
        <br />
        <asp:RadioButton ID="radSizePapa" runat="server" GroupName="sizes" Text="Papa Bob Size (16&quot;) - $16" />
        <br />
        <br />
        <asp:RadioButton ID="radCrustThin" runat="server" Checked="True" GroupName="crusts" Text="Thin Crust" />
        <br />
        <asp:RadioButton ID="radCrustThick" runat="server" GroupName="crusts" Text="Deep Dish (+$2)" />
        <br />
        <br />
        <asp:CheckBox ID="chkPepperoni" runat="server" Text="Pepperoni (+$1.50)" />
        <br />
        <asp:CheckBox ID="chkOnions" runat="server" Text="Onions (+$0.75)" />
        <br />
        <asp:CheckBox ID="chkGreenPeppers" runat="server" Text="Green Peppers (+$0.50)" />
        <br />
        <asp:CheckBox ID="chkRedPeppers" runat="server" Text="Red Peppers (+$0.75)" />
        <br />
        <asp:CheckBox ID="chkAnchovies" runat="server" Text="Anchovies (+$2)" />
        <br />
        <br />
        </div>
        <div style="float:left; font-family: Arial, Helvetica, sans-serif; font-weight: bold; font-size: x-large;">Papa Bob&#39;s&nbsp; </div><div style="float:left; font-family: Arial, Helvetica, sans-serif; color: #FF0000; font-weight: bold; font-size: x-large;">Special Deal</div>
        <br />
        <br />
       <div style="font-family: Georgia, 'Times New Roman', Times, serif">
           Save $2.00 when you add Pepperoni, Green Peppers and Anchovies OR Pepperoni, Red Peppers and Onions to your pizza.



       </div>
        <br />
        <asp:Button ID="btnPurchase" runat="server" OnClick="btnPurchase_Click" Text="Purchase" />
        <br />
        <br />
        Total:&nbsp; <asp:Label ID="lblTotal" runat="server" Text="$0.00"></asp:Label>
        <br />
        <br />
        Sorry, at this thime you can only order one pizza online, and pick-up only ...we need a better website. And a driver. Who owns a car.<br />
        <br />
        <br />
    </form>
</body>
</html>
