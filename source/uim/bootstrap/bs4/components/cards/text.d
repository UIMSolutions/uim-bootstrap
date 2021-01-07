module uim.bootstrap.bs4.components.cards.text;

import uim.bootstrap;

class DBS4CardText : DBS4Obj {
	mixin(H5This!("P", ["card-text"]));
}
mixin(H5Calls!"BS4CardText");

unittest {
	assert(Assert(BS4CardText, `<p class="card-text"></p>`));
	assert(Assert(BS4CardText.content("SomeThing"), `<p class="card-text">SomeThing</p>`));
}
