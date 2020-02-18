declare namespace sem = "http://marklogic.com/semantics";

xdmp:node-replace(//sem:triple/sem:object[. eq "http://example.org/news/United_States"],
 <sem:object>http://example.org/news/United_States_of_America</sem:object>) 
