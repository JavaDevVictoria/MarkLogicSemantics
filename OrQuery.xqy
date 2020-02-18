import module namespace sem = "http://marklogic.com/semantics" at "/MarkLogic/semantics.xqy";

sem:sparql(
  'SELECT ?country WHERE {<http://example.org/news/Obama> <http://example.org/visited> ?country}',
  (), (),
  cts:or-query((cts:word-query("island"), cts:word-query("agenda"))))
