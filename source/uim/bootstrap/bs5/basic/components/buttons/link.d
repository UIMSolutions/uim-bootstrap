﻿module uim.bootstrap.bs5.basic.components.buttons.link;

@safe: 
import uim.bootstrap;

class DBS5ButtonLink : DBS5Obj {
	mixin(H5This!("A", ["btn"], `["role":"button"]`));

	O disabled(this O)() {
		this.addClasses(["disabled"]).attributes(["tabindex":"-1", "aria-disabled":"true"]);
		return cast(O)this;
	}
	version(test_uim_bootstrap) { unittest {
		// TODO
	}}
}
mixin(H5Calls!"BS5ButtonLink");

version(test_uim_bootstrap) { unittest {
	assert(BS5ButtonLink == `<a class="btn" role="button"></a>`);
}}
	

