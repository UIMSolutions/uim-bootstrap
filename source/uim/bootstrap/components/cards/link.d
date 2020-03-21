module uim.bootstrap.components.cards.link;

import uim.bootstrap;

class DBS4CardLink : DBS4Obj {
	mixin(H5This!("A", `["card-link"]`, `["href":"#"]`));
}
mixin(BS4Short!"CardLink");
unittest {
	assert(Assert(BS4CardLink, `<a class="card-link" href="#"></a>`));
	assert(Assert(BS4CardLink(["href":"/go"], "Page"), `<a class="card-link" href="/go">Page</a>`));
	assert(Assert(BS4CardLink.content("SomeThing"), `<a class="card-link" href="#">SomeThing</a>`));
}
