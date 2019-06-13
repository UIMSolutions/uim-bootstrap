module uim.bs4.components.cards.header;

import uim.bs4;

class DBS4CardHeader : DBS4Obj {
	mixin(H5This!("DIV", `["card-header"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4CardHeader");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4CardHeader == `<div class="card-header"></div>`);
}
