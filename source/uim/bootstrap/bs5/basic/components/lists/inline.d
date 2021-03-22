﻿module uim.bootstrap.bs5.basic.components.lists.inline;

import uim.bootstrap;

/// An unordered list with list items
@safe: class DBS5ListInline : DBS5Obj {
	mixin(H5This!("UL", ["list-inline"]));

	mixin(MyContent!("item", "BS5ListInlineItem"));
	unittest {
		assert(Assert(BS5ListInline.item, `<ul class="list-inline"><li class="list-inline-item"></li></ul>`));
		assert(Assert(BS5ListInline.item("test"), `<ul class="list-inline"><li class="list-inline-item">test</li></ul>`));
	}
}
mixin(H5Calls!"BS5ListInline");

unittest {
	assert(Assert(BS5ListInline,  `<ul class="list-inline"></ul>`));
}
