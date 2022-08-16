module uim.bootstrap.bs4.components.collapses.link;

@safe: 
import uim.bootstrap;

class DBS4CollapseLink : DBS4Obj {
	mixin(H5This!("a", ["btn"], `["data-toggle":"collapse", "role":"button"]`));
}
mixin(H5Calls!"BS4CollapseLink");

version(test_uim_bootstrap) { unittest {
	assert(BS4CollapseLink == `<a class="btn" data-toggle="collapse" role="button"></a>`);
}}