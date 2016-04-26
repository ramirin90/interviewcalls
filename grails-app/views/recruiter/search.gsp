<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main" />
    <style type="text/css">
    #homeSearch {
	margin-left: 30%;
	margin-top: 25px;
	width: 40%;
}

#homeSearch label {
	font-weight: bold;
}
    
    </style>
    <title>Interview Calls Recruiters Search Results</title>
  </head>
  <body>
    <div class="nav" role="navigation">
      <ul>
        <li><a class="home" href="${createLink(uri: '/')}">Home</a></li>
      </ul>
    </div>
    <div id="homeSearch">
      <g:form controller="recruiter" action="search">
        <label>Search:</label>
        <input id="query" type="text" name="query" />
        <input type=submit value="Go" />
      </g:form>
    </div>
    <div id="list-tekEvent" class="content scaffold-list" role="main">
      <h1>Search Results</h1>
      <br />
      <ol class="property-list tekEvent">
        <g:if test="${recruiters}">
          <g:each in="${recruiters}" var="rec">
            <li>
              <g:link action="show" id="${rec.id}">${rec}</g:link>
<%--				<h6>${call}</h6>--%>
<%--				<label>${call}</label>--%>
<%--				<g:link action="show">{call}</g:link>--%>
<%--               <g:link action="show">${call}</g:link>--%>
            </li>
          </g:each>
        </g:if>
        <g:else>
          <h3>No Matching Results Found</h3>
        </g:else>
      </ol>
    </div>
  </body>
</html>
