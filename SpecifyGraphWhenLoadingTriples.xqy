import module namespace sem = "http://marklogic.com/semantics" at "/MarkLogic/semantics.xqy";

sem:rdf-load("/home/cent/Desktop/mls-semantics/unit03/ntriples-more.nt", ("ntriple", "graph=http://mlu.marklogic.com/movies"))
