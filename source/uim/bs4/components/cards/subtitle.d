module uim.bs4.components.cards.subtitle;

import uim.bs4;

class DBS4CardSubtitle : DBS4Obj {
	mixin(H5This!("H6", `["card-subtitle"]`));
	override public void init() {
		super.init;
		_tag = "h6";
	}
}
mixin(H5Short!"BS4CardSubtitle");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4CardSubtitle == `<h6 class="card-subtitle"></h6>`);
	assert(BS4CardSubtitle.content("SomeThing") == `<h6 class="card-subtitle">SomeThing</h6>`);
}
