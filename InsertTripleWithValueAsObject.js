declareUpdate();
var sem = require('/MarkLogic/semantics.xqy');

sem.rdfInsert(sem.triple(
sem.iri('http://dbpedia.org/resource/Moneyball_(film)'),
sem.iri('http://www.w3.org/2000/01/rdf-schema#comment'),
'Moneyball is a 2011 American film based on the Michael Lewis 2003 nonfiction book of the same name, providing an account of the Oakland Athletics baseball team 2002 season and attempts by their general manager Billy Beane to assemble a competitive team.'),
'override-graph=http://mlu.marklogic.com/movies');
