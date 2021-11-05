module uim.bootstrap.bs5.basic.components.lists.links;

import uim.bootstrap;

@safe: class DBS5ListLinks : DBS5Obj {
	mixin(H5This!("Div", ["list-group"]));

	mixin(MyContent!("item", "BS5ListDivItem"));
	mixin(MyContent!("link", "BS5ListLink"));
	mixin(MyContent!("button", "BS5ListButton"));
}
mixin(H5Calls!"BS5ListLinks");

unittest {
	assert(Assert(BS5ListLinks, `<div class="list-group"></div>`));
	assert(Assert(BS5ListLinks.item, `<div class="list-group"><div class="list-group-item"></div></div>`));
}