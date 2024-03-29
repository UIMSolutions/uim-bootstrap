﻿module uim.bootstrap.bs5.basic.components.forms.controls.email;

@safe: 
import uim.bootstrap; 

class DBS5InputEmail : DBS5Input {
	mixin(H5This!(null, null, `["type":"email"]`));

  override void initialize (Json aConfig = Json(null)) {
    super.initialize(aConfig);
  }
}
mixin(H5Calls!("BS5InputEmail"));

version(test_uim_bootstrap) { unittest {
  assert(BS5InputEmail == `<input class="form-control" type="email">`);
}}
