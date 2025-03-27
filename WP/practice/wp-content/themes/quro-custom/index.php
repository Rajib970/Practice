<!DOCTYPE html>
<html>

<!-- header -->
<?php get_header();  ?>

<main class="main">

  <!-- Hero Section -->
  <section id="hero" class="hero section video-container dark-background">
   <video autoplay muted loop id="bg-video">
    <source src="<?php echo get_bloginfo('template_url').'/assets/video/bg-video.mp4'; ?>" type="video/mp4">
    </video>

    <div class="container">
      <div class="row gy-4">
        <div class="col-lg-6 order-2 order-lg-1 d-flex flex-column justify-content-center" data-aos="zoom-out">
          <h1>Better Solutions For Your Business</h1>
          <p>We are team of talented designers making websites with Bootstrap</p>
          <div class="d-flex">
            <a href="#about" class="btn-get-started">Get Started</a>
            <a href="https://www.youtube.com/watch?v=LXb3EKWsInQ" class="glightbox btn-watch-video d-flex align-items-center"><i class="bi bi-play-circle"></i><span>Watch Video</span></a>
          </div>
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-out" data-aos-delay="200">
          <!-- <img src="<?php //echo get_bloginfo('template_url');  ?>/assets/img/hero-img.png" class="img-fluid animated" alt=""> -->
        </div>
      </div>
    </div>

  </section><!-- /Hero Section -->



  <!-- Clients Section -->
  <section id="clients" class="clients section light-background">

    <div class="container" data-aos="zoom-in">

      <div class="swiper init-swiper">
        <script type="application/json" class="swiper-config">
          {
            "loop": true,
            "speed": 600,
            "autoplay": {
              "delay": 5000
            },
            "slidesPerView": "auto",
            "pagination": {
              "el": ".swiper-pagination",
              "type": "bullets",
              "clickable": true
            },
            "breakpoints": {
              "320": {
                "slidesPerView": 2,
                "spaceBetween": 40
              },
              "480": {
                "slidesPerView": 3,
                "spaceBetween": 60
              },
              "640": {
                "slidesPerView": 4,
                "spaceBetween": 80
              },
              "992": {
                "slidesPerView": 5,
                "spaceBetween": 120
              },
              "1200": {
                "slidesPerView": 6,
                "spaceBetween": 120
              }
            }
          }
        </script>
        <div class="swiper-wrapper align-items-center">
          <div class="swiper-slide"><img src="<?php echo get_bloginfo('template_url');  ?>/assets/img/clients/client-1.png" class="img-fluid" alt=""></div>
          <div class="swiper-slide"><img src="<?php echo get_bloginfo('template_url');  ?>/assets/img/clients/client-2.png" class="img-fluid" alt=""></div>
          <div class="swiper-slide"><img src="<?php echo get_bloginfo('template_url');  ?>/assets/img/clients/client-3.png" class="img-fluid" alt=""></div>
          <div class="swiper-slide"><img src="<?php echo get_bloginfo('template_url');  ?>/assets/img/clients/client-4.png" class="img-fluid" alt=""></div>
          <div class="swiper-slide"><img src="<?php echo get_bloginfo('template_url');  ?>/assets/img/clients/client-5.png" class="img-fluid" alt=""></div>
          <div class="swiper-slide"><img src="<?php echo get_bloginfo('template_url');  ?>/assets/img/clients/client-6.png" class="img-fluid" alt=""></div>
          <div class="swiper-slide"><img src="<?php echo get_bloginfo('template_url');  ?>/assets/img/clients/client-7.png" class="img-fluid" alt=""></div>
          <div class="swiper-slide"><img src="<?php echo get_bloginfo('template_url');  ?>/assets/img/clients/client-8.png" class="img-fluid" alt=""></div>
        </div>
      </div>

    </div>

  </section><!-- /Clients Section -->

  <!-- Intrologistics - SVG -->
  <section id="about" class="about section">

    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
      <h2>Intralogistics - AVG</h2>
    </div><!-- End Section Title -->

    <div class="container">

      <div class="row gy-4">

        <div class="col-lg-6 content" data-aos="fade-up" data-aos-delay="100">
          <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
            magna aliqua.
          </p>
          <ul>
            <li><i class="bi bi-check2-circle"></i> <span>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></li>
            <li><i class="bi bi-check2-circle"></i> <span>Duis aute irure dolor in reprehenderit in voluptate velit.</span></li>
            <li><i class="bi bi-check2-circle"></i> <span>Ullamco laboris nisi ut aliquip ex ea commodo</span></li>
          </ul>
        </div>

        <div class="col-lg-6" data-aos="fade-up" data-aos-delay="200">
          <img src="<?php echo get_bloginfo('template_url').'/assets/img/intra-avg.jpg' ?>" class="img-fluid">
        </div>

      </div>

    </div>

  </section> <!-- /Intrologistics - AVG -->

  <!-- Machine Vision -->
  <section id="why-us" class="section why-us light-background" data-builder="section">

    <div class="container-fluid">

      <div class="row gy-4">

         <div class="col-lg-5 order-1 order-lg-2 why-us-img">
            <img src="<?php echo get_bloginfo('template_url');  ?>/assets/img/machine-vision.webp" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="100">
          </div>

        <div class="col-lg-7 d-flex flex-column justify-content-center order-2 order-lg-1">

          <div class="content px-xl-5" data-aos="fade-up" data-aos-delay="100">
            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
              <h2>Machine Vision</h2>
            </div><!-- End Section Title -->
          </div>
         

          <div class="faq-container px-xl-5" data-aos="fade-up" data-aos-delay="200">
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
          </div>

        </div>


      </div>

    </div>

  </section> <!-- /Machine Vision -->

    <!-- IOT & IIOT -->
  <section id="about" class="about section">

    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
      <h2>IOT & IIOT</h2>
    </div><!-- End Section Title -->

    <div class="container">

      <div class="row gy-4">

        <div class="col-lg-6 content" data-aos="fade-up" data-aos-delay="100">
          <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
            magna aliqua.
          </p>
          <ul>
            <li><i class="bi bi-check2-circle"></i> <span>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></li>
            <li><i class="bi bi-check2-circle"></i> <span>Duis aute irure dolor in reprehenderit in voluptate velit.</span></li>
            <li><i class="bi bi-check2-circle"></i> <span>Ullamco laboris nisi ut aliquip ex ea commodo</span></li>
          </ul>
        </div>

        <div class="col-lg-6" data-aos="fade-up" data-aos-delay="200">
          <img src="<?php echo get_bloginfo('template_url').'/assets/img/iot&iiot.jpeg' ?>">
        </div>

      </div>

    </div>

  </section> <!-- /IOT & IIOT -->

   <!-- Machine Vision -->
  <section id="why-us" class="section why-us light-background" data-builder="section">

    <div class="container-fluid">

      <div class="row gy-4">

         <div class="col-lg-5 order-1 order-lg-2 why-us-img">
            <img src="<?php echo get_bloginfo('template_url');  ?>/assets/img/elc-prd-dev.jpeg" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="100">
          </div>

        <div class="col-lg-7 d-flex flex-column justify-content-center order-2 order-lg-1">

          <div class="content px-xl-5" data-aos="fade-up" data-aos-delay="100">
            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
              <h2> Product Development</h2>
            </div><!-- End Section Title -->
          </div>

          <div class="faq-container px-xl-5" data-aos="fade-up" data-aos-delay="200">
            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
          </div>

        </div>


      </div>

    </div>

  </section> <!-- /Machine Vision -->


