<?php echo get_header(); ?>

<main class="main">

	<!-- Hero Section -->
	<section id="hero" class="hero section dark-background">

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
						<img src="<?php echo get_bloginfo('template_url');  ?>/assets/img/robot.png" class="img-fluid animated" class="img-fluid" alt="">
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

		<!-- main content -->
		<section id="why-us" class="section why-us light-background" data-builder="section">

			<div class="container-fluid">

				<div class="row gy-4">
					<div class="d-flex flex-column justify-content-center order-2 order-lg-1">

						<div class="content px-xl-5" data-aos="fade-up" data-aos-delay="100">
							<!-- Section Title -->
							<div class="container section-title" data-aos="fade-up">

								<?php
								if(have_posts()){
									while(have_posts()){
										the_post();  
										?>
										<h2><?php the_title(); ?></h2>
									</div>
								</div>

								<div class="faq-container px-xl-5" data-aos="fade-up" data-aos-delay="200">
									<?php the_content(); ?>

									<?php
								}
							}
							?>
						</div>
					</div>
				</div>
			</div>

		</section>

		<!-- End of main content -->
	</main>

	<?php echo get_footer(); ?>