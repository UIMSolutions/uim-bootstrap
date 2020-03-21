module uim.bootstrap.components.cards.subtitle;

import uim.bootstrap;

class DBS4CardSubtitle : DBS4Obj {
	mixin(H5This!("H6", ["card-subtitle"]));
	override public void _init() {
		super._init;
		_tag = "h6";
	}
}
mixin(H5Calls!"BS4CardSubtitle");
///
unittest {
	assert(Assert(BS4CardSubtitle, `<h6 class="card-subtitle"></h6>`));
	assert(Assert(BS4CardSubtitle.content("SomeThing"), `<h6 class="card-subtitle">SomeThing</h6>`));
}
