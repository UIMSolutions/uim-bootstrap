module uim.bootstrap.bs5.classes.simple.components.modals.content;

import uim.bootstrap;

class DBS5ModalContent : DBS5Obj {
	mixin(H5This!("DIV", ["modal-content"]));

	O fade(this O)(bool mode = true) { return this.classes("fade"); }
}
mixin(H5Calls!"BS5ModalContent");
unittest {
	assert(Assert(BS5ModalContent, `<div class="modal-content"></div>`));
}