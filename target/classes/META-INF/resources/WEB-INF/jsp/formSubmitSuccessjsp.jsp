<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Success Message</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
        }
        .container {
            text-align: center;
        }
        .success-msg {
            font-size: 24px;
            color: #008000; /* Green color for success message */
            margin-bottom: 20px;
        }
        .back-btn {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #ccc;
            color: black;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none; /* Remove default underline */
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="success-msg">Form Submitted Successfully</div>
        <a href="twoButton" class="back-btn">Back</a>
    </div>
</body>
</html>
