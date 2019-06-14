module uim.bootstrap.components.modals.dialog;

import uim.bootstrap;

class DBS4ModalDialog : DBS4Obj {
	mixin(H5This!("DIV", `["modal-dialog"]`, `["role":"document"]`));
	override public void init() {
		super.init;
	}
	O fade(this O)(bool mode = true) { return this.classes("fade"); }
	O size(this O)(string aSize) { return this.classes("modal-"~aSize); }
	O centered(this O)(bool mode = true) { return this.classes("modal-dialog-centered"); }
}
mixin(H5Short!"BS4ModalDialog");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4ModalDialog == `<div class="modal-dialog"></div>`);
	assert(BS4ModalDialog.fade == `<div class="fade modal-dialog"></div>`);
	assert(BS4ModalDialog.size("sm") == `<div class="modal-dialog modal-sm"></div>`);
	assert(BS4ModalDialog.centered == `<div class="modal-dialog modal-dialog-centered"></div>`);
}