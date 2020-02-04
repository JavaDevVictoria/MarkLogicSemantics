import module namespace sem = "http://marklogic.com/semantics" at "/MarkLogic/semantics.xqy";

sem:rdf-insert(sem:triple(
sem:iri("http://dbpedia.org/resource/Moneyball_(film)"), sem:iri("http://dbpedia.org/ontology/producer"),
sem:iri("http://dbpedia.org/resource/Michael_De_Luca")), "override-graph=http://mlu.marklogic.com/movies")
