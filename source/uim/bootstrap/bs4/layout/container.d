module uim.bootstrap.bs4.layout.container;

@safe: 
import uim.bootstrap;

/*
DBS4Container / BS4Container
Containers are containing elements to wrap other elements and contain its grid system. 

Default: A fixed container is a (responsive) fixed width container. 
*/
class DBS4Container : DBS4Obj {
	mixin(H5This!("div", ["container"]));
	version(test_uim_bootstrap) { unittest {
		assert(BS4Container == `<div class="container"></div>`);
	}}

	O fluid(this O)(bool mode = true) { if (mode) _classes = _classes.sub("container").add("container-fluid");  return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS4Container.fluid(true) == `<div class="container-fluid"></div>`);
	}}

	mixin(MyContent!("row", "BS4Row"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4Container.row == `<div class="container"><div class="row"></div></div>`);
	}}
}
mixin(H5Calls!("BS4Container"));
