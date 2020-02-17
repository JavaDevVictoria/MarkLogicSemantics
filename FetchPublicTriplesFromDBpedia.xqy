let $sparql := xdmp:url-encode("SELECT * WHERE { <http://dbpedia.org/resource/Pink_Floyd> <http://dbpedia.org/ontology/formerBandMember> ?o }")

return xdmp:http-get(fn:concat("http://dbpedia.org/sparql?query=", $sparql))
