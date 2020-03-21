module uim.bootstrap.components.lists.list;

import uim.bootstrap;

/// An unordered list with list items
class DBS4List : DBS4Obj {
	mixin(H5This!("UL", ["list-group"]));

	// Removes some borders and rounded corners to render group in a parent container
	O flush(this O)() {
		this.classes("list-group-flush");
		return cast(O)this;
	}

	// Add a list item
	mixin(MyContent!("item", "BS4ListItem"));
	unittest {
		assert(Assert(BS4List.item, `<ul class="list-group"><li class="list-group-item"></li></ul>`));
		assert(Assert(BS4List.item("test"), `<ul class="list-group"><li class="list-group-item">test</li></ul>`));
	}
}

mixin(H5Calls!"BS4List");
unittest {
	assert(Assert(BS4List, `<ul class="list-group"></ul>`));
	assert(Assert(BS4List(BS4ListItem), `<ul class="list-group"><li class="list-group-item"></li></ul>`));
	assert(Assert(BS4List(H5.li), `<ul class="list-group"><li></li></ul>`));
}
