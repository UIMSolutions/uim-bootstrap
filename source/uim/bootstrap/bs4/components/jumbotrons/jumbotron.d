module uim.bootstrap.bs4.components.jumbotrons.jumbotron;

@safe: 
import uim.bootstrap;

class DBS4Jumbotron : DBS4Obj {
	mixin(H5This!("Div", ["jumbotron"]));

	unittest {
		assert(BS4Jumbotron, `<div class="jumbotron"></div>`));
	}
}
mixin(H5Calls!"BS4Jumbotron");

unittest {
}