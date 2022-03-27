<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>Inscription</title>
		<!-- Font Icon -->
		<link
			rel="stylesheet"
			href="fonts/material-icon/css/material-design-iconic-font.min.css"
		/>
		<link
			href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;900&display=swap"
			rel="stylesheet"
		/>
		<!-- Main css -->
		<link rel="stylesheet" href="css/Connexion.css" />
		<link rel="shortcut icon" href="images/logo.png" />
	</head>

	<body>
		<div class="main">
			<!-- Sign up form -->
			<section class="signup">
				<div class="container">
					<div class="signup-content">
						<div class="signup-form">
							<h2 class="form-title">Connexion</h2>
							<form method="POST" class="register-form" id="register-form" action="Connexionn.php">
								<div class="form-group">
									<label for="name"
										><i class="zmdi zmdi-account material-icons-name"></i
									></label>
									<input
										type="text"
										name="name"
										id="name"
										placeholder="Nom d'utilisateur"
									/>
								</div>
								<div class="form-group">
									<label for="pass"><i class="zmdi zmdi-lock"></i></label>
									<input
										type="password"
										name="pass"
										id="pass"
										placeholder="Mot de passe"
									/>
								</div>

								<div class="form-group form-button">
									<input
										type="submit"
										name="signup"
										id="signup"
										class="form-submit"
										value="Connexion"
									/>
								</div>
	                            <p> <a href="Inscrire.jsp"> Cr�er un nouveau compte </a></p>
							</form>
						</div>
					</div>
				</div>
				<div class="signup-image">
					<figure>
						<img src="images/4457.png" alt="sing up image" />
					</figure>
				</div>
			</section>
		</div>
	</body>
</html>