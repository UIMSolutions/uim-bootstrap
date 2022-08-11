module uim.bootstrap.bs5.basic.components.cards.text;

@safe: 
import uim.bootstrap;

class DBS5CardText : DBS5Obj {
	mixin(H5This!("P", ["card-text"]));
}
mixin(H5Calls!"BS5CardText");

unittest {
	assert(BS5CardText, `<p class="card-text"></p>`);
	assert(BS5CardText.content("SomeThing"), `<p class="card-text">SomeThing</p>`);
}
