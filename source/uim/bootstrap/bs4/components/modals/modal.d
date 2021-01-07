module uim.bootstrap.bs4.components.modals.modal;

import uim.bootstrap;

class DBS4Modal : DBS4Obj {
	mixin(H5This!("DIV", ["modal"], `["tabindex":"-1", "role":"dialog", "aria-hidden":"true"]`));
	unittest {
		assert(Assert(BS4Modal, `<div class="modal" aria-hidden="true" role="dialog" tabindex="-1"></div>`));
	}

	O fade(this O)(bool mode = true) {
		if (mode) _classes ~= "fade";
		return cast(O) this;
	}

	unittest {
		assert(Assert(
				BS4Modal.fade, `<div class="fade modal" aria-hidden="true" role="dialog" tabindex="-1"></div>`));
	}
}
mixin(H5Calls!"BS4Modal");
unittest {
	assert(Assert(BS4Modal, `<div class="modal" aria-hidden="true" role="dialog" tabindex="-1"></div>`));
}
