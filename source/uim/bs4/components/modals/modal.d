module uim.bs4.components.modals.modal;

import uim.bs4;

class DBS4Modal : DBS4Obj {
	mixin(H5This!("DIV", `["modal"]`, `["tabindex":"-1", "role":"dialog", "aria-hidden":"true"]`));
	override public void init() {
		super.init;
	}
	O fade(this O)(bool mode = true) { return this.classes("fade"); }
}
mixin(H5Short!"BS4Modal");

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4Modal == `<div class="modal"></div>`);
	assert(BS4Modal.fade == `<div class="fade modal"></div>`);
}