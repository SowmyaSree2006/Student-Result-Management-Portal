<?php
session_start();

if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
    header("location: index.php");
    exit;
}
include "includes/connection.php";
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="css/dashboard.css?v=<?php echo time(); ?>">
    <style>
      .dashboard-container {
          display: flex;
          flex-direction: column;
          align-items: center;
          gap: 40px;
          padding: 60px 80px;
      }

      .dashboard-row {
          display: flex;
          justify-content: center;
          gap: 40px;
          flex-wrap: wrap;
      }
    </style>
  </head>
  <body>
    <?php include "nav.php"; ?>
    <h1>Welcome, Admin!</h1>

    <div class="dashboard-container">

      <!-- Top 3 cards -->
      <div class="dashboard-row">
        <a href="manage-students.php" style="text-decoration:none">
          <div class="card">
            No. of Students
            <p id="s1" style="font-size:28px"></p>
          </div>
        </a>

        <a href="manage-sem.php" style="text-decoration:none">
          <div class="card">
            Semesters listed
            <p id="s2" style="font-size:28px"></p>
          </div>
        </a>

        <a href="manage-branch.php" style="text-decoration:none">
          <div class="card">
            Branches listed
            <p id="s3" style="font-size:28px"></p>
          </div>
        </a>
      </div>

      <!-- Bottom 2 cards -->
      <div class="dashboard-row">
        <a href="manage-subjects.php" style="text-decoration:none">
          <div class="card">
            Subjects listed
            <p id="s4" style="font-size:28px"></p>
          </div>
        </a>

        <a href="manage-results.php" style="text-decoration:none">
          <div class="card">
            Results declared
            <p id="s5" style="font-size:28px"></p>
          </div>
        </a>
      </div>

    </div>

    <script>
    function animateValue(obj, start, end, duration) {
      let startTimestamp = null;
      const step = (timestamp) => {
        if (!startTimestamp) startTimestamp = timestamp;
        const progress = Math.min((timestamp - startTimestamp) / duration, 1);
        obj.innerHTML = Math.floor(progress * (end - start) + start);
        if (progress < 1) {
          window.requestAnimationFrame(step);
        }
      };
      window.requestAnimationFrame(step);
    }

    const obj = document.getElementById("s1");
    const obj1 = document.getElementById("s2");
    const obj2 = document.getElementById("s3");
    const obj3 = document.getElementById("s4");
    const obj4 = document.getElementById("s5");

    <?php
    $sql1 = "SELECT reg_id from student";
    $result1 = mysqli_query($conn, $sql1);
    $num1 = mysqli_num_rows($result1);

    $sql2 = "SELECT sem_id from semester";
    $result2 = mysqli_query($conn, $sql2);
    $num2 = mysqli_num_rows($result2);

    $sql3 = "SELECT branch_id from branch";
    $result3 = mysqli_query($conn, $sql3);
    $num3 = mysqli_num_rows($result3);

    $sql4 = "SELECT subj_id from subjects";
    $result4 = mysqli_query($conn, $sql4);
    $num4 = mysqli_num_rows($result4);

    $sql5 = "SELECT distinct roll_no from results";
    $result5 = mysqli_query($conn, $sql5);
    $num5 = mysqli_num_rows($result5);
    ?>

    animateValue(obj, 0, <?php echo $num1; ?>, 800);
    animateValue(obj1, 0, <?php echo $num2; ?>, 800);
    animateValue(obj2, 0, <?php echo $num3; ?>, 800);
    animateValue(obj3, 0, <?php echo $num4; ?>, 800);
    animateValue(obj4, 0, <?php echo $num5; ?>, 800);
    </script>

  </body>
</html>
