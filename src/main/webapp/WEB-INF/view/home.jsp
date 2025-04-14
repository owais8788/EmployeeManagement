<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome Page</title>
    <style>
        body {
            margin: 0;
            background-color: #e8f5e9;
            font-family: Arial, sans-serif;
            color: #2e7d32;
        }

        /* Header Styling */
        header {
            background-color: #4CAF50;
            color: white;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        header h1 {
            margin: 0;
            font-size: 1.8em;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin-left: 20px;
            font-size: 1em;
        }

        nav a:hover {
            text-decoration: underline;
        }

        /* Main Content */
        .welcome-box {
            background-color: #ffffff;
            border: 2px solid #4CAF50;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            margin: 50px auto;
            padding: 30px 50px;
            max-width: 90%;
            text-align: center;
        }

        h2 {
            color: #388E3C;
            margin-top: 40px;
        }

        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 12px 15px;
            border: 1px solid #4CAF50;
            text-align: center;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f1f8e9;
        }

        tr:hover {
            background-color: #c8e6c9;
        }

        .highlight {
            font-weight: bold;
            background-color: #a5d6a7 !important;
        }

        .button {
            margin-top: 20px;
            padding: 10px 25px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1em;
            cursor: pointer;
        }

        .button:hover {
            background-color: #388E3C;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        <h1>Employee Portal</h1>                                
        <nav>
            <a href="/home">Home</a>
            <a href="/register">Add Employee</a>
        </nav>
    </header>

    <!-- Main Content -->
    <div class="welcome-box">
        <h1>Welcome</h1>
        <p><strong>Welcome, John!</strong></p>

        <h2>Employee Records</h2>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Date of Birth</th>
                    <th>Gender</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>State</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Alice Smith</td>
                    <td>1990-04-12</td>
                    <td>Female</td>
                    <td>123 Maple Street</td>
                    <td>New York</td>
                    <td>NY</td>
                </tr>
                <tr>
                    <td>Bob Johnson</td>
                    <td>1985-07-23</td>
                    <td>Male</td>
                    <td>456 Oak Avenue</td>
                    <td>Chicago</td>
                    <td>IL</td>
                </tr>
                <tr>
                    <td>Charlie Lee</td>
                    <td>1992-11-02</td>
                    <td>Male</td>
                    <td>789 Pine Road</td>
                    <td>Los Angeles</td>
                    <td>CA</td>
                </tr>
                <tr>
                    <td>John Doe</td>
                    <td>1988-05-15</td>
                    <td>Male</td>
                    <td>101 Green Street</td>
                    <td>Houston</td>
                    <td>TX</td>
                </tr>
                <tr>
                    <td>Emma Brown</td>
                    <td>1995-03-30</td>
                    <td>Female</td>
                    <td>321 Cedar Lane</td>
                    <td>Miami</td>
                    <td>FL</td>
                </tr>
            </tbody>
        </table>

        <button class="button">Continue</button>
    </div>

</body>
</html>
