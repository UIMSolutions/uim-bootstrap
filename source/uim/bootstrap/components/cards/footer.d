module uim.bootstrap.components.cards.footer;

import uim.bootstrap;

class DBS4CardFooter : DBS4Obj {
	mixin(H5This!("Div", `["card-footer"]`));
}

mixin(BS4Short!"CardFooter");
///
unittest {
	assert(BS4CardFooter == `<div class="card-footer"></div>`);
}
