
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AeroSpace Log Book</title>
    <style>
        body {
            background-color: #f2f2f2; /* Light gray background */
            color: #333; /* Dark gray text */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #000080; /* Blue color */
            text-align: center;
            background-color: #f0f8ff; /* Alice blue background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        form {
            margin-top: 20px;
            text-align: center;
        }
        label {
            display: block;
            margin-bottom: 10px;
            color: #008000; /* Green color */
        }
        input[type="text"],
        input[type="password"] {
            padding: 8px;
            font-size: 16px;
            width: 250px;
            border-radius: 5px;
            border: 1px solid #ccc; /* Light gray border */
        }
        input[type="submit"] {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #000080; /* Blue color */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .error {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>AeroSpace Log Book</h1>
        <form id="loginForm" >
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            
            <input type="submit" value="Login">
        </form>
        
        <script>
            document.getElementById("loginForm").onsubmit = function(event) {
                event.preventDefault();
                var username = document.getElementById("username").value;
                var password = document.getElementById("password").value;
                
                if (username !== "aerospace" || password !== "123") {
                    alert("Incorrect username or password. Please try again.");
                } else {
                    
                    window.location.href = "twoButton"; // Replace "next-page.jsp" with the actual URL of the next page
                    // <form action="checkPagejsp" id="loginForm">
                    //     <input type="submit" value="Login"></input>
                    //     </form>
                }
            };
        </script>
    </div>
</body>
</html>
