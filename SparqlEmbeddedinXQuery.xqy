import module namespace sem = "http://marklogic.com/semantics" at "/MarkLogic/semantics.xqy";

sem:sparql(
             "PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>

              SELECT ?courseLabel
              WHERE {?course rdfs:label ?courseLabel}"
)
