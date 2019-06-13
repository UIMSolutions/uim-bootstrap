module uim.bs4.components.collapse;

import uim.bs4;

class DBS4Collapse : DBS4Obj {
	mixin(H5This!("DIV", `["collapse"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4Collapse");

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4Collapse == `<div class="collapse"></div>`);
}