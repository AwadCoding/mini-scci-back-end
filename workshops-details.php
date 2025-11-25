<?php
include('conniction.php');

if (isset($_GET['category_id'])) {
    $category_id = intval($_GET['category_id']); 
} else {
    die("No category selected");
}

$workshop_query = "SELECT * FROM workshops WHERE workshop_id = '$category_id'";
$workshop_result = mysqli_query($connect, $workshop_query);

if(mysqli_num_rows($workshop_result) > 0){
    $workshop_data = mysqli_fetch_assoc($workshop_result);
    $workshop_name = $workshop_data['workshop_name'];
    $workshop_des = $workshop_data['workshop_des'];
    $workshop_img = $workshop_data['workshop_img'];
} else {
    die("Workshop not found");
}

$members_query = "SELECT members.*, category.category_name 
                  FROM members 
                  JOIN category ON members.category_id = category.category_id
                  WHERE members.workshop_id = '$category_id'";
$members_result = mysqli_query($connect, $members_query);

$tools_query = "SELECT * FROM tools WHERE workshop_id = '$category_id'";
$tools_result = mysqli_query($connect, $tools_query);

$outcomes_query = "SELECT * FROM outcome WHERE workshop_id = '$category_id'";
$outcomes_result = mysqli_query($connect, $outcomes_query);

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="icon" type="image/x-icon" href="assets/images/logo/logo.png" />
  <link rel="stylesheet" href="assets/css/workshops-details.css" />
  <link rel="stylesheet" href="assets/css/base.css" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;400;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.0/css/all.min.css"
        crossorigin="anonymous" referrerpolicy="no-referrer" />
  <title> SCCI`26 | Workshops Details</title>
</head>

<body>
  <div class="container" id="divology">

    <div class="details">
      <div class="details-header">
        <h1> Welcome to <?php echo $workshop_name; ?>!! </h1>
        <img src="assets/images/workshop-icons/<?php echo $workshop_img; ?>" class="details-img" loading="lazy">
      </div>

      <div class="details-content" data-aos="fade-up">
        <h2> What will you learn ? </h2>
        <p><?php echo $workshop_des; ?>
      <?php echo $workshop_des; ?>
      <?php echo $workshop_des; ?>
      <?php echo $workshop_des; ?>
      <?php echo $workshop_des; ?>
      <?php echo $workshop_des; ?>


      </p>
      </div>

      <div class="tools" data-aos="zoom-in">
        <h2> Tools you will use </h2>
        <div class="list-cards">
          <?php while($tool = mysqli_fetch_assoc($tools_result)) { ?>
            <div class="list-card"><?php echo $tool['tool_name']; ?></div>
          <?php } ?>
        </div>
      </div>

      <div class="tools" data-aos="zoom-in">
        <h2> The Outcome </h2>
        <div class="list-cards">
          <?php while($out = mysqli_fetch_assoc($outcomes_result)) { ?>
            <div class="list-card"><?php echo $out['Outcome_name']; ?></div>
          <?php } ?>
        </div>
      </div>

      <div class="members" data-aos="zoom-in">
        <h2> Our Members </h2>
        <div class="members-cards">
          <?php while($member = mysqli_fetch_assoc($members_result)) { ?>
            <div class="card">
              <img src="assets/images/workshops-details/<?php echo $member['member_img']; ?>" alt="img" loading="lazy">
              <div class="name">
                <?php echo $member['member_name']; ?>
                <a href="https://www.linkedin.com/in/mahmoudawad11/" target="_blank">
                  <i class="fa-brands fa-linkedin"></i>
                </a>
              </div>
              <div class="tit"><?php echo $member['category_name']; ?></div>
            </div>
          <?php } ?>
        </div>
      </div>

      <section class="workshop-table">
        <table border="1" cellpadding="10" cellspacing="0" data-aos="fade-up">
          <thead>
            <tr>
              <th>Date</th>
              <th>Topic</th>
              <th>Online/Offline</th>
            </tr>
          </thead>
          <tbody>
            <tr><td>4/12</td><td>Intro to HTML</td><td>Offline</td></tr>
            <tr><td>18/12</td><td>HTML & CSS Project</td><td>Offline</td></tr>
            <tr><td>1/1</td><td>Intro to Bootstrap</td><td>Online</td></tr>
            <tr><td>15/1</td><td>JavaScript</td><td>Offline</td></tr>
            <tr><td>29/1</td><td>Final Project</td><td>Offline</td></tr>
          </tbody>
        </table>
      </section>

    </div>
  </div>

  <script src="assets/js/theme-toggle.js"></script>
  <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
    AOS.init({ duration: 800, once: true });
  </script>

</body>
</html>
