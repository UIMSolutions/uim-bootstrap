module uim.bootstrap.bs4.components.lists.button;

import uim.bootstrap;

class DBS4ListButton : DBS4Obj {
	mixin(H5This!("button", ["list-group-item", "list-group-item-action"], null));

	/// Set button to active
	O active(this O)(bool value = true) { this.classes("active"); return cast(O)this; }
	unittest {
		assert(Assert(BS4ListButton.disabled, `<button class="list-group-item list-group-item-action" disabled></button>`));
	}

	/// Set button to disabled
	O disabled(this O)(bool value = true) { _attributes["disabled"] = "true"; return cast(O)this; }
	unittest {
		assert(Assert(BS4ListButton.disabled, `<button class="list-group-item list-group-item-action" disabled></button>`));
	}

	/// Set button color
	O color(this O)(string aColor) { this.classes("list-group-item-"~aColor); return cast(O)this; }
}
mixin(H5Calls!"BS4ListButton");

unittest {
	assert(Assert(BS4ListButton, `<button class="list-group-item list-group-item-action"></button>`));
	assert(Assert(BS4ListButton.active, `<button class="active list-group-item list-group-item-action"></button>`));
	assert(Assert(BS4ListButton.disabled, `<button class="list-group-item list-group-item-action" disabled></button>`));
}