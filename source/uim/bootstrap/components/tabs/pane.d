module uim.bootstrap.components.tabs.pane;

import uim.bootstrap;

class DBS4TabPane : DBS4Obj {
	mixin(H5This!("DIV", `["tab-pane"]`, `["role":"tabpanel", "aria-expanded":"false"]`));
	override public void init() {
		super.init;
	}
	unittest {
		assert(BS4TabPane == `<div class="tab-pane" aria-expanded="false" role="tabpanel"></div>`);
	}	

	O active(this O)(bool value = true) { _classes.add("active"); _attributes["aria-expanded"] = "true"; return cast(O)this; }
	unittest {
		assert(BS4TabPane.active == `<div class="active tab-pane" aria-expanded="true" role="tabpanel"></div>`);
	}
	
	O fade(this O)(bool value = true) { _classes.add("fade"); return cast(O)this; }
	unittest {
		assert(BS4TabPane.fade == `<div class="fade tab-pane" aria-expanded="false" role="tabpanel"></div>`);
	}
}
mixin(H5Short!"BS4TabPane");

unittest {
}