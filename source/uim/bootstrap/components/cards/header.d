module uim.bootstrap.components.cards.header;

import uim.bootstrap;

class DBS4CardHeader : DBS4Obj {
	mixin(H5This!("DIV", `["card-header"]`));
	override public void init() {
		super.init;
	}
}
mixin(BS4Short!"CardHeader");

unittest {
	
	
	assert(BS4CardHeader == `<div class="card-header"></div>`);
}
