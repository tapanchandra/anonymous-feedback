<html>
<head>

<style>
table#results {
    font-size:16px;
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
}

#results td, #results th {
    border: 1px solid #ddd;
    text-align: left;
    padding: 8px;
}

#results tr:nth-child(even){background-color: #f2f2f2}

#results th {
    padding-top: 11px;
    padding-bottom: 11px;
    background-color: #4CAF50;
    color: white;
}
.tabletest {
  margin-top: 20px;
  margin-bottom: 40px;
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
}

.tabletest,
.tabletest th,
.tabletest td {
  padding: 8px;
  text-align: left;
}

.tabletest2 {
  font-size:15px;
  margin-top: 20px;
  margin-bottom: 40px;
  border-collapse: collapse;
  width: 100%;
}

.tabletest2,
.tabletest2 th,
.tabletest2 td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

.tabletest3 {
  border: 1px solid #ddd;
  margin-top: 20px;
  margin-bottom: 40px;
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
}

.tabletest3,
.tabletest3 th,
.tabletest3 td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

.tabletest4 {
  margin-top: 20px;
  margin-bottom: 40px;
  border-collapse: collapse;
  width: 100%;
}

.tabletest4,
.tabletest4 th,
.tabletest4 td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

.tabletest4 tr:hover {
  background-color: #f5f5f5
}

.tabler2 {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19) !important;
  margin-top: 20px;
  margin-bottom: 40px;
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
}

.tabler2,
.tabler2 th,
.tabler2 td {
  border: none;
  text-align: left;
  padding: 8px;
}

.tabler2 tbody tr:nth-child(even) {
  background-color: #f2f2f2
}
.tabler {
  margin-top: 20px;
  margin-bottom: 40px;
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
}

.tabler,
.tabler th,
.tabler td {
  border: none;
  text-align: left;
  padding: 8px;
}

.tabler tbody tr:nth-child(even) {
  background-color: #f2f2f2
}
</style>

</head>
<body style="background-color:#FFFFFF">
    <h1 style="text-align:center">VOA Feedback Records</h1>
    <hr/>
    <table id = "results" style="width:100%">
        <tbody>
        <tr><th>Entries</th></tr>
        %for row in rows:
            <tr>
                <td> 
                    {{row}}
                </td>
            </tr>
        %end
            </tbody>
    </table>   
</body>
</html> 