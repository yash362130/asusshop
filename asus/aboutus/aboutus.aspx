<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="aboutus.aspx.cs" Inherits="AsusShop.aboutus.aboutmaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title> About Us </title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style>
        body {
            background-image: url('main_banner.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: 100% 100%;
        }

        .image-text {
            position: absolute;
            top: 30%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 50px;
            font-weight: bold;
            color: black;
            animation: slideIn 2s ease-in-out;
        }

        .image-text2 {
            position: absolute;
            top: 150%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 50px;
            font-weight: bold;
            color: black;
            animation: slideIn 2s ease-in-out;
        }

        .image-text3 {
            position: absolute;
            top: 330%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 50px;
            font-weight: bold;
            color: black;
            animation: slideIn 2s ease-in-out;
        }

        @keyframes slideIn {
            0% {
                opacity: 0;
                transform: translateX(-50%) translateY(-50%) scale(0.8);
            }

            100% {
                opacity: 1;
                transform: translateX(-50%) translateY(-50%) scale(1);
            }
        }

        .panel {
            display: flex;
            align-items: center;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            margin-top: 50px;
            width: 80%;
            margin-left: auto;
            margin-right: auto;
            margin-top: 300px;
            height: 550px;
            border-radius: 25px 25px;
            overflow: hidden;
        }

        .image {
            flex: 1;
            padding: 9px;
        }

            .image img {
                width: 600px;
                height: 500px;
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
                border-bottom-left-radius: 10px;
                border-bottom-right-radius: 10px;
            }

        .description {
            flex: 2;
            padding: 100px;
        }

            .description h2 {
                margin-top: 10px;
                font-size: 35px;
            }

            .description p {
                font-size: 20px;
                line-height: 1.5;
            }

        .panel-container {
            height: 550px;
            width: 1000px;
            display: flex;
            gap: 20px;
            margin: 50px auto;
        }

        .about panel {
            flex: 1;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            border-radius: 10px;
            overflow: hidden;
            box-sizing: border-box;
            transition: transform 0.2s ease-in-out;
            padding: 10px;
            margin: 10px;
        }

        .panel-content {
            margin-block-start: auto;
        }

        .about panel h2 {
            margin-top: 10px;
            font-size: 24px;
        }

        .about panel p {
            font-size: 18px;
            line-height: 1.5;
        }

        .founder1 {
            position:relative;
            margin-top: -40px;
            margin-left: 45px;
            height: 450px;
            width: 350px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
        }

        /* ... (your existing styles) ... */

        .service-panel-container {
            display: flex;
            position: relative;
            justify-content: space-between;
            margin-top: 550px;
            padding: 150px;
        }

        .service-panel {
            flex: 1;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            border-radius: 10px;
            overflow: hidden;
            box-sizing: border-box;
            transition: transform 0.2s ease-in-out;
            padding: 20px;
            text-align: center;
            margin: 20px;
        }

            .service-panel h2 {
                font-size: 24px;
                margin-top: 10px;
            }

            .service-panel p {
                font-size: 18px;
                line-height: 1.5;
            }

        @media (max-width: 768px) {
            .panel {
                flex-direction: column;
                height: auto;
            }

            .description {
                padding: 50px;
            }

            .image img {
                width: 100%;
                height: auto;
            }

            .panel-container {
                flex-direction: column;
                align-items: center;
            }
        }

        @media (max-width: 576px) {

            .panel-container {
                height: 300px;
                width: 300px;
            }

            .about panel {
                height: 400px;
                width: 300px;
            }
        }

        .panel-content h2 {
                 font-family: "Helvetica", Arial, sans-serif;
        }
    </style>
    
    <div class="image-text">
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</div>

<div class="image-text2">
    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
</div>

<div class="image-text3">
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
</div>


<div class="panel">
    <div class="image">
        <img src="about1.jpg" />
    </div>
    <div class="description">
        <h2>About Our Skill</h2>
        <p>
            E-commerce platforms provide businesses with digital storefronts where they can showcase their products or services.
        </p>
        <p>
            Consumers can browse through catalogues, compare options, and make purchases conveniently from their computers or mobile devices.
        </p>
        <p>
            E-commerce provides valuable data on customer preferences, behavior, and trends.
        </p>
    </div>
</div>



<div class="panel-container">
    <div class="about panel">
        <div class="panel-content" align="center">
            <img src="harsh.jpg" class="founder1" />
                <h2>Harsh Bhatt</h2>
        </div>
    </div>
    <div class="about panel">
        <div class="panel-content" align="center">
            <img src="yash.jpg" class="founder1" />
                <h2>Yash Maheta</h2>
        </div>
    </div>
</div>
<div class="service-panel-container">
    <div class="service-panel">
        <h2>Online Marketplaces</h2>
        <img src="image1.jpg" width="200px" height="200px" />
        <p>E-commerce services often involve the establishment and operation of online marketplaces. </p>
    </div>
    <div class="service-panel">
        <h2>Logistics and Fulfillment</h2>
        <img src="service2.jpg" width="200px" height="200px" />
        <p>Efficient logistics and order fulfillment are crucial components of e-commerce services. </p>
    </div>
    <div class="service-panel">
        <h2>Customer Support and Engagement</h2>
        <img src="service3.jpg" width="200px" height="200px" />
        <p>Beyond shopping, 24/7 e-commerce services encompass round-the-clock customer support. </p>
    </div>
</div>


</asp:Content>
