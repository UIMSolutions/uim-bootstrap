module uim.bootstrap.bs4.components.cards.body_;

import uim.bootstrap;

class DBS4CardBody : DBS4Obj {
	mixin(H5This!("DIV", ["card-body"]));

	mixin(MyContent!("title", "BS4CardTitle"));
	unittest {
		assert(Assert(BS4CardBody.title("Hallo"),`<div class="card-body"><h4 class="card-title">Hallo</h4></div>`));
	}

	mixin(MyContent!("text", "BS4CardText"));
	unittest {
		assert(Assert(BS4CardBody.text("Hallo"),`<div class="card-body"><p class="card-text">Hallo</p></div>`));
	}
}
mixin(H5Calls!"BS4CardBody");
unittest {
	assert(Assert(BS4CardBody,`<div class="card-body"></div>`));
}
