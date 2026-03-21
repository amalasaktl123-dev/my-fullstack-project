<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Insert Sales Invoice</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #74ABE2, #5563DE);
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            background: #fff;
            width: 60%;
            margin: 60px auto;
            border-radius: 12px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.2);
            padding: 30px 40px;
            animation: fadeIn 0.8s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            background: linear-gradient(90deg, #6a11cb, #2575fc);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            font-size: 26px;
            margin-bottom: 25px;
        }

        label {
            font-weight: 600;
            display: block;
            margin-top: 15px;
        }

        input[type="text"], input[type="date"], input[type="number"], textarea {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
            margin-top: 5px;
            transition: all 0.3s ease;
        }

        input:focus, textarea:focus {
            outline: none;
            border-color: #2575fc;
            box-shadow: 0 0 6px rgba(37,117,252,0.4);
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            background-color: #f8f9fa;
            border-radius: 10px;
            overflow: hidden;
        }

        th {
            background-color: #2575fc;
            color: white;
            padding: 10px;
            font-size: 15px;
        }

        td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }

        input[type="submit"], input[type="reset"] {
            background: linear-gradient(90deg, #6a11cb, #2575fc);
            color: white;
            border: none;
            border-radius: 8px;
            padding: 10px 25px;
            margin-top: 25px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background: linear-gradient(90deg, #2575fc, #6a11cb);
            transform: translateY(-2px);
        }

        .btn-group {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>🧾 Insert Sales Invoice</h2>

    <form action="/saveInvoice" method="post">
        <label for="date">Date:</label>
        <input type="date" name="date" id="date" required>

        <label for="custName">Customer Name:</label>
        <input type="text" name="custName" id="custName" placeholder="Enter customer name" required>

        <label for="address">Address:</label>
        <textarea name="address" id="address" rows="3" placeholder="Enter address" required></textarea>

        <h3 style="margin-top:25px; text-align:center; color:#2575fc;">Item Details</h3>

		<label for="custName">Item Name:</label>
		<input type="text" name="itemname" id="itemname" placeholder="Enter item name" required>

		<label for="custName">Item Rate:</label>
	    <input type="text" name="itemrate" id="itemrate" placeholder="Enter item name" required>

        <div class="btn-group">
            <input type="submit" value="💾 Save Invoice">
            <input type="reset" value="❌ Clear Form">
        </div>
    </form>
</div>
</body>
</html>
