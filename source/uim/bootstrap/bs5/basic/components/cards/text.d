module uim.bootstrap.bs5.basic.components.cards.text;

import uim.bootstrap;

@safe: class DBS5CardText : DBS5Obj {
	mixin(H5This!("P", ["card-text"]));
}
mixin(H5Calls!"BS5CardText");

unittest {
	assert(Assert(BS5CardText, `<p class="card-text"></p>`));
	assert(Assert(BS5CardText.content("SomeThing"), `<p class="card-text">SomeThing</p>`));
}
