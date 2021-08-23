﻿module uim.bootstrap.bs4.components.tabs.pane;

import uim.bootstrap;

@safe: class DBS4TabPane : DBS4Obj {
	mixin(H5This!("DIV", ["tab-pane"], `["role":"tabpanel", "aria-expanded":"false"]`));

	unittest {
		assert(Assert(BS4TabPane, `<div class="tab-pane" aria-expanded="false" role="tabpanel"></div>`));
	}	

	O active(this O)(bool value = true) { if (value) { this.classes("active").attributes("aria-expanded", "true"); } return cast(O)this; }
	unittest {
		assert(Assert(BS4TabPane.active, `<div class="active tab-pane" aria-expanded="true" role="tabpanel"></div>`));
	}
	
	O fade(this O)(bool value = true) { if (value) this.classes("fade"); return cast(O)this; }
	unittest {
		assert(Assert(BS4TabPane.fade, `<div class="fade tab-pane" aria-expanded="false" role="tabpanel"></div>`));
	}
}
mixin(H5Calls!"BS4TabPane");

unittest {
}