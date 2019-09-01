module uim.bootstrap.components.cards.text;

import uim.bootstrap;

class DBS4CardText : DBS4Obj {
	mixin(H5This!("P", `["card-text"]`));
	override public void init() {
		super.init;
		_tag = "p";
	}
}
mixin(BS4Short!"CardText");
unittest {
	
	
	assert(BS4CardText == `<p class="card-text"></p>`);
	assert(BS4CardText.content("SomeThing") == `<p class="card-text">SomeThing</p>`);
}
