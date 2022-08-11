module uim.bootstrap.bs5.basic.components.cards.footer;

@safe: 
import uim.bootstrap;

class DBS5CardFooter : DBS5Obj {
	mixin(H5This!("Div", ["card-footer"]));
}

mixin(H5Calls!"BS5CardFooter");
unittest {
	assert(BS5CardFooter);
	assert(BS5CardFooter == `<div class="card-footer"></div>`);
}
