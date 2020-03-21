module uim.bootstrap.components.lists.item;

import uim.bootstrap;

class DBS4ListItem : DBS4Obj {
	mixin(H5This!("LI", `["list-group-item"]`));
	override public void _init() {
		super._init;
	}
	O color(this O)(string aColor) { this.classes("list-group-item-"~aColor); return cast(O)this; }
}
mixin(BS4Short!"ListItem");

unittest {
	assert(Assert(BS4ListItem, `<li class="list-group-item"></li>`));
}