declare namespace sem = "http://marklogic.com/semantics";

xdmp:node-insert-child(fn:doc("obama_visits_cuba.xml")/article/sem:triples,  <sem:triple>
  <sem:subject>http://example.org/news/Obama</sem:subject>   <sem:predicate>http://example.org/leaderOf</sem:predicate>   <sem:object>http://example.org/news/United_States</sem:object>
 </sem:triple>)
