module uim.bootstrap.bs5.classes.layout.container;

@safe: 
import uim.bootstrap;

/*
DBS5Container / BS5Container
Containers are containing elements to wrap other elements and contain its grid system. 

Default: A fixed container is a (responsive) fixed width container. 
*/
class DBS5Container : DBS5Obj {
	mixin(H5This!("div", ["container"]));
	unittest {
		assert(BS5Container, `<div class="container"></div>`));
	}

	O fluid(this O)(bool mode = true) { if (mode) _classes = _classes.sub("container").add("container-fluid");  return cast(O)this; }
	unittest {
		assert(BS5Container.fluid(true), `<div class="container-fluid"></div>`));
	}

	mixin(MyContent!("row", "BS5Row"));
	unittest {
		assert(BS5Container.row,`<div class="container"><div class="row"></div></div>`));
	}
}
mixin(H5Calls!("BS5Container"));
