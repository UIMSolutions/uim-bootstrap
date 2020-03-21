module uim.bootstrap.components.lists.inlineitem;

import uim.bootstrap;

class DBS4ListInlineItem : DBS4Obj {
	mixin(H5This!("LI", ["list-inline-item"]));
}
mixin(H5Calls!"BS4ListInlineItem");

unittest {
	assert(Assert(BS4ListInlineItem, `<li class="list-inline-item"></li>`));
}