module uim.bootstrap.components.cards.columns;

import uim.bootstrap;

class DBS4CardColumns : DBS4Obj {
	mixin(H5This!("DIV", `["card-columns"]`));
	override public void _init() {
		super._init;
	}
}
mixin(BS4Short!"CardColumns");
unittest {
	assert(BS4CardColumns == `<div class="card-columns"></div>`);
}
