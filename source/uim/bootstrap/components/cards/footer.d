module uim.bootstrap.components.cards.footer;

import uim.bootstrap;

class DBS4CardFooter : DBS4Obj {
	mixin(H5This!("DIV", `["card-footer"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4CardFooter");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4CardFooter == `<div class="card-footer"></div>`);
}