<!-- Product Silider -->
    <section id="testimonials" class="testimonials section">

      <!-- Section Title -->
      <div class="container section-title" data-aos="fade-up">
        <h2> Product Details</h2>
        <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit</p>
      </div><!-- End Section Title -->

      <div class="container" data-aos="fade-up" data-aos-delay="100">

        <div class="swiper init-swiper">
          <script type="application/json" class="swiper-config">
            {
              "loop": true,
              "speed": 600,
              "autoplay": {
                "delay": 5000
              },
              "slidesPerView": "auto",
              "pagination": {
                "el": ".swiper-pagination",
                "type": "bullets",
                "clickable": true
              }
            }
          </script>
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="<?php echo get_bloginfo('template_url').'/assets/img/intra-avg.jpg' ?>" class="img-fluid h-50" alt="">
              </div>
            </div><!-- End Product Sliding item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="<?php echo get_bloginfo('template_url').'/assets/img/intra-avg.jpg' ?>" class="img-fluid h-50" alt="">
              </div>
            </div><!-- End Product Sliding item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="<?php echo get_bloginfo('template_url').'/assets/img/intra-avg.jpg' ?>" class="img-fluid h-50" alt="">
              </div>
            </div><!-- End Product Sliding item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="<?php echo get_bloginfo('template_url').'/assets/img/intra-avg.jpg' ?>" class="img-fluid h-50" alt="">
              </div>
            </div><!-- End Product Sliding item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="<?php echo get_bloginfo('template_url').'/assets/img/intra-avg.jpg' ?>" class="img-fluid h-50" alt="">
              </div>
            </div><!-- End Product Sliding item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>

    </section>
  <!-- Product Slider -->


  <!-- Services Section -->
  <section id="services" class="services section light-background">

    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
      <h2>Services</h2>
      <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit</p>
    </div><!-- End Section Title -->

    <div class="container">

      <div class="row gy-4">

        <div class="col-xl-4 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="100">
          <div class="service-item position-relative">
            <div class="icon"> <img src="<?php echo get_bloginfo('template_url').'/assets/img/electronic-product-design.webp' ?>" class="img-thumbnail">  </i></div>
            <h4><a href="" class="stretched-link"> 
            Electronic Product Design</a></h4>
            <p>Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi</p>
          </div>
        </div><!-- End Service Item -->

        <div class="col-xl-4 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="200">
          <div class="service-item position-relative">
           <div class="icon"> <img src="<?php echo get_bloginfo('template_url').'/assets/img/industrial-automation.jpeg' ?>" class="img-thumbnail">  </i></div>
           <h4><a href="" class="stretched-link">Industrial Automation</a></h4>
           <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore</p>
         </div>
       </div><!-- End Service Item -->

       <div class="col-xl-4 col-md-6 d-flex" data-aos="fade-up" data-aos-delay="300">
        <div class="service-item position-relative">
          <div class="icon"> <img src="<?php echo get_bloginfo('template_url').'/assets/img/power-solution.jpeg' ?>" class="img-thumbnail">  </i></div>
          <h4><a href="" class="stretched-link">Power Solutions</a></h4>
          <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia</p>
        </div>
      </div><!-- End Service Item -->

    </div>

  </div>

