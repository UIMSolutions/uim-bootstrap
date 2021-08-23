﻿module uim.bootstrap.bs4.components.lists.inline;

import uim.bootstrap;

/// An unordered list with list items
@safe: class DBS4ListInline : DBS4Obj {
	mixin(H5This!("UL", ["list-inline"]));

	mixin(MyContent!("item", "BS4ListInlineItem"));
	unittest {
		assert(Assert(BS4ListInline.item, `<ul class="list-inline"><li class="list-inline-item"></li></ul>`));
		assert(Assert(BS4ListInline.item("test"), `<ul class="list-inline"><li class="list-inline-item">test</li></ul>`));
	}
}
mixin(H5Calls!"BS4ListInline");

unittest {
	assert(Assert(BS4ListInline,  `<ul class="list-inline"></ul>`));
}
