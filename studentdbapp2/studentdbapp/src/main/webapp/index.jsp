<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Student App</title>
</head>
<body>
  <h2>Student App</h2>

<button type="button" id="btnJs">View</button>
<button type="button" id="btnJsadd">Add</button>

  <script>
    document.getElementById('btnJs').addEventListener('click', function () {
      window.location.href = '<%= request.getContextPath() %>/students';
    });

    document.getElementById('btnJsadd').addEventListener('click', function () {
      window.location.href = '<%= request.getContextPath() %>/addStudent.jsp';
    });
  </script>
</body>
</html>
