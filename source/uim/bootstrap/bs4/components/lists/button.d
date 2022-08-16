module uim.bootstrap.bs4.components.lists.button;

@safe: 
import uim.bootstrap;

class DBS4ListButton : DBS4Obj {
	mixin(H5This!("button", ["list-group-item", "list-group-item-action"], null));

	/// Set button to active
	O active(this O)(bool value = true) { this.addClasses("active"); return cast(O)this; }

	/// Set button to disabled
	O disabled(this O)(bool value = true) { _attributes["disabled"] = "disabled"; return cast(O)this; }

	/// Set button color
	O color(this O)(string aColor) { this.addClasses("list-group-item-"~aColor); return cast(O)this; }
}
mixin(H5Calls!"BS4ListButton");

version(test_uim_bootstrap) { unittest {
	assert(BS4ListButton == `<button class="list-group-item list-group-item-action"></button>`);
	assert(BS4ListButton.active == `<button class="active list-group-item list-group-item-action"></button>`);
	assert(BS4ListButton.disabled == `<button class="list-group-item list-group-item-action" disabled></button>`);
}}