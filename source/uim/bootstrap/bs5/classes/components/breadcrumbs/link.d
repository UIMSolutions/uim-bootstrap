module uim.bootstrap.bs5.classes.components.breadcrumbs.link;

import uim.bootstrap;

class DBS5BreadcrumbLink : DBS5Obj {	
	mixin(H5This!("A", null, null));

}
mixin(H5Calls!"BS5BreadcrumbLink");

unittest {
	assert(Assert(BS5BreadcrumbLink,`<a></a>`));
}
