import module namespace sem = "http://marklogic.com/semantics" at
"/MarkLogic/semantics.xqy";

declare namespace s = "http://www.w3.org/2005/sparql-results#";

let $map := map:map()
let $_ := map:put($map, "courselabel", "MarkLogic Fundamentals")

return
  for $email in sem:query-results-serialize(sem:sparql(
        "PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
         PREFIX mlu: <http://mlu.marklogic.com/ontology/>

         SELECT ?student
         WHERE {?course rdfs:label $courselabel . ?course mlu:student ?student}",
        $map), "xml")//s:uri/text()

  return fn:substring-after($email, "/resource/")
