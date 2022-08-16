module uim.bootstrap.bs4.components.breadcrumbs.link;

@safe: 
import uim.bootstrap;

class DBS4BreadcrumbLink : DBS4Obj {	
	mixin(H5This!("A", null, null));

}
mixin(H5Calls!"BS4BreadcrumbLink");

version(test_uim_bootstrap) { unittest {
	assert(BS4BreadcrumbLink == `<a></a>`);
}}
