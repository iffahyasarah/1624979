<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CO5027.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Index.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        Name:</p>
       <div class="name"><asp:TextBox ID="TxtName" runat="server"></asp:TextBox></div>
        <span class="required">*</span>
    <p>
        Email:</p>
        <div class="email"><asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox></div>
        <span class="required">*</span>

    <p>
        Subject:</p>
        <div class="subject"><asp:TextBox ID="TxtSubject" runat="server"></asp:TextBox></div>
        <span class="required">*</span>
    <p>
        Message:</p>
        <div class="message"><asp:TextBox ID="TxtMessage" runat="server" TextMode="MultiLine"></asp:TextBox></div>
         <span class="required">*</span>
   
    <p>

        &nbsp;</p>
       <div class="sendbttn"><asp:Button ID="BtnSendEmail" runat="server" OnClick="Button1_Click" Text="Send"/></div>
    
    
    <br />

    <br />

    <asp:Literal ID="litResult" runat="server"></asp:Literal> 

    <br />

 <script src='https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyDIAu9uQdfAoyNhrXYdXaR8o_G9eZSaG1E'></script><div style='overflow:hidden;height:400px;width:520px;'><div id='gmap_canvas' style='height:400px;width:520px;'></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div> <a href='http://maps-generator.com/'>google maps iframe embed</a> <script type='text/javascript' src='https://embedmaps.com/google-maps-authorization/script.js?id=a4437e497b7ab4a67da119075c7979513e5e5be4'></script><script type='text/javascript'>function init_map(){var myOptions = {zoom:12,center:new google.maps.LatLng(4.8811621,114.95085340000003),mapTypeId: google.maps.MapTypeId.ROADMAP};map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions);marker = new google.maps.Marker({map: map,position: new google.maps.LatLng(4.8811621,114.95085340000003)});infowindow = new google.maps.InfoWindow({content:'<strong>Arabesque Fragrance is here!</strong><br>Jalan Batu Satu<br> Bandar Seri Begawan<br>'});google.maps.event.addListener(marker, 'click', function(){infowindow.open(map,marker);});infowindow.open(map,marker);}google.maps.event.addDomListener(window, 'load', init_map);</script>

</asp:Content>



