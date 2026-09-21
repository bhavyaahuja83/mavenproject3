<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String name = request.getParameter("sname");
    String roll = request.getParameter("roll");
    String course = request.getParameter("course");
    String marks = request.getParameter("marks");
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
            input {
                box-sizing: border-box;
                width: 100%;
                padding: 11px 12px;
                border: 1px solid #b9c7d6;
                border-radius: 5px;
                font: inherit;
            }
            input:focus {
                outline: 2px solid #78a9d1;
                border-color: #246b9f;
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
                <label for="course">Course
                    <input id="course" type="text" name="course" value="<%= course == null ? "" : course %>" required>
                </label>
                <label for="marks">Marks
                    <input id="marks" type="number" name="marks" min="0" max="100" value="<%= marks == null ? "" : marks %>" required>
                </label>
                <button type="submit">Submit</button>
            </form>
            <% if (submitted) { %>
                <section class="details">
                    <h2>Student Details</h2>
                    <% out.println("<p><strong>Name:</strong> " + name + "</p>"); %>
                    <p><strong>Roll Number:</strong> <%= roll %></p>
                    <p><strong>Course:</strong> <%= course %></p>
                    <p><strong>Marks:</strong> <%= marks %></p>
                </section>
            <% } %>
        </main>
    </body>
</html>