</section><!-- /Services Section -->

<!-- Call To Action Section -->
<section id="call-to-action" class="call-to-action section dark-background">

  <img src="<?php echo get_bloginfo('template_url');  ?>/assets/img/cta-bg.jpg" alt="">

  <div class="container">

    <div class="row" data-aos="zoom-in" data-aos-delay="100">
      <div class="col-xl-9 text-center text-xl-start">
        <h3>Call To Action</h3>
        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </div>
      <div class="col-xl-3 cta-btn-container text-center">
        <a class="cta-btn align-middle" href="#">Call To Action</a>
      </div>
    </div>

  </div>

</section><!-- /Call To Action Section -->

<!-- Contact Section -->
<section id="contact" class="contact section">

  <!-- Section Title -->
  <div class="container section-title" data-aos="fade-up">
    <h2>Contact</h2>
    <p>Necessitatibus eius consequatur ex aliquid fuga eum quidem sint consectetur velit</p>
  </div><!-- End Section Title -->

  <div class="container" data-aos="fade-up" data-aos-delay="100">

    <div class="row gy-4">

      <div class="col-lg-5">

        <div class="info-wrap">
          <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="200">
            <i class="bi bi-geo-alt flex-shrink-0"></i>
            <div>
              <h3>Address</h3>
              <p>S. No.: 29, Sushil Building,Near Abhinav College Road, Narhe,Pune, Maharastra, India – 411041</p>
            </div>
          </div><!-- End Info Item -->

          <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="300">
            <i class="bi bi-telephone flex-shrink-0"></i>
            <div>
              <h3>Call Us</h3>
              <p>+91 62390 91255</p>
            </div>
          </div><!-- End Info Item -->

          <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="400">
            <i class="bi bi-envelope flex-shrink-0"></i>
            <div>
              <h3>Email Us</h3>
              <p>hello@qurolabs.com</p>
            </div>
          </div><!-- End Info Item -->

          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3784.8517059940436!2d73.81735297430161!3d18.445041071478727!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc29556cbdd7223%3A0x6a7c9d51f56169c5!2sQuro%20Labs%20Pvt.%20Ltd.!5e0!3m2!1sen!2sin!4v1720940197275!5m2!1sen!2sin" frameborder="0" style="border:0; width: 100%; height: 270px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
      </div>

      <div class="col-lg-7">
        <form action="forms/contact.php" method="post" class="php-email-form" data-aos="fade-up" data-aos-delay="200">
          <div class="row gy-4">

            <div class="col-md-6">
              <label for="name-field" class="pb-2">Your Name</label>
              <input type="text" name="name" id="name-field" class="form-control" required="">
            </div>

            <div class="col-md-6">
              <label for="email-field" class="pb-2">Your Email</label>
              <input type="email" class="form-control" name="email" id="email-field" required="">
            </div>

            <div class="col-md-12">
              <label for="subject-field" class="pb-2">Subject</label>
              <input type="text" class="form-control" name="subject" id="subject-field" required="">
            </div>

            <div class="col-md-12">
              <label for="message-field" class="pb-2">Message</label>
              <textarea class="form-control" name="message" rows="10" id="message-field" required=""></textarea>
            </div>

            <div class="col-md-12 text-center">
              <div class="loading">Loading</div>
              <div class="error-message"></div>
              <div class="sent-message">Your message has been sent. Thank you!</div>

              <button type="submit">Send Message</button>
            </div>

          </div>
        </form>
      </div><!-- End Contact Form -->
<?php
      if($wpb_all_query->have_posts()): ?>  <!-- We got our post now -->

<ul>

 <!-- The Loop -->
 <?php 
 while($wpb_all_query->have_posts()):
   $wpb_all_query->the_post(); // increment of while loop
 ?>

 <li>
   <a href="<?php the_permalink(); ?>">
     <?php the_title(); ?>
   </a>
   <?php the_content(); ?>
 </li>

<?php endwhile; ?>

<!-- End of Loop -->

</ul>

<?php endif; ?>

    </div>

  </div>

</section><!-- /Contact Section -->

</main>

<!-- footer-->
<?php get_footer(); ?>

</body>

</html>