module uim.bootstrap.bs4.components.collapses.collapse;

@safe: 
import uim.bootstrap;

class DBS4Collapse : DBS4Obj {
	mixin(H5This!("Div", ["collapse"]));
}
mixin(H5Calls!"BS4Collapse");

version(test_uim_bootstrap) { unittest {
	assert(BS4Collapse == `<div class="collapse"></div>`);
}}