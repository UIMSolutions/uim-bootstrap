module uim.bootstrap.bs5.basic.components.paginations.link;

@safe: 
import uim.bootstrap;

class DBS5PageLink : DBS5Obj {
	mixin(H5This!("A", ["page-link"], `["href":"#"]`));

}
mixin(H5Calls!"BS5PageLink");

unittest {
	

	assert(BS5PageLink, `<a class="page-link" href="#"></a>`);
}