module uim.bootstrap.components.modals.button;

import uim.bootstrap;

class DBS4ModalButton : DBS4Obj {
	mixin(H5This!("BUTTON", `["btn"]`, `["data-toggle":"modal"]`));
	override public void init() {
		super.init;
	}
	O target(this O)(string targetId) { _attributes["data-target"] = "#"~targetId;  return cast(O)this; }
	O backdrop(this O)(bool modeBackdrop = true) { _attributes["data-backdrop"] = "static"; return cast(O)this; }
	O keyboard(this O)(bool mode = true) { if (mode == false) _attributes["data-keyboard"] = "false"; 
		return cast(O)this;
	}
}
mixin(H5Short!"BS4ModalButton");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4ModalButton == `<button class="list-group-item list-group-item-action"></button>`);
//	assert(BS4ModalButton.active == `<button class="active list-group-item list-group-item-action"></button>`);
//	assert(BS4ModalButton.disabled == `<button class="list-group-item list-group-item-action" disabled></button>`);
}