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
        <span class="required">* </span><asp:RequiredFieldValidator ID="RequiredValName" runat="server" ErrorMessage="Name cannot be blank!" ControlToValidate="TxtName"></asp:RequiredFieldValidator>
  
    &nbsp;<p>
        Email:</p>
        <div class="email"><asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox></div>
        <span class="required">*</span><asp:RegularExpressionValidator ID="RequiredValEmail" runat="server" ErrorMessage="Invalid Email Address" ControlToValidate="TxtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValid" runat="server" ErrorMessage="Email cannot be blank!" ControlToValidate="TxtEmail"></asp:RequiredFieldValidator>
    <p>
        Subject:</p>
        <div class="subject"><asp:TextBox ID="TxtSubject" runat="server"></asp:TextBox></div>
        <span class="required">*</span><asp:RequiredFieldValidator ID="RequiredValSubject" runat="server" ErrorMessage="Subject cannot be blank!" ControlToValidate="TxtSubject"></asp:RequiredFieldValidator>
    
    &nbsp;<p>
        Message:</p>
        <div class="message"><asp:TextBox ID="TxtMessage" runat="server" TextMode="MultiLine"></asp:TextBox></div>
         <span class="required">*</span><asp:RequiredFieldValidator ID="RequiredValMessage" runat="server" ErrorMessage="Message cannot be blank!" ControlToValidate="TxtSubject"></asp:RequiredFieldValidator>
  
   
    &nbsp;<p>

        &nbsp;</p>
       <div class="sendbttn"><asp:Button ID="BtnSendEmail" runat="server" OnClick="Button1_Click" Text="Send"/></div>
    
    
    <br />

    <br />

    <asp:Literal ID="litResult" runat="server"></asp:Literal> 

    <br />

    <h1>You can find us at the given location</h1>
     <div id="map"></div>
     <script>
        function initMap() {
        var myLatLng = {lat: 4.885478, lng: 114.931605};

        var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 18,
        center: myLatLng
  });

        var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        title: 'Hello World!'
  });
     }
        </script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBCbm7BnS80K4OBIUG4SZGN0JLL8yWCpUQ&callback=initMap"
    async defer></script>
    <br />
</asp:Content>



