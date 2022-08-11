module uim.bootstrap.bs5.basic.components.jumbotrons.jumbotron;

@safe: 
import uim.bootstrap;

class DBS5Jumbotron : DBS5Obj {
	mixin(H5This!("Div", ["jumbotron"]));

	unittest {
		assert(BS5Jumbotron, `<div class="jumbotron"></div>`));
	}
}
mixin(H5Calls!"BS5Jumbotron");

unittest {
}