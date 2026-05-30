<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
  <title>Student Details</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 60px; background: #f0f4f8; }
    .box { background: #fff; padding: 30px; border-radius: 10px;
           max-width: 380px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
    input, select { width: 100%; padding: 8px; margin: 8px 0 16px;
                    border: 1px solid #ccc; border-radius: 6px; }
    button { background: #6366f1; color: #fff; padding: 10px 24px;
             border: none; border-radius: 6px; cursor: pointer; }
    .error { color: red; font-size: 13px; margin-top: 6px; }
  </style>
</head>
<body>
<div class="box">
  <h2>Student Registration</h2>

  <%-- Show validation error if redirected back with error flag --%>
  <% if ("empty".equals(request.getParameter("err"))) { %>
    <p class="error">&#9888; Both fields are required. Please fill in all details.</p>
  <% } %>

  <form method="post" action="set_cookie.jsp">
    Student ID  :
    <input type="text" name="studentID"   placeholder="e.g. STU2026001"/>

    Programme   :
    <select name="programme">
      <option value="">-- Select Programme --</option>
      <option>BCA</option>
      <option>MCA</option>
      <option>B.Sc CS</option>
      <option>M.Sc CS</option>
    </select>

    <button type="submit">Submit &amp; Save Cookie</button>
  </form>
</div>
</body>
</html>
