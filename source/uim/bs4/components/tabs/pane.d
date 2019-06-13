module uim.bs4.components.tabs.pane;

import uim.bs4;

class DBS4TabPane : DBS4Obj {
	mixin(H5This!("DIV", `["tab-pane"]`, `["role":"tabpanel", "aria-expanded":"false"]`));
	override public void init() {
		super.init;
	}
	O active(this O)(bool value = true) { _classes.add("active"); _attributes["aria-expanded"] = "true"; return cast(O)this; }
	O fade(this O)(bool value = true) { _classes.add("fade"); return cast(O)this; }
}
mixin(H5Short!"BS4TabPane");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4TabPane == `<div class="tab-pane"></div>`);
	assert(BS4TabPane.active == `<div class="active tab-pane"></div>`);
	assert(BS4TabPane.fade == `<div class="fade tab-pane"></div>`);
}