sem:sparql("
PREFIX mlu: <http://mlu.marklogic.com/>
SELECT ?s
FROM <http://mlu.marklogic.com/products>
WHERE {?s mlu:color mlu:blue}
",
(),
(),
sem:ruleset-store("sameAs.rules", sem:store())) 
