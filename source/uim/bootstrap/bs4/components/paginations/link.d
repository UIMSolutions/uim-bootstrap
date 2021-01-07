module uim.bootstrap.bs4.components.paginations.link;

import uim.bootstrap;

class DBS4PageLink : DBS4Obj {
	mixin(H5This!("A", ["page-link"], `["href":"#"]`));
	override public void _init() {
		super._init;
	}
}
mixin(H5Calls!"BS4PageLink");

unittest {
	

	assert(Assert(BS4PageLink, `<a class="page-link" href="#"></a>`));
}