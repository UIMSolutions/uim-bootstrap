module uim.bootstrap.bs5.basic.components.cards.block;

@safe: 
import uim.bootstrap;

class DBS5CardBlock : DBS5Obj {
	mixin(H5This!("DIV", ["card-block"]));
}

mixin(H5Calls!"BS5CardBlock");
version(test_uim_bootstrap) { unittest {
	assert(BS5CardBlock);
	assert(BS5CardBlock == `<div class="card-block"></div>`);
}}
