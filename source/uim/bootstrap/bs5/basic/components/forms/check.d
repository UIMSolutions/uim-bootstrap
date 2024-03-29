﻿module uim.bootstrap.bs5.basic.components.forms.check;

@safe: 
import uim.bootstrap;

class DBS5FormCheck : DBS5Obj {
	mixin(H5This!("Div", ["form-check"]));
	mixin(TProperty!("string", "forId"));

	O inline(this O)(bool mode = true) { if (mode) this.addClasses("form-check-inline"); return cast(O)this; }
	
	mixin(MyContent!("label", "BS5FormCheckLabel"));
}
mixin(H5Calls!"BS5FormCheck");

version(test_uim_bootstrap) { unittest {
	assert(BS5FormCheck);
	assert(BS5FormCheck == `<div class="form-check"></div>`);
  assert(BS5FormCheck.inline == `<div class="form-check form-check-inline"></div>`);	
}}
