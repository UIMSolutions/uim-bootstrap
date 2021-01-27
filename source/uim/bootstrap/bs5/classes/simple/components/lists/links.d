module uim.bootstrap.bs5.classes.simple.components.lists.links;

import uim.bootstrap;

class DBS5ListLinks : DBS5Obj {
	mixin(H5This!("Div", ["list-group"]));
	override public void _init() {
		super._init;
	}
	mixin(MyContent!("link", "BS5ListLink"));
	mixin(MyContent!("button", "BS5ListButton"));
}
mixin(H5Calls!"BS5ListLinks");

unittest {
	assert(Assert(BS5ListLinks, `<div class="list-group"></div>`));
}