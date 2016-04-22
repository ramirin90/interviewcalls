<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main"/>
    <title>InterviewCalls - The web site to schedule interview calls !</title>
    <style type="text/css" media="screen">
    
/*Dashboard*/
.dashItem {
	margin: 10px;
}

#eventBlurb {
	width: 100%;
	height: 60px;
}

#dashHeader {
	text-align: center;
}
/*Index*/
#homeSearch {
	margin-left: 30%;
	margin-top: 25px;
	width: 40%;
}

#homeSearch label {
	font-weight: bold;
}

#welcome {
	margin-left: 25px;
	width: 85%;
}

.homeCell {
	margin-left: 25px;
	margin-top: 65px;
	width: 85%;
}

.homeCell .buttons {
	width: 180px;
	text-align: center;
	float: right;
	margin-right: 30px;
	margin-bottom: 30px;
}

h3, li {
	margin-bottom: 15px;
}
/*Message Create*/
.messageField {
	width: 550px
}
/*Ajaxlist*/
#messageList {
	margin: 20px 30px;
	overflow: auto
}

#messageList p {
	margin: 10px 0;
}

#show-message {
	margin: 20px 30px;
}

#detailHeading {
	margin-left: 30px;
	margin-bottom: 15px;
}
/*Volunteer Dialog*/
#volunteerDialog .ui-widget-header {
	color: #ABBF78;
	background-image: none;
	color: #000;
}
    
    
    </style>
  </head>
  <body>
    <div id="welcome">
      <br />
      <h3>Welcome to InterviewCalls.com</h3>
      <p>InterviewCalls.com is a site dedicated to assisting technology companies to sheldule interview calls.  To bring great
         minds with common interests and passions together for the good
         of greater geekdom!</p>
    </div>
    <div id="homeSearch">
      <g:form controller="interviewCall" action="search">
        <label>Search:</label>
        <input id="query" type="text" name="query" />
        <input type=submit value="Go" />
      </g:form>
    </div>
<%--    <g:organizerEvents />--%>
<%--    <g:volunteerEvents />--%>
    <div class="homeCell">
      <h3>Register a new Candidate</h3>
      <p> You can create new candidates to participate in the interviews</p>
      </div>
      <div class="homeCell">
       <h3>Register a new Interviewer</h3>
      <p> You can register Interviewers to interview the candidates</p>
      </div>
       <div class="homeCell">
       <h3>Register a new Interview Call</h3>
      <p> You can register Interview Calls joining a Candidate and an Interviewer</p>
      </div>
      <br>
      <br>
      <br>
<%--      <span class="buttons" >--%>
<%--        <g:link controller="interviewCall" action="create">new interview call</g:link>--%>
<%--      </span>--%>
<%--    	</div>--%>
<%--    <div class="homeCell">--%>
<%--      <h3>Manage candidates</h3>--%>
<%--      <p>If you don't see anything that suits your interest and location,--%>
<%--         then why not get the ball rolling.  It's easy to get started and--%>
<%--         there may be others out there ready to get behind you to make it--%>
<%--         happen.</p>--%>
<%--      <span class="buttons" >--%>
<%--        <g:link controller="candidate" action="index">candidate list</g:link>--%>
<%--      </span>--%>
<%--    </div>--%>
<%--    <div class="homeCell">--%>
<%--      <h3>Manage Interviewer</h3> --%>
<%--      <p>If you are part of a business or organization that is involved in--%>
<%--         technology then sponsoring a tek event would be a great way to--%>
<%--         let the community know that you're there and you're involved.</p>--%>
<%--      <span class="buttons" >--%>
<%--        <g:link controller="interviewer" action="index">interviewer list</g:link>--%>
<%--      </span>--%>
<%--    </div>--%>
    
  </body>
</html>
