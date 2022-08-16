module uim.bootstrap.bs4.components.paginations.link;

@safe: 
import uim.bootstrap;

class DBS4PageLink : DBS4Obj {
	mixin(H5This!("A", ["page-link"], `["href":"#"]`));
}
mixin(H5Calls!"BS4PageLink");

version(test_uim_bootstrap) { unittest {
	assert(BS4PageLink == `<a class="page-link" href="#"></a>`);
}}