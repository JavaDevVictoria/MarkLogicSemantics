import module namespace sem = "http://marklogic.com/semantics" at "/MarkLogic/semantics.xqy";

sem:graph-add-permissions(
  sem:iri("http://mlu.marklogic.com/registr"), (xdmp:permission("role", "read"))
)
