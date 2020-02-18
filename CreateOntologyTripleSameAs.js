declareUpdate();
var sem = require('/MarkLogic/semantics.xqy');

sem.rdfInsert(sem.triple(
sem.iri('http://mlu.marklogic.com/navy'),
sem.iri('http://www.w3.org/2002/07/owl#sameAs'),
sem.iri('http://mlu.marklogic.com/blue')),
'override-graph=http://mlu.marklogic.com/products'); 
