﻿module uim.bootstrap.bs5.basic.components.forms.controls.file;

@safe: 
import uim.bootstrap; 

class DBS5InputFile : DBS5Input {
	mixin(H5This!(null, ["form-control"], `["type":"file"]`));

  override void initialize (Json aConfig = Json(null)) {
    super.initialize(aConfig);
  }
}
mixin(H5Calls!("BS5InputFile"));

version(test_uim_bootstrap) { unittest {
	assert(BS5InputFile == `<input class="form-control" type="file">`);
}}
