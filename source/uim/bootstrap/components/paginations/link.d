module uim.bootstrap.components.paginations.link;

import uim.bootstrap;

class DBS4PageLink : DBS4Obj {
	mixin(H5This!("A", `["page-link"]`, `["href":"#"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4PageLink");

unittest {
	

	assert(BS4PageLink == `<a class="page-link" href="#"></a>`);
}