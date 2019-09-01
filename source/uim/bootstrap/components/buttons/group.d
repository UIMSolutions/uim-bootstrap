module uim.bootstrap.components.buttons.group;

import uim.bootstrap;

class DBS4Buttongroup : DBS4Obj {
	mixin(H5This!("DIV", `["btn-group"]`, `["role":"group"]`));
	override public void init() {
		super.init;
	}
	mixin(MyAttribute!("label", "aria-label"));

	mixin(MyContent!("button", "BS4Button"));
	mixin(MyContent!("link", "BS4ButtonLink"));
}
mixin(BS4Short!"Buttongroup");

unittest {
	
	
	assert(BS4Buttongroup == `<div class="btn-group" role="group"></div>`);
}