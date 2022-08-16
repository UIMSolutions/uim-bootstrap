module uim.bootstrap.bs5.basic.components.cards.link;

@safe: 
import uim.bootstrap;

class DBS5CardLink : DBS5Obj {
	mixin(H5This!("A", ["card-link"], `["href":"#"]`));
}
mixin(H5Calls!"BS5CardLink");
version(test_uim_bootstrap) { unittest {
	assert(BS5CardLink, `<a class="card-link" href="#"></a>`);
	assert(BS5CardLink(["href":"/go"], "Page"), `<a class="card-link" href="/go">Page</a>`);
	assert(BS5CardLink.content("SomeThing"), `<a class="card-link" href="#">SomeThing</a>`);
}
