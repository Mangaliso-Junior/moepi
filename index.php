<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Moepi Publishing</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h2>Website Information</h2>
        <form id="websiteForm">
            <label for="website_name">Website Name:</label>
            <input type="text" id="website_name" name="website_name" readonly>

            <label for="visit_site">Visit Site:</label>
            <input type="text" id="visit_site" name="visit_site" readonly>

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" readonly>

            <label for="cpanel_url_button">cPanel URL:</label>
            <button id="cpanel_url_button" style="cursor: pointer;" onclick="openCpanel()" disabled>Click Here</button>
             <table>
			 <tr>
            <td><button type="button" id="moepiButton">Moepi Publishing</button></td>
            <td><button type="button" id="teketeButton">Tekete</button></td>
			</tr>
			<tr>
            <td><button type="button" id="clearButton">Clear</button></td>
            <td><button type="button" id="exitButton">Exit</button></td>
			</tr>
			</table>
        </form>
    </div>

    <script src="script.js"></script>
</body>
</html>


