<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="service">
		<div class="title">
			<h2>Our Services for <%
                String uid=(String)session.getAttribute("user");
                %></h2>
		</div>
        <div class="box">
            <div class="card">
                <i class="far fa-user"></i>
                <h5>SPA Application &
                    Development</h5>
                <div class="pra">
                    <p>PayPal<br>Pinterest</p>

                    <p style="text-align: center;">
                        <!-- <a href="#"><button class="button"></button>Read More</a> -->
                    </p>
                </div>
            </div>

			<div class="card">
				<i class="far fa-bell"></i>
				<h5>App Development Tools</h5>
				<div class="pra">
					<p>Iconic<br>React Native<br>Tintaniam SDK</p>

					<p style="text-align: center;">
						<!-- <a class="button" href="#">Read More</a> -->
					</p>
				</div>
			</div>
		</div>
    </div>
	</div>

</body>
</html>