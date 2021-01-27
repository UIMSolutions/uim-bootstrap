module uim.bootstrap.bs5.classes.simple.components.cards.subtitle;

import uim.bootstrap;

class DBS5CardSubtitle : DBS5Obj {
	mixin(H5This!("H6", ["card-subtitle"]));
	override public void _init() {
		super._init;
		_tag = "h6";
	}
}
mixin(H5Calls!"BS5CardSubtitle");
///
unittest {
	assert(Assert(BS5CardSubtitle, `<h6 class="card-subtitle"></h6>`));
	assert(Assert(BS5CardSubtitle.content("SomeThing"), `<h6 class="card-subtitle">SomeThing</h6>`));
}
