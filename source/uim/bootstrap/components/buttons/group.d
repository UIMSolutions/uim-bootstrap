module uim.bootstrap.components.buttons.group;

import uim.bootstrap;

class DBS4ButtonGroup : DBS4Obj {
	mixin(H5This!("DIV", `["btn-group"]`, `["role":"group"]`));
	override public void init() {
		super.init;
	}
	mixin(MyAttribute!("label", "aria-label"));

	mixin(MyContent!("button", "BS4Button"));
	mixin(MyContent!("link", "BS4ButtonLink"));
}
mixin(H5Short!"BS4ButtonGroup");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4ButtonGroup == `<div class="btn-group" role="group"></div>`);
}