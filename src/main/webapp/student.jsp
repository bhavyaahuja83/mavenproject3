<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String name = request.getParameter("sname");
    String roll = request.getParameter("roll");
    String email = request.getParameter("email");
    String course = request.getParameter("course");
    String gender = request.getParameter("gender");
    boolean submitted = "POST".equalsIgnoreCase(request.getMethod());
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Student Information Form</title>
        <style>
            :root {
                color-scheme: light;
                font-family: Arial, sans-serif;
                background: #eef3f8;
                color: #1f2937;
            }
            body {
                margin: 0;
                min-height: 100vh;
                display: grid;
                place-items: center;
                padding: 24px;
                box-sizing: border-box;
            }
            main {
                width: min(100%, 720px);
                background: #ffffff;
                border: 1px solid #d8e1ea;
                border-radius: 10px;
                box-shadow: 0 12px 30px rgba(31, 41, 55, 0.1);
                padding: 32px;
                box-sizing: border-box;
            }
            h1, h2 {
                margin-top: 0;
                color: #123b5d;
            }
            form {
                display: grid;
                gap: 16px;
            }
            label {
                display: grid;
                gap: 6px;
                font-weight: 600;
            }
            input, select {
                box-sizing: border-box;
                width: 100%;
                padding: 11px 12px;
                border: 1px solid #b9c7d6;
                border-radius: 5px;
                font: inherit;
            }
            input:focus, select:focus {
                outline: 2px solid #78a9d1;
                border-color: #246b9f;
            }
            .gender-options {
                display: flex;
                gap: 18px;
                font-weight: 400;
            }
            .gender-options label {
                display: flex;
                align-items: center;
                gap: 6px;
            }
            .gender-options input {
                width: auto;
            }
            button {
                border: 0;
                border-radius: 5px;
                padding: 12px 18px;
                background: #246b9f;
                color: #ffffff;
                font: inherit;
                font-weight: 700;
                cursor: pointer;
            }
            button:hover {
                background: #1b527c;
            }
            .details {
                margin-top: 28px;
                padding-top: 24px;
                border-top: 1px solid #d8e1ea;
            }
            .details p {
                margin: 8px 0;
            }
            @media (max-width: 520px) {
                main {
                    padding: 24px;
                }
            }
        </style>
    </head>
    <body>
        <main>
            <h1>Student Information Form</h1>
            <form method="post" action="student.jsp">
                <label for="sname">Student Name
                    <input id="sname" type="text" name="sname" value="<%= name == null ? "" : name %>" required>
                </label>
                <label for="roll">Roll Number
                    <input id="roll" type="text" name="roll" value="<%= roll == null ? "" : roll %>" required>
                </label>
                <label for="email">Email
                    <input id="email" type="email" name="email" value="<%= email == null ? "" : email %>" required>
                </label>
                <label for="course">Course
                    <select id="course" name="course" required>
                        <option value="">Select a course</option>
                        <option value="BCA">BCA</option>
                        <option value="MCA">MCA</option>
                        <option value="B.Tech">B.Tech</option>
                        <option value="M.Tech">M.Tech</option>
                        <option value="B.Sc">B.Sc</option>
                        <option value="M.Sc">M.Sc</option>
                        <option value="BBA">BBA</option>
                        <option value="MBA">MBA</option>
                    </select>
                </label>
                <fieldset>
                    <legend>Gender</legend>
                    <div class="gender-options">
                        <label><input type="radio" name="gender" value="Male" required> Male</label>
                        <label><input type="radio" name="gender" value="Female"> Female</label>
                        <label><input type="radio" name="gender" value="Others"> Others</label>
                    </div>
                </fieldset>
                <button type="submit">Submit</button>
            </form>
            <% if (submitted) { %>
                <section class="details">
                    <h2>Student Details</h2>
                    <% out.println("<p><strong>Name:</strong> " + name + "</p>"); %>
                    <p><strong>Roll Number:</strong> <%= roll %></p>
                    <p><strong>Email:</strong> <%= email %></p>
                    <p><strong>Course:</strong> <%= course %></p>
                    <p><strong>Gender:</strong> <%= gender %></p>
                </section>
            <% } %>
        </main>
    </body>
</html>
