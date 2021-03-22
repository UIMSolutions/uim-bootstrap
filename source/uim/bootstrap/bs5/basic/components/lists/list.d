module uim.bootstrap.bs5.basic.components.lists.list;

import uim.bootstrap;

/// An unordered list with list items
@safe: class DBS5List : DBS5Obj {
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

	// Add a list link
	mixin(MyContent!("link", "BS5ListLink"));
	unittest {
		assert(Assert(BS5List.link, `<ul class="list-group"><a class="list-group-item list-group-item-action"></a></ul>`));
	}

	// Add a list button
	mixin(MyContent!("button", "BS5ListButton"));
	unittest {
		assert(Assert(BS5List.button, `<ul class="list-group"><button class="list-group-item list-group-item-action" type="button"></button></ul>`));
	}
}

mixin(H5Calls!"BS5List");
unittest {
	assert(Assert(BS5List, `<ul class="list-group"></ul>`));
	assert(Assert(BS5List(BS5ListItem), `<ul class="list-group"><li class="list-group-item"></li></ul>`));
	assert(Assert(BS5List.item, `<ul class="list-group"><li class="list-group-item"></li></ul>`));
	assert(Assert(BS5List(H5.li), `<ul class="list-group"><li></li></ul>`));
}
