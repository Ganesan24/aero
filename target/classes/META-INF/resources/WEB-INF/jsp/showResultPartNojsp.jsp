<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding: 20px;
        }
        .table-container {
            margin-top: 20px;
        }
        .table-container table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 5px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .table-container th, .table-container td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            white-space: nowrap; /* Prevent values from going to the next line */
        }
        .table-container th {
            background-color: #f0f0f0;
        }
        .table-container tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .back-btn {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col">
                <h1>Search Results</h1>
                <div class="table-container">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Part Number</th>
                                <th>Lot Number</th>
                                <th>HT Lot Number</th>
                                <th>RM Heat Number</th>
                                <th>Quantity</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>${partNumber}</td>
                                <td>${lotNumber}</td>
                                <td>${htLotNumber}</td>
                                <td>${rmHeatNumber}</td>
                                <td>${quantity}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col">
                <div class="table-container">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Operator Name</th>
                                <th>Supervisor Name</th>
                                <th>SAP Token No</th>
                                <th>Shift</th>
                                <th>Date of Entry</th>
                                <th>Time</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>${operatorName}</td>
                                <td>${supervisorName}</td>
                                <td>${sapTokenNo}</td>
                                <td>${shift}</td>
                                <td>${dateOfEntry}</td>
                                <td>${time}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <a href="javascript:history.back()" class="btn btn-primary back-btn">Back</a>
    </div>
</body>
</html>
