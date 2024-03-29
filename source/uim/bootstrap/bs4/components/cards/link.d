﻿module uim.bootstrap.bs4.components.cards.link;

@safe: 
import uim.bootstrap;

class DBS4CardLink : DBS4Obj {
	mixin(H5This!("A", ["card-link"], `["href":"#"]`));
}
mixin(H5Calls!"BS4CardLink");
version(test_uim_bootstrap) { unittest {
	assert(BS4CardLink == `<a class="card-link" href="#"></a>`);
	assert(BS4CardLink(["href":"/go"], "Page") == `<a class="card-link" href="/go">Page</a>`);
	assert(BS4CardLink.addContent("SomeThing") == `<a class="card-link" href="#">SomeThing</a>`);
}}
