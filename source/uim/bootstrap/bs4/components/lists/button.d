module uim.bootstrap.bs4.components.lists.button;

import uim.bootstrap;

class DBS4ListGroupButton : DBS4Obj {
	mixin(H5This!("button", ["list-group-item", "list-group-item-action"], null));

	/// Set button to active
	O active(this O)(bool value = true) { this.classes("active"); return cast(O)this; }
	unittest {
		assert(Assert(BS4ListGroupButton.disabled, `<button class="list-group-item list-group-item-action" disabled></button>`));
	}

	/// Set button to disabled
	O disabled(this O)(bool value = true) { _attributes["disabled"] = "true"; return cast(O)this; }
	unittest {
		assert(Assert(BS4ListGroupButton.disabled, `<button class="list-group-item list-group-item-action" disabled></button>`));
	}

	/// Set button color
	O color(this O)(string aColor) { this.classes("list-group-item-"~aColor); return cast(O)this; }
}
mixin(H5Calls!"BS4ListGroupButton");

unittest {
	assert(Assert(BS4ListGroupButton, `<button class="list-group-item list-group-item-action"></button>`));
	assert(Assert(BS4ListGroupButton.active, `<button class="active list-group-item list-group-item-action"></button>`));
	assert(Assert(BS4ListGroupButton.disabled, `<button class="list-group-item list-group-item-action" disabled></button>`));
}