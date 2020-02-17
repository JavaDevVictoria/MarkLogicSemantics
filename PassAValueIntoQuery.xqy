import module namespace sem = "http://marklogic.com/semantics" at
"/MarkLogic/semantics.xqy";

let $map := map:map()
let $_ := map:put($map, "courselabel", "MarkLogic Fundamentals")

return sem:sparql(
"PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

 SELECT ?course
 WHERE {?course rdfs:label $courselabel}", $map
)
