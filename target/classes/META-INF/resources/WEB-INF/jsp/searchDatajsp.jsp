<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Data</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f0f0f0;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 80%;
            margin-bottom: 20px;
        }
        .search-section {
            flex: 1;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 0 10px; /* Adjusted margin for spacing */
            max-width: 600px;
        }
        .search-input {
            margin-bottom: 10px;
            width: calc(100% - 40px);
            padding: 8px;
            font-size: 16px;
        }
        .search-btn {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #000080;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .back-btn {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #ccc;
            color: black;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-left: auto; /* Aligns button to the right */
        }
        h1 {
            text-align: center;
            color: #000080;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <h1>AeroSpace Department</h1>
    <div class="container">
        <div class="search-section">
            <h2>Find Record Using Part Number</h2>
            <form action="dataByPartNo" method="post">
                <input type="text" name="partNumber" class="search-input" placeholder="Enter Part Number" required pattern="^[A-Za-z0-9\-]*$"  
                title="Part number must be alphanumeric, can have hyphen, and less than 26 characters" required>
                <button type="submit" class="search-btn">Search</button>
                <input type="hidden" name="action" value="twoButton">
            </form>
        </div>
        <div class="search-section">
            <h2>Find Record By Lot Number</h2>
            <form action="dataByLotNo" method="post">
                <input type="text" name="lotNumber" class="search-input" placeholder="Enter Lot Number" required pattern="[0-9]{1,12}" title="Lot number must be numeric and less than 13 characters" required>
                <button type="submit" class="search-btn">Search</button>
                <input type="hidden" name="action" value="twoButton">
            </form>
        </div>
    </div>
    <form action="twoButton">
        <button type="submit" class="back-btn">Back</button>
    </form>
</body>
</html>
