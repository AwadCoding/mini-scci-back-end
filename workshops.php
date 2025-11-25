<?php
include('conniction.php');

$select="SELECT * FROM `workshops` ";
$result=mysqli_query($connect,$select);
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- favicon -->
    <link rel="icon" type="image/x-icon" href="assets/images/logo/logo.png" />
    <meta property="og:image" content="assets/images/seo/workshops-page.png" />
    <meta property="og:title" content="SCCI`26 | Workshops" />
    <meta
      property="og:description"
      content="SCCI is the university’s premier student community, uniting creative minds to build the future of tech, media, business, and entrepreneurship."
    />
    <meta
      name="keywords"
      content="SCCI, Student Community, Creative Minds, Tech, Media, Business, Entrepreneurship, University, Community, College"
    />
    <link rel="stylesheet" href="assets/css/workshops.css" />
    <link rel="stylesheet" href="assets/css/base.css" />
    <!-- google fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
      rel="stylesheet"
    />
    <title>SCCI`26 | Workshops</title>
  </head>
  <body>

    <section class="workshops-title">
      <h2 class="sub-title">Explore SCCI Workshops</h2>
      <p>SCCI offers <span class="highlight-text-auto"> unique workshops designed to help students explore different fields,</span> learn real-world skills, and work on hands-on projects with experienced mentors. <span class="highlight-text-auto">Each workshop focuses on a specific domain</span> and prepares you for both technical and non-technical challenges.</p>
    </section>

    <section class="cards-grid">
      <?php foreach($result as $workshop){ ?>
      <div class="card">
        <img src="assets/images/workshop-icons/<?php echo $workshop['workshop_img']; ?>">
        <h4><?php echo $workshop['workshop_name']      ?></h4>
        <p><?php echo $workshop['workshop_des']?></p>
        <a href="workshops-details.php?category_id=<?php echo $workshop ['workshop_id'] ?>"><button class="btn">Read more</button></a>
      </div>
      <?php } ?>
    </section>

    <section class="workshop-table">
      <table border="1" cellpadding="10" cellspacing="0">
        <thead>
          <tr>
            <th>Workshop</th>
            <th>Difficulty</th>
            <th>What You Learn</th>
            <th>Best For</th>
          </tr>
        </thead>
        <tbody>
          
             <tr>
            <td>Divology</td>
            <td>⭐ ⭐ ⭐ ⭐ ⭐ ⭐</td>
            <td>UI/UX · HTML/CSS · JS · Wireframing</td>
            <td>Future front-end devs & designers</td>
          </tr>
          <tr>
            <td>TechSolve</td>
            <td>⭐ ⭐ ⭐ </td>
            <td>Arduino · Circuits · Sensors</td>
            <td>Engineers & hardware lovers</td>
          </tr>

          <tr>
            <td>AppSplash</td>
            <td>⭐ ⭐ ⭐</td>
            <td>XML · Java · App Architecture · APIs</td>
            <td>Students who want to build apps</td>
          </tr>

        

          <tr>
            <td>Marketive</td>
            <td>⭐ ⭐</td>
            <td>Branding · Ads · Strategy · Content</td>
            <td>Anyone interested in marketing</td>
          </tr>

          <tr>
            <td>Investenuer</td>
            <td>⭐ ⭐</td>
            <td>Funding · Pitching · Investors</td>
            <td>Startup-minded students</td>
          </tr>
        </tbody>
      </table>
    </section>

    <section class="why-section">
      <h3>Why you should join our workshops?</h3>
      <p>Joining our workshops <span class="highlight-text-auto">gives you the opportunity to build practical skills that are highly valued in today’s professional world.</span> You’ll gain hands-on experience solving real-world problems, learn how to think creatively and critically, and develop the confidence to turn ideas into tangible results. Working alongside peers and mentors, <span class="highlight-text-auto">you'll enhance your collaboration, communication, and problem-solving abilities,</span> all while expanding your knowledge in innovative tools and technologies that set you apart in any career path.</p>
    </section>

    <section class="learning-section">
      <h4 id="p-learning-list">You will:</h4>
      <ul class="learning-list">
        <li>Learn Real Skills</li>
        <li>Build Projects</li>
        <li>Join Teams</li>
        <li>Improve Your CV</li>
        <li>Meet  Professional Mentors</li>
      </ul>
    </section>
    <script src="assets/js/workshops.js"></script>
     <!-- dont touch !! -->
    <script src="assets/js/components.js"></script>
  </body>
</html>
