﻿module uim.bootstrap.bs5.basic.components.forms.controls.url;

@safe: 
import uim.bootstrap; 

class DBS5InputUrl : DBS5Input {
  mixin(H5This!("", null, `["type":"url"]`));

  override void initialize (Json aConfig = Json(null)) {
    super.initialize(aConfig);
  }
}
mixin(H5Calls!("BS5InputUrl"));
 
version(test_uim_bootstrap) { unittest {
   assert(BS5InputUrl == `<input class="form-control" type="url">`);
}}
