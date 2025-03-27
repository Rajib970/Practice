<!DOCTYPE html>
<html>

<!-- header -->
<?php get_header();  ?>
<body>
<main class="main">
<?php

if($wpb_all_query->have_posts()): ?>  <!-- We got our post now -->
     <!-- The Loop -->
     <?php 
     while($wpb_all_query->have_posts()):
       $wpb_all_query->the_post(); // increment of while loop
     ?>
     <div class="container my-5">
    <div class="row border">
        <div class="col-sm-4">  
          <?php the_post_thumbnail("small-thumbnail"); ?>
        </div>
        <div class="col-sm-8"> 
        <a href="<?php the_permalink(); ?>"><?php the_title(); ?> </a>
          <?php the_content(); ?> 
        </div>
       
    </div> 
    </div>
 
   <?php endwhile; ?>
 
   <!-- End of Loop -->

  <?php endif; ?>
 

</main>

<!-- footer-->
<?php get_footer(); ?>

</body>

</html>