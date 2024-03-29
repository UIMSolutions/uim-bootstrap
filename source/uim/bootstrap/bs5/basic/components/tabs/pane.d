﻿module uim.bootstrap.bs5.basic.components.tabs.pane;

@safe: 
import uim.bootstrap;

class DBS5TabPane : DBS5Obj {
	mixin(H5This!("DIV", ["tab-pane"], `["role":"tabpanel", "aria-expanded":"false"]`));

	version(test_uim_bootstrap) { unittest {
		assert(BS5TabPane == `<div class="tab-pane" aria-expanded="false" role="tabpanel"></div>`);
	}}	

	O active(this O)(bool value = true) { if (value) { this.addClasses("active").attributes("aria-expanded", "true"); } return cast(O)this; }
	
	O fade(this O)(bool value = true) { if (value) this.addClasses("fade"); return cast(O)this; }
}
mixin(H5Calls!"BS5TabPane");

version(test_uim_bootstrap) { unittest {
	assert(BS5TabPane.active == `<div class="active tab-pane" aria-expanded="true" role="tabpanel"></div>`);
	assert(BS5TabPane.fade == `<div class="fade tab-pane" aria-expanded="false" role="tabpanel"></div>`);
}}