module uim.bs4.components.paginations.link;

import uim.bs4;

class DBS4PageLink : DBS4Obj {
	mixin(H5This!("A", `["page-link"]`, `["href":"#"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4PageLink");

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4PageLink == `<a class="page-link" href="#"></a>`);
}