<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">

    <title>Add Service</title>
    <link rel="stylesheet" href="css/Acceuil.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="shortcut icon" href="images/logo.png" />
    <link
			href="https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css"
			rel="stylesheet"
		/>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;900&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
</head>

<body>
 
    <!--Body part-->
        <div class="description">  
        <form method="get" class="register-form" id="register-form" action="DescriptionQueryAPI.php">
                <div class="form-group">
                  <label for="email"><i class="zmdi zmdi-email"></i></label>         
                  <textarea id="msg" name="user_message" placeholder="Enter your functional functionality here"></textarea>
                </div>
                <div class="form-group form-button">         
                  <input 
                    type="submit"
                    name="signup"
                    id="signup"
                    class="form-submit"
                    value="Search"
                  />
                </div>
              </form>
    </div>
<div class="popup-overlay">
			<div class="popup-box">
				<div class="check-container">
					<ion-icon name="information-outline"></ion-icon>
				</div>
				<div class="popup-message-container">
					<p>Do you want to add your service with ${model.ff} Functional Functionality? </p>
					<span><p>Click No to repeat search</p></span>
				</div>
				<div class="buttons">
				<button class="ok-btn">No</button>
				<form action="ApiProvider.jsp">
				<input type="submit" value="Yes" class="Yes-btn">
				</form>
				</div>
			</div>
		</div>
		
		<c:if test="${model.showpop == true}">
		<script>
		const popbox = document.querySelector('.popup-overlay');

	 popbox.classList.add('active');
	  
      </script> 
		</c:if>
		
		<script
			type="module"
			src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"
		></script>
		<script
			nomodule
			src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"
		></script>
	
    <!--side bar section-->

      <%@ include file="Menu.jsp" %>

      <!-- Script part-->      
            <script>
            const okbtn = document.querySelector('.ok-btn');
    		okbtn.addEventListener('click', () => {
    			popbox.classList.add('active');
    			popbox.classList.remove('active');
    		}); 
  let arrow = document.querySelectorAll(".arrow");
  for (var i = 0; i < arrow.length; i++) {
    arrow[i].addEventListener("click", (e)=>{
   let arrowParent = e.target.parentElement.parentElement;//selecting main parent of arrow
   arrowParent.classList.toggle("showMenu");
    });
  }
  let sidebar = document.querySelector(".sidebar");
  let sidebarBtn = document.querySelector(".bx-menu");
  console.log(sidebarBtn);
  sidebarBtn.addEventListener("click", ()=>{
    sidebar.classList.toggle("close");
  });
  </script>
</body>

</html>