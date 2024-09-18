<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #d4aefb;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background-color: #f0e6ff;
            border-radius: 20px;
            padding: 20px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
        }
        .form-container h2 {
            color: #555;
        }
        .form-container input[type="text"] {
            width: 80%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            background-color: #e6e6e6;
        }
        .form-container button {
            padding: 10px 20px;
            margin: 5px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-weight: bold;
        }
        .btn {
            background-color: #c1a1fe;
            color: white;
        }
        .btn-cpanel {
            background-color: #8b74ed;
            color: white;
        }
        .btn-publisher {
            background-color: #ff7d94;
            color: white;
        }
        .btn-exit {
            background-color: #53da53;
            color: white;
        }
        .btn-clear {
            background-color: #80cef7;
            color: white;
        }
        .footer-buttons {
            display: flex;
            justify-content: center;
        }
    </style>
    </head>
    <body>
           <%
            String webname = (String)request.getAttribute("webname");
            String visit = (String)request.getAttribute("visit");
            String username = (String)request.getAttribute("username");
            String url = (String)request.getAttribute("url");
        %>
        <div class="form-container">
            <form action="PreServlet.do" method="POST" enctype="multipart/form-data">
                <table>
                    <tr>
                        <td>WEBSITE NAME :</td>
                        <td><input type="text" name="webname" value="${webname}"/></td>
                    </tr>
                    <tr>
                        <td>VISIT SITE :</td>
                        <td><input type="text" name="visit" value="${visit}"/></td>
                    </tr>
                    <tr>
                        <td>USERNAME :</td>
                        <td><input type="text" name="username" value="${username}"/></td>
                    </tr>
                    <tr>
                        <td>CPANEL URL :</td>
                        <td>
                            <button class="btn-cpanel" type="button" onclick="window.open('${url}')">Click Here</button>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <div class="footer-buttons">
                                <button type="button" class="btn btn-publisher" onclick="fillFields('Moepi Publishing', 'https://moepi.com', 'moepiUser')">Moepi Publishing</button>
                                <button type="button" class="btn" onclick="fillFields('Tekete', 'https://tekete.com', 'teketeUser')">Tekete</button>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="button" class="btn-clear" value="Clear" onclick="clearFields()"/></td>
                        <td><input type="button" class="btn-exit" value="Exit" onclick="exitPage()"/></td>
                    </tr>
                </table>
            </form>
        </div>
        <script>
            function clearFields() {
                document.getElementsByName('webname')[0].value = '';
                document.getElementsByName('visit')[0].value = '';
                document.getElementsByName('username')[0].value = '';
            }

            function fillFields(webname, visit, username) {
                document.getElementsByName('webname')[0].value = webname;
                document.getElementsByName('visit')[0].value = visit;
                document.getElementsByName('username')[0].value = username;
            }

            function exitPage() {
                window.location.href = "https://your-exit-url.com"; // Adjust the URL to your needs
            }
        </script>
    </body>
</html>
