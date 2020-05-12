<%@page import="com.neon.model.Audio"%>
<%@page import="com.neon.mainServices.InterfaceServicesDataAdmin"%>
<%@page import="com.neon.mainServices.servicesDataAdmin"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.neon.model.photos"%>
<%@page import="com.neon.model.Admin"%>
<%@page import="com.neon.model.Document"%>
<%@page import="com.neon.model.Video"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page language="java" import="java.sql.*"
	contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Neon</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="images/favicon.png">
<!-- Pignose Calender -->
<link href="./plugins/pg-calendar/css/pignose.calendar.min.css"
	rel="stylesheet">
<!-- Chartist -->
<link rel="stylesheet" href="./plugins/chartist/css/chartist.min.css">
<link rel="stylesheet"
	href="./plugins/chartist-plugin-tooltips/css/chartist-plugin-tooltip.css">
<!-- Custom Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<!-- Custom Stylesheet -->
<link href="css/footer.css" rel="stylesheet">
<!--Google Icons-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
	


</head>

<body>

	<!--*******************
        Preloader start
    ********************-->
	<div id="preloader">
		<div class="loader">
			<svg class="circular" viewBox="25 25 50 50"> <circle
				class="path" cx="50" cy="50" r="20" fill="none" stroke-width="3"
				stroke-miterlimit="10" /> </svg>
		</div>
	</div>
	<!--*******************
        Preloader end
    ********************-->


	<!--**********************************
        Main wrapper start
    ***********************************-->
	<div id="main-wrapper">

		<!--**********************************
            Nav header start
        ***********************************-->
		<div class="nav-header">
			<div class="brand-logo">
				<a href="index.html"> <b class="logo-abbr"><img
						src="images/logo.png" alt=""> </b> <span class="logo-compact">
						<img src="./images/logo-compact.png" alt="">
				</span> <span class="brand-title"> <img  style="width:170px; height: 45px;" src="images/neon.png" alt="">

				</span>
				</a>
			</div>
		</div>
		<!--**********************************
            Nav header end
        ***********************************-->

		<!--**********************************
            Header start
        ***********************************-->
		<div class="header">
			<div class="header-content clearfix">

				<div class="nav-control">
					<div class="hamburger">
						<span class="toggle-icon"><i class="icon-menu"></i></span>
					</div>
				</div>
				<div class="header-left">
					<div class="input-group icons">
						<div class="input-group-prepend">
							<span
								class="input-group-text bg-transparent border-0 pr-2 pr-sm-3"
								id="basic-addon1"><i class="mdi mdi-magnify"></i></span>
						</div>
						
						

						<form action="#">
						<input type="search" class="form-control" id="searchEmail" name ="searchEmail"
							placeholder="Search People" aria-label="Search Dashboard">
						</form>
						<div class="drop-down animated flipInX d-md-none">
							<form action="#">
								<input type="text" id="searchEmail" name ="searchEmail" class="form-control" placeholder="Search">
							</form>
						</div>
					</div>
				</div>
				<div class="header-right">
					<ul class="clearfix">
							
							
	
						<%
							//int userID = (Integer) session.getAttribute("userID");
							String userName = (String) session.getAttribute("userName");
							//get fileName attribute in audio table using session from audioInsertController 
							String path = (String) session.getAttribute("path");

							if (userName == null) {
						%>
						
						
						<li class="icons dropdown d-none d-md-flex"><a
							href="javascript:void(0)" class="log-user"> <i
								class="fa fa-user f-s-14" aria-hidden="true"></i><span>Sign Up</span>
						</a></li>

						<li class="icons dropdown d-none d-md-flex"><a
							href="javascript:void(0)" class="log-user"> <i
								class="fa fa-user f-s-14" aria-hidden="true"></i><span>Log In</span>
						</a></li>


						<%
							} else {
								InterfaceServicesDataAdmin admindtls = new servicesDataAdmin();
								ArrayList<Admin> adminDetails = admindtls.getAdmin(userName);
						%>


						<li class="icons dropdown d-none d-md-flex"><a
							href="user" class="log-user"><span style="color:#06575B; font-weight:bold;"><%=userName%></span>
						</a></li>

						<li class="icons dropdown">
							<div class="user-img c-pointer position-relative"
								data-toggle="dropdown">
								<span class="activity active"></span> 
								
							<% 
								for(Admin admin : adminDetails){
							%>	
								
							<img src="images/<%=admin.getFileName() %>" height="40" width="40" alt="">
								
								
								
								
								
								
								<%-- <c:forEach  var = "cus" items="${customerDetails}">
								<img src="images/${cus.fileName}" height="40" width="40" alt="">
								</c:forEach> --%>
							</div>
							<div
								class="drop-down dropdown-profile animated fadeIn dropdown-menu">
								<div class="dropdown-content-body">
									<ul>
										<li><a href="app-profile.html"><i class="icon-user"></i>
												<span>Profile</span></a></li>
										

										<hr class="my-2">

										<li><a href="logout.jsp"><i class="icon-key"></i> <span>Logout</span></a></li>
									</ul>
								</div>
							</div>
						</li>

						<%
							}
								}
						%>


					</ul>
				</div>
			</div>
		</div>
		<!--**********************************
            Header end ti-comment-alt
        ***********************************-->

		<!--**********************************
            Sidebar start
        ***********************************-->
		<div class="nk-sidebar">
			<div class="nk-nav-scroll">
				<ul class="metismenu" id="menu">


					<li><a href="index.jsp" aria-expanded="false"> <i
							class="material-icons">home</i><span class="nav-text">Home</span>
					</a></li>

					<li><a href="aboutUs.jsp" aria-expanded="false"> <i
							class="material-icons">supervisor_account</i><span
							class="nav-text">About Us</span>
					</a></li>

					<li><a href="Contact.jsp" aria-expanded="false"> <i
							class="material-icons">email</i><span class="nav-text">Contact</span>
					</a></li>


				</ul>
			</div>
		</div>
		<!--**********************************
            Sidebar end
        ***********************************-->

		<!--**********************************
            Content body start
        ***********************************-->
		<div class="content-body">

			<div class="container-fluid mt-3">
				<div class="row">
					<div class="col-lg-3 col-sm-6">
						<a href="adminUserSignup.jsp">
							<div class="card section1 gradient-1">
								<div class="card-body">
									<div class="d-inline-block">
									<h3 class="card-title text-white">Add User</h3>
									</div>
									<span class="float-right display-5 opacity-5"><i
										class="fa fa-address-card "></i></span>
								</div>
							</div>
						</a>
					</div>

					<div class="col-lg-3 col-sm-6">
						<a href="adminDeleteUser.jsp">
							<div class="card section1 gradient-2">
								<div class="card-body">
									<div class="d-inline-block">
										<h3 class="card-title text-white">Delete User</h3>

									</div>
									<span class="float-right display-5 opacity-5"><i
										class="fa fa-minus-circle "></i></span>
								</div>
							</div>
						</a>
					</div>

					<div class="col-lg-3 col-sm-6">
						<a href="#">
							<div class="card section1 gradient-3">
								<div class="card-body">
									<div class="d-inline-block">
										<h3 class="card-title text-white">Edit Content</h3>

									</div>
									<span class="float-right display-5 opacity-5"><i
										class="fa fa-users"></i></span>
								</div>
							</div>
						</a>
					</div>
					
						<div class="col-lg-3 col-sm-6">
						<a href="adminDeleteContent.jsp">
							<div class="card section1 gradient-4">
								<div class="card-body">
									<div class="d-inline-block">
										<h3 class="card-title text-white">Delete Content</h3>

									</div>
									<span class="float-right display-5 opacity-5"><i
										class="fa fa-window-close"></i></span>
								</div>
							</div>
						</a>
					</div>
					

				</div>
				
						
		
		<!--**********************************
                    add the serch bar here
        ***********************************-->
         <div class="col-lg-10" >
                           <div class="card" >
                            <div class="card-body">
                               <form action="searchUserContentAdmin" method="post">
									<input type="search" class="form-control" id="searchEmail" name ="searchEmail"
									placeholder="Search People" aria-label="Search Dashboard">
									<br>
							 		<button class="btn mb-1 btn-primary" >Search</button>
							
								</form>
						
                        </div>
                    </div>
        <%
        String SearchUserID = (String) session.getAttribute("searchID");
        InterfaceServicesDataAdmin intersda =  new servicesDataAdmin();
        %>
       

		<!--**********************************
                    add the serch bar here
        ***********************************-->
        <!-- Admin edit user Photoes -->
             <div class="col-lg-10" >
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Photos</h4>
                                <div class="table-responsive">
                                    <table class="table header-border table-hover verticle-middle">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">photoID</th>
                                                <th scope="col">name</th>
                                                <th scope="col">description</th>
                                            	<th scope="col"></th>
                                            	
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                            
                                             
                                            ArrayList<photos> photoDetails = intersda.getphotoList(SearchUserID);
                                            
                                            
                                            int i = 1;
            								for(photos photo : photoDetails){

                                            %>
                                            <tr>
                                                <th scope="col"><%=i%></th>
                                            
                                                <th scope="col"><%=photo.getPhotoID() %></th>
                                                <th scope="col"><%=photo.getName()%></th>
                                                <th scope="col"><%=photo.getDescription()%></th>
                                            	<th scope="col"><a  style='color:black; font-weight:bold;' href='adminEditContentUserPhoto.jsp?photoID=<%=photo.getPhotoID()%>'><button type="button" class="btn mb-1 btn-outline-primary">Edit</buttton></a></th>
                                            	
                                            </tr>
                                           <% i++; } %> 
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    
        <!-- Admin edit user Documents -->        
        <div class="col-lg-10" >
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Document</h4>
                                <div class="table-responsive">
                                    <table class="table header-border table-hover verticle-middle">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">documentID</th>
                                                <th scope="col">name</th>
                                                <th scope="col">description</th>
                                            	<th scope="col"></th>
                                            	
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                            
                                             
                                            ArrayList<Document> documentDeatils = intersda.getDocumentlist(SearchUserID);
                                            
                                            
                                            int a = 1;
            								for(Document doc : documentDeatils){

                                            %>
                                            <tr>
                                                <th scope="col"><%=a%></th>
                                            
                                                <th scope="col"><%=doc.getDocId()%></th>
                                                <th scope="col"><%=doc.getName()%></th>
                                                <th scope="col"><%=doc.getDescription()%></th>
                                            	<th scope="col"><a  style='color:black; font-weight:bold;' href='adminEditContentUserDocument.jsp?docID=<%=doc.getDocId() %>'><button type="button" class="btn mb-1 btn-outline-primary">Edit</buttton></a></th>
                                            	
                                            </tr>
                                           <% a++; } %> 
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                <!-- Admin edit user Audioes -->    
                    <div class="col-lg-10" >
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Audio</h4>
                                <div class="table-responsive">
                                    <table class="table header-border table-hover verticle-middle">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">AudioID</th>
                                                <th scope="col">name</th>
                                                <th scope="col">description</th>
                                            	<th scope="col"></th>
                                            	
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                            
 
                                            ArrayList<Audio> audDetails = intersda.getAudioList(SearchUserID);
                                            
                                            
                                            int j = 1;
            								for(Audio aud : audDetails){

                                            %>
                                            <tr>
                                                <th scope="col"><%=j%></th>
                                            
                                                <th scope="col"><%=aud.getAudioID() %></th>
                                                <th scope="col"><%=aud.getName()%></th>
                                                <th scope="col"><%=aud.getDescription()%></th>
                                            	<th scope="col"><a  style='color:black; font-weight:bold;' href='adminEditContentUserAudio.jsp?audID=<%=aud.getAudioID() %>'><button type="button" class="btn mb-1 btn-outline-primary">Edit</buttton></a></th>
                                            	
                                            </tr>
                                           <% j++; } %> 
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                    <!-- Admin edit user Videos -->
                       <div class="col-lg-10" >
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Video</h4>
                                <div class="table-responsive">
                                    <table class="table header-border table-hover verticle-middle">
                                        <thead>
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">videoID</th>
                                                <th scope="col">name</th>
                                                <th scope="col">description</th>
                                            	<th scope="col"></th>
                                            	
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                            
 
                                            ArrayList<Video> vidDetails = intersda.getVideoList(SearchUserID);
                                            
                                            
                                            int k = 1;
            								for(Video vid : vidDetails){

                                            %>
                                            <tr>
                                                <th scope="col"><%=k%></th>
                                            
                                                <th scope="col"><%=vid.getVideoID() %></th>
                                                <th scope="col"><%=vid.getName()%></th>
                                                <th scope="col"><%=vid.getDescription()%></th>
                                            	<th scope="col"><a  style='color:black; font-weight:bold;' href='adminEditContentUserVideo.jsp?videoID=<%=vid.getVideoID() %>'><button type="button" class="btn mb-1 btn-outline-primary">Edit</buttton></a></th>
                                            	
                                            </tr>
                                           <% k++; } %> 
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    
			 


			</div>
			
			</div>
			<!-- #/ container -->
		    </div>
		
		
		
		
		<!--**********************************
            Content body end
        ***********************************-->

 
		<!--**********************************
            Footer start
        ***********************************-->
		<div class="footer">
			<footer>
			<div class="foot">
				<div>
					<div class="allrights">
						<h3 id="Foot_copyright" style="display: inline">All Rights
							Reserved</h3>
						<img class="iconF1" src="images/footer/callBlue.png"
							style="display: inline">
						<p class="linkF" style="display: inline">01123423453</p>
						<img class="iconF1" src="images/footer/webBlue.png"
							style="display: inline">
						<p class="linkF" style="display: inline">www.mesh.lk</p>
						<img class="iconF1" src="images/footer/placeBlue.png"
							style="display: inline">
						<p class="linkF" style="display: inline">Malabe</p>
					</div>

				</div>

				<div>

					<div>

						<a href="https://www.facebook.com"><img id="fb" class="iconF"
							alt="Facebook" src="images/footer/facebook.png"
							onmouseout="this.src='images/footer/facebook.png'"
							onmouseover="this.src='images/footer/facebookO.png'"></a> <a
							href="https://www.youtube.com"><img id="yt" class="iconF"
							alt="YouTube" src="images/footer/youtube.png"
							onmouseover="this.src='images/footer/youtubeO.png'"
							onmouseout="this.src='images/footer/youtube.png'"></a> <a
							href="https://twitter.com"><img id="tw" class="iconF"
							alt="Twitter" src="images/footer/twitter.png"
							onmouseover="this.src='images/footer/twitterO.png'"
							onmouseout="this.src='images/footer/twitter.png'"></a> <a
							href="https://www.instagram.com"><img id="in" class="iconF"
							alt="Instagram" src="images/footer/instagram.png"
							onmouseover="this.src='images/footer/instagramO.png'"
							onmouseout="this.src='images/footer/instagram.png'"></a>
					</div>

				</div>


			</div>
			</footer>
		</div>
		<!--**********************************
            Footer end
        ***********************************-->
	</div>
	<!--**********************************
        Main wrapper end
    ***********************************-->

	<!--**********************************
        Scripts
    ***********************************-->
	<script src="plugins/common/common.min.js"></script>
	<script src="js/custom.min.js"></script>
	<script src="js/settings.js"></script>
	<script src="js/gleek.js"></script>
	<script src="js/styleSwitcher.js"></script>

	<!-- Chartjs -->
	<script src="./plugins/chart.js/Chart.bundle.min.js"></script>
	<!-- Circle progress -->
	<script src="./plugins/circle-progress/circle-progress.min.js"></script>
	<!-- Datamap -->
	<script src="./plugins/d3v3/index.js"></script>
	<script src="./plugins/topojson/topojson.min.js"></script>
	<script src="./plugins/datamaps/datamaps.world.min.js"></script>
	<!-- Morrisjs -->
	<script src="./plugins/raphael/raphael.min.js"></script>
	<script src="./plugins/morris/morris.min.js"></script>
	<!-- Pignose Calender -->
	<script src="./plugins/moment/moment.min.js"></script>
	<script src="./plugins/pg-calendar/js/pignose.calendar.min.js"></script>
	<!-- ChartistJS -->
	<script src="./plugins/chartist/js/chartist.min.js"></script>
	<script
		src="./plugins/chartist-plugin-tooltips/js/chartist-plugin-tooltip.min.js"></script>



	<script src="./js/dashboard/dashboard-1.js"></script>

</body>
</html>