PREFIX rsrc: <http://mydomain.org/resource/>
PREFIX onto: <http://dbpedia.org/ontology/>
PREFIX foaf: <http://xmlns.com/foaf/0.1/>

SELECT ?grandparents
FROM <http://mlu.marklogic.com/family-tree>
WHERE {rsrc:Joe onto:parent/onto:parent/foaf:name ?grandparents}
