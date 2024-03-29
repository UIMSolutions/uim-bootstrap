﻿module uim.bootstrap.bs5.basic.components.forms.controls.submit;

@safe: 
import uim.bootstrap; 

class DBS5InputSubmit : DBS5Input {
	mixin(H5This!("Input", ["form-control"], `["type":"submit"]`));
	override void initialize() {
		super.initialize;
		_single = true;
	}
}
mixin(H5Calls!("BS5InputSubmit"));

version(test_uim_bootstrap) { unittest {
  assert(BS5InputSubmit == `<input class="form-control" type="submit">`);
}}
