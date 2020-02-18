declareUpdate();
var sem = require('/MarkLogic/semantics.xqy');

sem.rdfInsert(sem.triple( sem.iri('http://mlu.marklogic.com/blouse'), sem.iri('http://www.w3.org/TR/rdf-schema/subClassOf'), sem.iri('http://mlu.marklogic.com/shirt')),
'override-graph=http://mlu.marklogic.com/products');
