module uim.bootstrap.bs5.basic.components.modals.modal;

@safe: 
import uim.bootstrap;

class DBS5Modal : DBS5Obj {
	mixin(H5This!("DIV", ["modal"], `["tabindex":"-1", "role":"dialog", "aria-hidden":"true"]`));
	version(test_uim_bootstrap) { unittest {
		assert(BS5Modal == `<div class="modal" aria-hidden="true" role="dialog" tabindex="-1"></div>`);
	}}

	O fade(this O)(bool mode = true) {
		if (mode) _classes ~= "fade";
		return cast(O) this;
	}

	version(test_uim_bootstrap) { unittest {
		assert(
				BS5Modal.fade == `<div class="fade modal" aria-hidden="true" role="dialog" tabindex="-1"></div>`);
	}}
}
mixin(H5Calls!"BS5Modal");

version(test_uim_bootstrap) { unittest {
	assert(BS5Modal == `<div class="modal" aria-hidden="true" role="dialog" tabindex="-1"></div>`);
}}
