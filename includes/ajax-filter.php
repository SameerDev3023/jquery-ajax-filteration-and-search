<?php
include 'connection.php';

$doctortype = $_GET['DoctorType'];
$sql = "SELECT * FROM `doctor`";

if ($doctortype !== 'All') {
  $sql .= " WHERE doctor_type LIKE '%$doctortype%'";
}

$query = mysqli_query($conn, $sql);
echo'<table  class="table table-dark"border="1px" cellspacing="0px" cellpadding="10px">';
echo'<thead>
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>Email</th>
<th>Number</th>
<th>Doctor Type</th>
</tr>
</thead>';
if (mysqli_num_rows($query) > 0) {
  while ($data = mysqli_fetch_assoc($query)) {
    echo '<tbody>
      <tr>
        <td>' . $data['first_name'] . '</td>
        <td>' . $data['last_name'] . '</td>
        <td>' . $data['email'] . '</td>
        <td>' . $data['number'] . '</td>
        <td>' . $data['doctor_type'] . '</td>
      </tr>
    </tbody>';
  }
} else {
  echo $doctortype.'data not found';
}
echo '</table>';
?>
