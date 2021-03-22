module uim.bootstrap.bs5.basic.components.paginations.link;

import uim.bootstrap;

@safe: class DBS5PageLink : DBS5Obj {
	mixin(H5This!("A", ["page-link"], `["href":"#"]`));
	override public void _init() {
		super._init;
	}
}
mixin(H5Calls!"BS5PageLink");

unittest {
	

	assert(Assert(BS5PageLink, `<a class="page-link" href="#"></a>`));
}