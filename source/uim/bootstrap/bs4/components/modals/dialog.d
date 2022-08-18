module uim.bootstrap.bs4.components.modals.dialog;

@safe: 
import uim.bootstrap;

class DBS4ModalDialog : DBS4Obj {
	mixin(H5This!("div", ["modal-dialog"], `["role":"document"]`));

	O fade(this O)(bool mode = true) { return this.addClasses("fade"); }
	version(test_uim_bootstrap) { unittest {
		assert(BS4ModalDialog.fade, == `<div class="fade modal-dialog" role="document"></div>`);
	}}

	O size(this O)(string aSize) { return this.addClasses("modal-"~aSize); }
	version(test_uim_bootstrap) { unittest {
		assert(BS4ModalDialog.size("sm"), `<div class="modal-dialog modal-sm" role="document"></div>`);
	}}

	O centered(this O)(bool mode = true) { return this.addClasses("modal-dialog-centered"); }
	version(test_uim_bootstrap) { unittest {
		assert(BS4ModalDialog.centered, == `<div class="modal-dialog modal-dialog-centered" role="document"></div>`);
	}}
}
mixin(H5Calls!"BS4ModalDialog");
version(test_uim_bootstrap) { unittest {
	assert(BS4ModalDialog, == `<div class="modal-dialog" role="document"></div>`);
}}