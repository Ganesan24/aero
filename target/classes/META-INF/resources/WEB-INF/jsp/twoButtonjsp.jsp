<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AeroSpace Log Book</title>
    <style>
        body {
            background-color: #f0f0f0; /* Light gray background */
            color: #333; /* Dark gray text */
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 100px; /* Adjust vertical alignment */
        }
        h1 {
            color: #000080; /* Navy blue heading */
            margin-bottom: 30px; /* Add space below heading */
        }
        .btn {
            display: inline-block;
            padding: 20px 40px;
            margin: 20px;
            font-size: 20px;
            background-color: #000080; /* Navy blue button */
            color: white;
            text-decoration: none;
            border: none;
            cursor: pointer;
            border-radius: 10px;
            transition: background-color 0.3s; /* Smooth color transition */
        }
        .btn:hover {
            background-color: #0000A0; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <h1>AeroSpace Log Book</h1>
    
    <a href="dataEntry" class="btn">Data Entry Form</a>
    <a href="searchData" class="btn">View Data History</a>
</body>
</html>
