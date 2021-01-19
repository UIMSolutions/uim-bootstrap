module uim.bootstrap.bs5.demos.layout;

import uim.bootstrap;

/// Standard Bootstrap 5 Layout 
class BS5Layout : DH5AppLayout {
  /// Basic Constructor
  this() {
    super();
    
    this
    .metas(
      ["charset":"utf-8"],
      ["http-equiv":"X-UA-Compatible", "content":"IE=edge"],
      ["name":"viewport", "content":"width=device-width, initial-scale=1"], 
      ["http-equiv":"Content-Type", "content":"text/html; charset=utf-8"],
      )
    .styles(
      ["href":"/lib/bootstrap/5.0.0-beta1/css/bootstrap.min.css", "rel":"stylesheet"], 
      ["href":"/lib/font-awesome/last/css/all.css", "rel":"stylesheet"],
      )
    .libraries(
      ["src":"/lib/bootstrap/5.0.0-beta1/js/bootstrap.bundle.min.js"], 
      )
    .title("Demo - Bootstrap 5");
  }        
}
