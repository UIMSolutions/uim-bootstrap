module uim.bootstrap.bs5.classes.components.lists.links;

import uim.bootstrap;

class DBS5ListLinks : DBS5Obj {
	mixin(H5This!("Div", ["list-group"]));
	override public void _init() {
		super._init;
	}
	mixin(MyContent!("link", "BS5ListGroupLink"));
	mixin(MyContent!("button", "BS5ListGroupButton"));
}
mixin(H5Calls!"BS5ListLinks");

unittest {
	assert(Assert(BS5ListLinks, `<div class="list-group"></div>`));
}