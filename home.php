  <section id="hero" class="d-flex align-items-center">
    <div class="container">
      <h3>Welcome to <?php echo isset($meta['blog_name']) ? $meta['blog_name'] : '' ?></h3>
      <h1>BLOG of book and educational<span class="change_content"> </span></h1>
    </div>
  </section>
  <section class="d-flex align-items-center">
	<div class="container">
	    <?php
	    	$qry = $qry = $conn->query("SELECT p.*,c.name as category from posts p inner join category c on c.id = p.category_id where p.status = 1 order by date(p.date_published) desc limit 5");
	    	while($row=$qry->fetch_assoc()){
	    ?>
	    <div class="card col-md-12 list-items"  data-id="<?php echo $row['id'] ?>">
	    	<div class="card-body">
	    		<div class="row">
	    		<div class="col-md-4">
	    			<center><img src="assets/img/<?php echo $row['img_path'] ?>" alt="" class='col-sm-10'></center>
					<center><video src="assets/img/<?php echo $row['img_path'] ?>" alt="" class='col-sm-10'></center>
	    		</div>
	    		<div class="col-md-8 truncate">
	    			<h3><b><?php echo $row['title'] ?></b></h3>
	    			<p class="text-truncate">
	    				<?php echo html_entity_decode($row['post']) ?>
	    			</p>

	    		</div>
	    		</div>

	    	</div>
	    </div>
		<?php } ?>
		</div>
  </section>
  <style type="text/css">
  	.list-items p{
  		text-align: left !important;
  	}
  	.list-items{
  		cursor: pointer;
  	}
  	.truncate{
  		max-height: 10vw;
  		overflow: hidden;
  	}
	  .change_content:after {
  content: "";
  animation: changetext 10s infinite linear;
  color: yellow;
}
@keyframes changetext {
  0% {
    content: "technology";
  }
  20% {
    content: "curriculum";
  }
  35% {
    content: "resources";
  }
  60% {
    content: "seminars";
  }
  80% {
    content: "grants";
  }
  100% {
    content: "initiatives";
  }
}
  </style>]
  <script>

  	$(document).ready(function(){
  		$('.list-items').click(function(){
			window.location.assign('index.php?page=preview_post&id='+$(this).attr('data-id'))
  		})
  	})
  </script>
   