module uim.bootstrap.components.cards.body_;

import uim.bootstrap;

class DBS4CardBody : DBS4Obj {
	mixin(H5This!("DIV", `["card-body"]`));

	mixin(MyContent!("title", "BS4CardTitle"));
	mixin(MyContent!("text", "BS4CardText"));
}
mixin(H5Short!"BS4CardBody");

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4CardBlock == `<div class="card-body"></div>`);
}
