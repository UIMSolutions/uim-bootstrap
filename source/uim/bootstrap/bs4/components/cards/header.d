module uim.bootstrap.bs4.components.cards.header;

@safe: 
import uim.bootstrap;


/// CardHeader adds a header to a card
class DBS4CardHeader : DBS4Obj {
	mixin(H5This!("DIV", ["card-header"]));
}
mixin(H5Calls!"BS4CardHeader");
unittest {
	assert(Assert(BS4CardHeader,`<div class="card-header"></div>`));
}
