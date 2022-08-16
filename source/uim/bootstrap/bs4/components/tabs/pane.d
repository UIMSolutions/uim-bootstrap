﻿module uim.bootstrap.bs4.components.tabs.pane;

@safe: 
import uim.bootstrap;

class DBS4TabPane : DBS4Obj {
	mixin(H5This!("DIV", ["tab-pane"], `["role":"tabpanel", "aria-expanded":"false"]`));

	version(test_uim_bootstrap) { unittest {
		assert(BS4TabPane, `<div class="tab-pane" aria-expanded="false" role="tabpanel"></div>`);
	}	

	O active(this O)(bool value = true) { if (value) { this.classes("active").attributes("aria-expanded", "true"); } return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS4TabPane.active, `<div class="active tab-pane" aria-expanded="true" role="tabpanel"></div>`);
	}
	
	O fade(this O)(bool value = true) { if (value) this.classes("fade"); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS4TabPane.fade, `<div class="fade tab-pane" aria-expanded="false" role="tabpanel"></div>`);
	}
}
mixin(H5Calls!"BS4TabPane");

version(test_uim_bootstrap) { unittest {
}