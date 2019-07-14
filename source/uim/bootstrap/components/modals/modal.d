module uim.bootstrap.components.modals.modal;

import uim.bootstrap;

class DBS4Modal : DBS4Obj {
	mixin(H5This!("DIV", `["modal"]`, `["tabindex":"-1", "role":"dialog", "aria-hidden":"true"]`));
	override public void init() {
		super.init;
	}
	unittest {
		assert(BS4Modal == `<div class="modal" aria-hidden="true" role="dialog" tabindex="-1"></div>`);
	}

	O fade(this O)(bool mode = true) { return this.classes("fade"); }
	unittest {
		assert(BS4Modal.fade == `<div class="fade modal" aria-hidden="true" role="dialog" tabindex="-1"></div>`);	
	}
}
mixin(H5Short!"BS4Modal");

