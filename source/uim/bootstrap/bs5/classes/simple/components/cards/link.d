module uim.bootstrap.bs5.classes.simple.components.cards.link;

import uim.bootstrap;

class DBS5CardLink : DBS5Obj {
	mixin(H5This!("A", ["card-link"], `["href":"#"]`));
}
mixin(H5Calls!"BS5CardLink");
unittest {
	assert(Assert(BS5CardLink, `<a class="card-link" href="#"></a>`));
	assert(Assert(BS5CardLink(["href":"/go"], "Page"), `<a class="card-link" href="/go">Page</a>`));
	assert(Assert(BS5CardLink.content("SomeThing"), `<a class="card-link" href="#">SomeThing</a>`));
}
