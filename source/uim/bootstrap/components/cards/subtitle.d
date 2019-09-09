module uim.bootstrap.components.cards.subtitle;

import uim.bootstrap;

class DBS4CardSubtitle : DBS4Obj {
	mixin(H5This!("H6", `["card-subtitle"]`));
	override public void _init() {
		super._init;
		_tag = "h6";
	}
}
mixin(BS4Short!"CardSubtitle");

unittest {
	
	
	assert(BS4CardSubtitle == `<h6 class="card-subtitle"></h6>`);
	assert(BS4CardSubtitle.content("SomeThing") == `<h6 class="card-subtitle">SomeThing</h6>`);
}
