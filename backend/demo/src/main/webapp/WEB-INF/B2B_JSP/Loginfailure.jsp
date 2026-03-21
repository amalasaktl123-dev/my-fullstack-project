<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Failed</title>
    <style>
        body {
            background-color: #ffffff; /* white background */
            color: #000000; /* black text */
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .message-box {
            border: 1px solid #ccc;
            padding: 40px 60px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            background-color: #ffffff;
        }
        h2 {
            font-size: 28px;
            margin-bottom: 15px;
        }
        p {
            font-size: 16px;
            margin-bottom: 25px;
        }
        a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="message-box">
    <h2>Login Failed</h2>
    <p>Your username or password is incorrect.</p>
	<form action="/loginfailure" method="get">
	    <button type="submit">Go back to Login</button>
	</form>
</div>

</body>
</html>
