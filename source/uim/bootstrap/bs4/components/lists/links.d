module uim.bootstrap.bs4.components.lists.links;

@safe: 
import uim.bootstrap;

class DBS4ListLinks : DBS4Obj {
	mixin(H5This!("Div", ["list-group"]));

	mixin(MyContent!("link", "BS4ListLink"));
	mixin(MyContent!("button", "BS4ListButton"));
}
mixin(H5Calls!"BS4ListLinks");

version(test_uim_bootstrap) { unittest {
	assert(BS4ListLinks == `<div class="list-group"></div>`);
}}