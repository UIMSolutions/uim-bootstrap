module uim.bs4.layout.container;

import uim.bs4;

class DBS4Container : DH5DIV {
	mixin(BS4This!("Container", `["container"]`));
	
	O fluid(this O)(bool mode = true) { if (mode) {_classes.sub("container"); return this.classes("container-fluid"); } return cast(O)this; }
	mixin(MyContent!("row", "BS4Row"));
}
mixin(BS4Func!("Container"));

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4Container == `<div class="container"></div>`);
}