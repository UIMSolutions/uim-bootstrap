module uim.bootstrap.components.cards.footer;

import uim.bootstrap;

class DBS4CardFooter : DBS4Obj {
	mixin(H5This!("Div", ["card-footer"]));
}

mixin(H5Calls!"BS4CardFooter");
unittest {
	assert(Assert(BS4CardFooter,`<div class="card-footer"></div>`));
}
