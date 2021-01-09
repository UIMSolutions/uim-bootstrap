module uim.bootstrap.bs5.classes.components.lists.inlineitem;

import uim.bootstrap;

class DBS5ListInlineItem : DBS5Obj {
	mixin(H5This!("LI", ["list-inline-item"]));
}
mixin(H5Calls!"BS5ListInlineItem");

unittest {
	assert(Assert(BS5ListInlineItem, `<li class="list-inline-item"></li>`));
}