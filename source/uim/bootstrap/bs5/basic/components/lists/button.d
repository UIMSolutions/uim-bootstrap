module uim.bootstrap.bs5.basic.components.lists.button;

@safe: 
import uim.bootstrap;

class DBS5ListButton : DBS5Obj {
	mixin(H5This!("button", ["list-group-item", "list-group-item-action"], `["type":"button"]`));

	/// Set button to active
	O active(this O)(bool value = true) { this.classes("active"); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS5ListButton.active, `<button class="active list-group-item list-group-item-action" type="button"></button>`);
	}}

	/// Set button to disabled
	O disabled(this O)(bool value = true) { _attributes["disabled"] = "true"; return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS5ListButton.disabled, `<button class="list-group-item list-group-item-action" disabled type="button"></button>`);
	}}

	/// Set button color
	O color(this O)(string aColor) { this.classes("list-group-item-"~aColor); return cast(O)this; }
}
mixin(H5Calls!"BS5ListButton");

version(test_uim_bootstrap) { unittest {
	assert(BS5ListButton, `<button class="list-group-item list-group-item-action" type="button"></button>`);
	assert(BS5ListButton.active, `<button class="active list-group-item list-group-item-action" type="button"></button>`);
	assert(BS5ListButton.disabled, `<button class="list-group-item list-group-item-action" disabled type="button"></button>`);
}}