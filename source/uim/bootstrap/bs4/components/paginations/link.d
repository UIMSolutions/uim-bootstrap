module uim.bootstrap.bs4.components.paginations.link;

import uim.bootstrap;

@safe: class DBS4PageLink : DBS4Obj {
	mixin(H5This!("A", ["page-link"], `["href":"#"]`));

}
mixin(H5Calls!"BS4PageLink");

unittest {
	

	assert(Assert(BS4PageLink, `<a class="page-link" href="#"></a>`));
}