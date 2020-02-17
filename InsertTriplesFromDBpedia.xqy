import module namespace sem = "http://marklogic.com/semantics" at "/MarkLogic/semantics.xqy";

let $sparql := xdmp:url-encode("SELECT * WHERE { <http://dbpedia.org/resource/Pink_Floyd> <http://dbpedia.org/ontology/formerBandMember> ?o }")

return
  for $uri in xdmp:http-get(fn:concat("http://dbpedia.org/sparql?query=", $sparql))//*:uri/text()
  let $triples := sem:triple(sem:iri("http://dbpedia.org/resource/Pink_Floyd"),
                            sem:iri("http://dbpedia.org/ontology/formerBandMember"),
                            sem:iri($uri))
  return sem:rdf-insert($triples, "override-graph=http://mlu.marklogic.com/music")
