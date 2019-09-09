module uim.bootstrap.layout.container;

import uim.bootstrap;

/*
DBS4Container / BS4Container
Containers are containing elements to wrap other elements and contain its grid system. 

Default: A fixed container is a (responsive) fixed width container. 
*/
class DBS4Container : DH5Div {
	mixin(BS4This!("Container", `["container"]`));
	unittest {
		assert(BS4Container == `<div class="container"></div>`);
	}

	O fluid(this O)(bool mode) { if (mode) {_classes.sub("container"); return this.classes("container-fluid"); } return cast(O)this; }
	unittest {
		assert(BS4Container.fluid(true) == `<div class="container-fluid"></div>`);
	}

	mixin(MyContent!("row", "BS4Row"));
	unittest {
		assert(BS4Container.row == `<div class="container"><div class="row"></div></div>`);
	}
}
mixin(BS4Func!("Container"));
