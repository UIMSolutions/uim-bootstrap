﻿module uim.bootstrap.bs5.basic.components.breadcrumbs.link;

@safe: 
import uim.bootstrap;

class DBS5BreadcrumbLink : DBS5Obj {	
	mixin(H5This!("A", null, null));

}
mixin(H5Calls!"BS5BreadcrumbLink");

unittest {
	assert(Assert(BS5BreadcrumbLink,`<a></a>`));
}
