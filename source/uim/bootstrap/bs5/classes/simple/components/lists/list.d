module uim.bootstrap.bs5.classes.simple.components.lists.list;

import uim.bootstrap;

/// An unordered list with list items
class DBS5List : DBS5Obj {
	mixin(H5This!("UL", ["list-group"]));

	// Removes some borders and rounded corners to render group in a parent container
	O flush(this O)() {
		this.classes("list-group-flush");
		return cast(O)this;
	}

	// Add a list item
	mixin(MyContent!("item", "BS5ListItem"));
	unittest {
		assert(Assert(BS5List.item, `<ul class="list-group"><li class="list-group-item"></li></ul>`));
		assert(Assert(BS5List.item("test"), `<ul class="list-group"><li class="list-group-item">test</li></ul>`));
	}

	mixin(MyContent!("link", "this.item", "BS5ListLink"));
	unittest {
		assert(Assert(BS5List.link, `<ul class="list-group"><li class="list-group-item"><a class="list-group-item list-group-item-action"></a></li></ul>`));
	}

}

mixin(H5Calls!"BS5List");
unittest {
	assert(Assert(BS5List, `<ul class="list-group"></ul>`));
	assert(Assert(BS5List(BS5ListItem), `<ul class="list-group"><li class="list-group-item"></li></ul>`));
	assert(Assert(BS5List(H5.li), `<ul class="list-group"><li></li></ul>`));
}
