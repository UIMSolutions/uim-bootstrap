module uim.bootstrap.bs4.components.breadcrumbs.link;

import uim.bootstrap;

class DBS4BreadcrumbLink : DBS4Obj {	
	mixin(H5This!("A", null, null));

}
mixin(H5Calls!"BS4BreadcrumbLink");

unittest {
	assert(Assert(BS4BreadcrumbLink,`<a></a>`));
}
