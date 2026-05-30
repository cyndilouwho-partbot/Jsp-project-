<%@ page contentType="text/html; charset=UTF-8" %>
<%
  String studentID  = request.getParameter("studentID");
  String programme  = request.getParameter("programme");

  /* ── Validation: both fields must be non-empty ── */
  if (studentID == null || studentID.trim().isEmpty()
   || programme == null || programme.trim().isEmpty()) {

      // Redirect back to form with error flag
      response.sendRedirect("student_form.jsp?err=empty");

  } else {
      /* ── Create Cookie 1: Student ID ── */
      Cookie cidCookie = new Cookie("studentID", studentID.trim());
      cidCookie.setMaxAge(60 * 60);   // expires in 1 hour
      response.addCookie(cidCookie);

      /* ── Create Cookie 2: Programme ── */
      Cookie progCookie = new Cookie("programme", programme.trim());
      progCookie.setMaxAge(60 * 60);  // expires in 1 hour
      response.addCookie(progCookie);
%>
<html>
<head>
  <title>Cookie Set</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 60px; background: #f0f4f8; }
    .box { background: #fff; padding: 30px; border-radius: 10px;
           max-width: 380px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
    .success { padding: 14px; background: #ecfdf5;
               border-left: 4px solid #10b981; border-radius: 6px; }
    a { display: inline-block; margin-top: 16px; color: #6366f1; }
  </style>
</head>
<body>
<div class="box">
  <h2>&#10003; Cookies Created Successfully</h2>
  <div class="success">
    <p><strong>Student ID :</strong> <%= studentID %></p>
    <p><strong>Programme  :</strong> <%= programme %></p>
    <p><em>Two cookies have been saved in your browser (valid for 1 hour).</em></p>
  </div>
  <a href="student_form.jsp">&larr; Go Back</a>
</div>
</body>
</html>
<% } %>
