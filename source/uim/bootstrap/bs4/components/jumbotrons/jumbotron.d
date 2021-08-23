module uim.bootstrap.bs4.components.jumbotrons.jumbotron;

import uim.bootstrap;

@safe: class DBS4Jumbotron : DBS4Obj {
	mixin(H5This!("Div", ["jumbotron"]));

	unittest {
		assert(Assert(BS4Jumbotron, `<div class="jumbotron"></div>`));
	}
}
mixin(H5Calls!"BS4Jumbotron");

unittest {
}