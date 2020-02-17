xquery version "1.0-ml";



import module namespace sem = "http://marklogic.com/semantics" at "/MarkLogic/semantics.xqy"; 



declare namespace s = "http://www.w3.org/2005/sparql-results#";



xdmp:set-response-content-type("text/html; charset=utf-8"),

'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',

<html>

	<head>

		<title>Display course names</title>

	</head>



	<body>



		<form name="form1" method="get" action="index.xqy" id="form1">

			<p>Courses: </p>

			<select name="course" id="course">

			{

			  for $c in sem:query-results-serialize(sem:sparql(

					"PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#> 

					SELECT ?courseLabel 

					WHERE {?course rdfs:label ?courseLabel}"), "xml")//s:literal/text()

				

			  return if ($c = xdmp:get-request-field("course"))

				 then <option value="{$c}" selected="selected"> {$c} </option>

				 else <option value="{$c}"> {$c} </option>

			}				

			</select>

			<input type="submit" name="submitbtn" id="submitbtn" value="go"/>

		</form>



		<p>

		{

		 let $map := map:map()

		 let $_ := map:put($map, "courselabel", xdmp:get-request-field("course", "none"))



		 return 

		     for $email in sem:query-results-serialize(sem:sparql(

				"PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#> 

				 PREFIX mlu: <http://mlu.marklogic.com/ontology/>



				 SELECT ?student 

				 WHERE {?course rdfs:label $courselabel . ?course mlu:student ?student}", 

				$map), "xml")//s:uri/text()



		     return (fn:substring-after($email, "/resource/"), <br/>)

		}

		</p>		 



	</body>

</html>
