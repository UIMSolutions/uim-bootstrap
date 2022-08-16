module uim.bootstrap.bs4.components.cards.block;

@safe: 
import uim.bootstrap;

class DBS4CardBlock : DBS4Obj {
	mixin(H5This!("DIV", ["card-block"]));
}

mixin(H5Calls!"BS4CardBlock");
version(test_uim_bootstrap) { unittest {
	assert(BS4CardBlock == `<div class="card-block"></div>`);
}
