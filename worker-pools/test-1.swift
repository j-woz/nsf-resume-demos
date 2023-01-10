
/** TEST 1 SWIFT */

app (void v) hostname()
{
  "hostname" ;
}

trace("WORKFLOW START") =>
  trace("hostname:")    =>
  hostname()            =>
  trace("workers: " + turbine_workers());
