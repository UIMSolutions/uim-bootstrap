module uim.bootstrap.components.lists.inlineitem;

import uim.bootstrap;

class DBS4ListInlineItem : DBS4Obj {
	mixin(H5This!("LI", `["list-inline-item"]`));
	override public void _init() {
		super._init;
	}
}
mixin(BS4Short!"ListInlineItem");

unittest {
	assert(Assert(BS4ListInlineItem, `<li class="list-inline-item"></li>`));
}