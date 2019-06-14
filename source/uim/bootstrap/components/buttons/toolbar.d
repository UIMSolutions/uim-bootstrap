module uim.bootstrap.components.buttons.toolbar;

import uim.bootstrap;

class DBS4ButtonToolbar : DBS4Obj {
	mixin(H5This!("DIV", `["btn-toolbar"]`, `["role":"toolbar"]`));
	override public void init() {
		super.init;
	}
	mixin(MyAttribute!("label", "aria-label"));
	mixin(MyContent!("group", "BS4ButtonGroup"));
}
mixin(H5Short!"BS4ButtonToolbar");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4ButtonToolbar == `<div class="btn-toolbar" role="toolbar"></div>`);
	assert(BS4ButtonToolbar.label("hallo") == `<div class="btn-toolbar" aria-label="hallo" role="toolbar"></div>`);
}