module uim.bootstrap.components.jumbotrons.jumbotron;

import uim.bootstrap;

class DBS4Jumbotron : DBS4Obj {
	mixin(H5This!("Div", `["jumbotron"]`));
	override public void init() {
		super.init;
	}
	unittest {
		assert(BS4Jumbotron == `<div class="jumbotron"></div>`);
	}
}
mixin(BS4Short!"Jumbotron");

unittest {
}