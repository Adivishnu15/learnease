<?php

include 'components/connect.php';

if(isset($_COOKIE['user_id'])){
   $user_id = $_COOKIE['user_id'];
}else{
   $user_id = '';
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Courses</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>

<?php include 'components/user_header2.php'; ?>

<!-- courses section starts  -->
<section class="courses">
   <h1 class="heading">Our Courses</h1>
   <div class="box-container">
      <!-- Course content will go here -->
   </div>
</section>
<!-- courses section ends -->

<!-- notes section starts  -->
<!-- <section class="notes">
   <h2 class="heading">Notes</h2>
   <div class="content">
      <p>Here you can find notes and additional information to help you better understand the courses.</p>
      <ul>
         <li>Note 1: Always refer to the latest materials.</li>
         <li>Note 2: Practice regularly to enhance your skills.</li>
         <li>Note 3: Don’t hesitate to reach out for support.</li>
      </ul>
   </div>
</section> -->
<!-- notes section ends -->

<!-- links section starts  -->
<section class="links">
   <h2 class="heading">Useful Links</h2>
   <div class="content">
     <h1> <ul>
         <li><a href="https://www.w3schools.com" target="_blank">W3Schools</a></li>
         <li><a href="https://developer.mozilla.org" target="_blank">MDN Web Docs</a></li>
         <li><a href="https://www.coursera.org" target="_blank">Coursera</a></li>
         <li><a href="https://www.edx.org" target="_blank">edX</a></li>
      </ul></h1>
   </div>
</section>
<!-- links section ends -->

<?php include 'components/footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>
   
</body>
</html>
