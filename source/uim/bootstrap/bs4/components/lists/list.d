module uim.bootstrap.bs4.components.lists.list;

@safe: 
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
		assert(BS4List.item, `<ul class="list-group"><li class="list-group-item"></li></ul>`));
		assert(BS4List.item("test"), `<ul class="list-group"><li class="list-group-item">test</li></ul>`));
	}

	mixin(MyContent!("link", "this.item", "BS4ListLink"));
	unittest {
		assert(BS4List.link, `<ul class="list-group"><li class="list-group-item"><a class="list-group-item list-group-item-action"></a></li></ul>`));
	}

}

mixin(H5Calls!"BS4List");
unittest {
	assert(BS4List, `<ul class="list-group"></ul>`));
	assert(BS4List(BS4ListItem), `<ul class="list-group"><li class="list-group-item"></li></ul>`));
	assert(BS4List(H5.li), `<ul class="list-group"><li></li></ul>`));
}
