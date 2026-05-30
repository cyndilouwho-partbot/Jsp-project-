<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
  <title>Alpha Beta Multiplication</title>
  <style>
    body { font-family: Arial, sans-serif; margin: 60px; background: #f0f4f8; }
    .box { background: #fff; padding: 30px; border-radius: 10px;
           max-width: 380px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); }
    input { width: 100%; padding: 8px; margin: 8px 0 16px;
            border: 1px solid #ccc; border-radius: 6px; }
    button { background: #3b82f6; color: #fff; padding: 10px 24px;
             border: none; border-radius: 6px; cursor: pointer; }
    .result { margin-top: 20px; padding: 14px;
              background: #ecfdf5; border-left: 4px solid #10b981;
              border-radius: 6px; }
  </style>
</head>
<body>
<div class="box">
  <h2>Alpha &times; Beta</h2>

  <form method="post">
    Alpha : <input type="number" name="alpha" step="any"
                   value="<%= request.getParameter("alpha") != null
                              ? request.getParameter("alpha") : "" %>"/>
    Beta  : <input type="number" name="beta"  step="any"
                   value="<%= request.getParameter("beta")  != null
                              ? request.getParameter("beta")  : "" %>"/>
    <button type="submit">Calculate</button>
  </form>

  <%-- Display result only when form is submitted --%>
  <%
    String aStr = request.getParameter("alpha");
    String bStr = request.getParameter("beta");

    if (aStr != null && bStr != null && !aStr.isEmpty() && !bStr.isEmpty()) {
        double alpha  = Double.parseDouble(aStr);
        double beta   = Double.parseDouble(bStr);
        double result = alpha * beta;
  %>
    <div class="result">
      <p><strong>Alpha  :</strong> <%= alpha  %></p>
      <p><strong>Beta   :</strong> <%= beta   %></p>
      <p><strong>Result :</strong> <%= alpha  %> &times; <%= beta %> = <strong><%= result %></strong></p>
    </div>
  <% } %>

</div>
</body>
</html>
