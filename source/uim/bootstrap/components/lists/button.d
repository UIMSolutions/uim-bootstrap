module uim.bootstrap.components.lists.button;

import uim.bootstrap;

class DBS4ListGroupButton : DBS4Obj {
	mixin(H5This!("BUTTON", `["list-group-item list-group-item-action"]`));
	override public void _init() {
		super._init;
	}
	O active(this O)(bool value = true) { this.classes("active"); return cast(O)this; }
	O disabled(this O)(bool value = true) { _attributes["disabled"] = "true"; return cast(O)this; }

	O color(this O)(string aColor) { this.classes("list-group-item-"~aColor); return cast(O)this; }
}
mixin(BS4Short!"ListGroupButton");

unittest {
	
	
	assert(BS4ListGroupButton == `<button class="list-group-item list-group-item-action"></button>`);
	assert(BS4ListGroupButton.active == `<button class="active list-group-item list-group-item-action"></button>`);
	assert(BS4ListGroupButton.disabled == `<button class="list-group-item list-group-item-action" disabled></button>`);
}