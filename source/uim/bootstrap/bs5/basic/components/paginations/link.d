module uim.bootstrap.bs5.basic.components.paginations.link;

@safe: 
import uim.bootstrap;

class DBS5PageLink : DBS5Obj {
	mixin(H5This!("A", ["page-link"], `["href":"#"]`));

  override void initialize () {
    super.initialize();
  }
}
mixin(H5Calls!"BS5PageLink");

version(test_uim_bootstrap) { unittest {
	assert(BS5PageLink);
	assert(BS5PageLink == `<a class="page-link" href="#"></a>`);
}