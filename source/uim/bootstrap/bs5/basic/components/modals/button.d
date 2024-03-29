﻿module uim.bootstrap.bs5.basic.components.modals.button;

@safe: 
import uim.bootstrap;

class DBS5ModalButton : DBS5Obj {
	mixin(H5This!("Button", ["btn"], `["data-toggle":"modal"]`));

	O target(this O)(string targetId) { _attributes["data-target"] = "#"~targetId;  return cast(O)this; }
	O backdrop(this O)(bool modeBackdrop = true) { _attributes["data-backdrop"] = "static"; return cast(O)this; }
	O keyboard(this O)(bool mode = true) { if (mode == false) _attributes["data-keyboard"] = "false"; 
		return cast(O)this;
	}
}
mixin(H5Calls!"BS5ModalButton");
version(test_uim_bootstrap) { unittest {
	// assert(BS5ModalButton == `<div class="modal" aria-hidden="true" role="dialog" tabindex="-1"></div>`);
}}