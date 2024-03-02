<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AeroSpace Log Book</title>
    <style>
        body {
            background-color: #f2f2f2;
            color: #333;
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
            color: #000080;
            text-align: center;
            background-color: #f0f8ff;
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
            color: #008000;
        }
        input[type="text"],
        input[type="number"],
        input[type="radio"] {
            padding: 8px;
            font-size: 16px;
            width: 250px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #000080;
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
        <form id="loginForm" action="formSubmit">
            <label for="partNo">Part Number:</label>
            <input type="text" id="partNo" name="partNo" pattern="^[A-Za-z0-9\-]*$"   title="Part number must be alphanumeric, can have hyphen, and less than 26 characters" maxlength="25" required placeholder="Part Number" required><br>
            
            <label for="lotNo">Lot Number:</label>
            <input type="number" id="lotNo" name="lotNo" min="0" max="999999999999" placeholder="Lot Number"  required><br>
            
            <label for="htLotNo">HT Lot Number:</label>
            <input type="text" id="htLotNo" name="htLotNo" pattern="^[A-Za-z0-9\-]*$" maxlength="25" placeholder="HT Lot Number" title="Part number must be alphanumeric, can have hyphen, and less than 26 characters" required><br>
            
            <label for="rmHeatNo">RM Heat Number:</label>
            <input type="text" id="rmHeatNo" name="rmHeatNo" pattern="^[A-Za-z0-9\-]*$"  maxlength="25" placeholder="RM Heat Number" title="Part number must be alphanumeric, can have hyphen, and less than 26 characters" required><br>
            
            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" name="quantity" min="0" max="99999" placeholder="Quantity" required><br>
            
            <label for="operatorName">Operator Name:</label>
            <input type="text" id="operatorName" name="operatorName" placeholder="Operator Name" required><br>
            
            <label for="supervisorName">Supervisor Name:</label>
            <input type="text" id="supervisorName" name="supervisorName" placeholder="Supervisor Name" required><br>
            
            <label for="sapTokenNo">SAP Token Number:</label>
            <input type="number" id="sapTokenNo" name="sapTokenNo" min="0" max="999999" placeholder="SAP Token Number" required><br>
            
            <label>Shift:</label>
            <input type="radio" id="shift1" name="shift" value="1" required>IST
            <input type="radio" id="shift2" name="shift" value="2">2ND
            <input type="radio" id="shift3" name="shift" value="3">3RD
            
            <input type="submit" value="Submit">
        </form>
        
        <script>
            document.getElementById("loginForm").onsubmit = function(event) {
                event.preventDefault();
                
                
                // Validate part number
                var partNo = document.getElementById("partNo").value;
                if (partNo.length > 25) {
                    alert("Part number should not be greater than 25 letters.");
                    return;
                }
                
                // Validate lot number
                var lotNo = document.getElementById("lotNo").value;
                if (lotNo.length > 12 || isNaN(lotNo)) {
                    alert("Lot number should be numeric and not greater than 12 numbers.");
                    return;
                }
                
                // Validate HT lot number
                var htLotNo = document.getElementById("htLotNo").value;
                if (htLotNo.length > 25) {
                    alert("HT Lot number should not be greater than 25 letters.");
                    return;
                }
                
                // Validate RM heat number
                var rmHeatNo = document.getElementById("rmHeatNo").value;
                if (rmHeatNo.length > 25) {
                    alert("RM Heat number should not be greater than 25 letters.");
                    return;
                }
                
                // Validate quantity
                var quantity = document.getElementById("quantity").value;
                if (quantity.length > 5 || isNaN(quantity)) {
                    alert("Quantity should be numeric and not greater than 5 numbers.");
                    return;
                }
                
                // Validate SAP token number
                var sapTokenNo = document.getElementById("sapTokenNo").value;
                if (sapTokenNo.length > 6 || isNaN(sapTokenNo)) {
                    alert("SAP Token number should be numeric and not greater than 6 numbers.");
                    return;
                }
                
                if (!shift1 && !shift2 && !shift3) {
                    alert("Please select a shift.");
                    return;
                }
                
                this.submit();
            };
        </script>
    </div>
</body>
</html>
