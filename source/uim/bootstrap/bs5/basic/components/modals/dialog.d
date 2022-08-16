module uim.bootstrap.bs5.basic.components.modals.dialog;

@safe: 
import uim.bootstrap;

class DBS5ModalDialog : DBS5Obj {
	mixin(H5This!("div", ["modal-dialog"], `["role":"document"]`));

	O fade(this O)(bool mode = true) { return this.classes("fade"); }
	version(test_uim_bootstrap) { unittest {
		assert(BS5ModalDialog.fade, `<div class="fade modal-dialog" role="document"></div>`);
	}}

	O size(this O)(string aSize) { return this.classes("modal-"~aSize); }
	version(test_uim_bootstrap) { unittest {
		assert(BS5ModalDialog.size("sm"), `<div class="modal-dialog modal-sm" role="document"></div>`);
	}}

	O centered(this O)(bool mode = true) { return this.classes("modal-dialog-centered"); }
	version(test_uim_bootstrap) { unittest {
		assert(BS5ModalDialog.centered, `<div class="modal-dialog modal-dialog-centered" role="document"></div>`);
	}}
}
mixin(H5Calls!"BS5ModalDialog");

version(test_uim_bootstrap) { unittest {
	assert(BS5ModalDialog, `<div class="modal-dialog" role="document"></div>`);
}}