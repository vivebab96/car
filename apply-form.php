<?php 
include('includes/dbconnection.php');
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if(isset($_POST['submit']))
  {

    $packages=$_POST['packages'];
    $trainingdate=$_POST['trainingdate'];
    $time=$_POST['time'];
    $fullname=$_POST['fullname'];
    $email=$_POST['email'];
    $mobilenumber=$_POST['mobilenumber'];
    $gender=$_POST['gender'];
    $age=$_POST['age'];
    $licno=$_POST['licno'];
    $address=$_POST['address'];
    $altnumber=$_POST['altnumber'];
    $regnumber = mt_rand(100000000, 999999999);
   $licnence=$_FILES["licpic"]["name"];
   $extension = substr($licnence,strlen($licnence)-4,strlen($licnence));
// allowed extensions
$allowed_extensions = array(".jpg","jpeg",".png",".gif");
// Validation for allowed extensions .in_array() function searches an array for a specific value.
if(!in_array($extension,$allowed_extensions))
{
echo "<script>alert('Invalid format. Only jpg / jpeg/ png /gif format allowed');</script>";
}
else
{
    $licnencenew=md5($licnence).$extension;
     move_uploaded_file($_FILES["licpic"]["tmp_name"],"licimagesimages/".$licnencenew);
    $query=mysqli_query($con,"insert into tbluser(PackID,RegNumber,FullName,Email,MobileNumber,Gender,Age,LicenceNumber,Address,AlternateNumber,TrainingDate,TrainingTiming,UploadLicence) value('$packages','$regnumber','$fullname','$email','$mobilenumber','$gender','$age','$licno','$address','$altnumber','$trainingdate','$time','$licnencenew')");
    if ($query) {
$ret=mysqli_query($con,"select RegNumber from tbluser where Email='$email' and  MobileNumber='$mobilenumber'");
$result=mysqli_fetch_array($ret);
$_SESSION['regno']=$result['RegNumber'];
 echo '<script>alert("Invoice created successfully. Invoice number is "+"'.$_SESSION['regno'].'")</script>';
echo "<script>window.location.href ='apply-form.php'</script>";
  }
  else
    {
 echo '<script>alert("Something Went Wrong. Please try again")</script>';    
 echo "<script>window.location.href ='apply-form.php'</script>";	
    }

  
}
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>CDSMS Apply Now</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="js/main.js"></script>
<!-- //js -->
<!-- font-awesome-icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Prompt:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,thai,vietnamese" rel="stylesheet">
</head>
<body>
<!-- banner -->
	<?php include_once('includes/header.php');?>
	<div class="banner1">
	</div>
<!-- //banner -->
<!-- contact -->		
	<div class="contact"> 
		<div class="container">
			<div class="w3l-heading">
				<h2 class="w3ls_head">Apply Now</h2>
			</div>
			<div class="contact-agileinfo">
				<div class="col-md-12 contact-right"> 
					<form  method="post" enctype="multipart/form-data">
	
<p style="padding-top: 20px; font-size: 15px"><strong>Packages:  </strong>
                                    <select name="packages" id="packages" required="true">
                                        <option value="">Select</option>
                                        <?php $query=mysqli_query($con,"select * from tblpackages");
              while($row=mysqli_fetch_array($query))
              {
              ?>    
             
              <option value="<?php echo $row['ID'];?>"><?php echo $row['PackageName'];?></option>
                  <?php } ?> 
                                    </select></p>
                                    

                                  <p style="padding-top: 20px; font-size: 15px"><strong>Training Start Date:  </strong>
                                    <input type="date" id="datepicker" name="trainingdate" placeholder="Trainin Date" required="true"></p>

<p style="padding-top: 20px; font-size: 15px"><strong>Training Time:  </strong>
                                    <select name="time" id="Time" required="">
                                        <option value="hide">-- Choose --</option>
                                        <option value="09:00AM - 10:00AM">09:00AM - 10:00AM</option>
                                        <option value="10:00AM - 11:00AM">10:00AM - 11:00AM</option>
                                        <option value="11:00AM - 12:00PM">11:00AM - 12:00PM</option>
                                        <option value="12:00PM - 01:00PM">12:00PM - 01:00PM</option>
                                        <option value="01:00PM - 02:00PM">01:00PM - 02:00PM</option>
                                        <option value="02:00PM - 03:00PM">02:00PM - 03:00PM</option>
                                        <option value="03:00PM - 04:00PM">03:00PM - 04:00PM</option>
                                        <option value="04:00PM - 05:00PM">04:00PM - 05:00PM</option>
                                        <option value="05:00PM - 06:00PM">05:00PM - 06:00PM</option>
                                        <option value="06:00PM - 07:00PM">06:00PM - 07:00PM</option>
                                        <option value="07:00PM - 08:00PM">07:00PM - 08:00PM</option>
                                        <option value="08:00PM - 09:00PM">08:00PM - 09:00PM</option>
                                    </select></p>



					<p style="padding-top: 30px; font-size: 15px"><strong>Contact Details</strong></p>
					<p>	<input type="text" name="fullname" placeholder="Your Name" required="true"></p>
						<input type="text" class="email" name="email" placeholder="Your Email" required="true">
						<input type="text" name="mobilenumber" placeholder="Your Phone" required="true" maxlength="10" pattern="[0-9]{10}">

						<div class="radio">

                               <p style="padding-top: 20px; font-size: 15px"> <strong>Gender:</strong> <label>
                                    <input type="radio" name="gender" id="gender" value="Female" checked="true">
                                    Female
                                </label>
                                <label>
                                    <input type="radio" name="gender" id="gender" value="Male">
                                    Male
                                </label>
                                <label>
                                    <input type="radio" name="gender" id="gender" value="Transgender">
                                   Transgender
                                </label></p>
                            </div>
						

<p style="padding-top: 20px; font-size: 15px"><input type="text" name="age" placeholder="Age" required="true" maxlength="2"></p>

<p style="padding-top: 20px; font-size: 15px"><input type="text" name="licno" placeholder="Licence Number" required="true" maxlength="15"></p>
<p style="padding-top: 20px; font-size: 15px">Upload Licence :
	<input type="file" name="licpic" required="true"></p>
						

						<p style="padding-top: 20px; font-size: 15px"><textarea name="address" id="address" placeholder="Your Address" required="true"></textarea></p>
					<p style="padding-top: 20px; font-size: 15px"><input type="text" name="altnumber" placeholder="Alternate Number" required="true" maxlength="10"></p>
						<input type="submit" name="submit" value="Apply Now" > 
					</form>
				</div>
				
				<div class="clearfix"></div>
			</div>
		</div> 
	</div>
	
	<!-- //contact -->	
	
	<!-- footer -->
	<?php include_once('includes/footer.php');?>
	<!-- //footer -->

<!-- start-smooth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smooth-scrolling -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>