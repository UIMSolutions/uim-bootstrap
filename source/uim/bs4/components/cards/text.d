module uim.bs4.components.cards.text;

import uim.bs4;

class DBS4CardText : DBS4Obj {
	mixin(H5This!("P", `["card-text"]`));
	override public void init() {
		super.init;
		_tag = "p";
	}
}
mixin(H5Short!"BS4CardText");
unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4CardText == `<p class="card-text"></p>`);
	assert(BS4CardText.content("SomeThing") == `<p class="card-text">SomeThing</p>`);
}
