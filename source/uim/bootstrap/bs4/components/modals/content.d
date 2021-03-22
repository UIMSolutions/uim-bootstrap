module uim.bootstrap.bs4.components.modals.content;

import uim.bootstrap;

@safe: class DBS4ModalContent : DBS4Obj {
	mixin(H5This!("DIV", ["modal-content"]));

	O fade(this O)(bool mode = true) { return this.classes("fade"); }
}
mixin(H5Calls!"BS4ModalContent");
unittest {
	assert(Assert(BS4ModalContent, `<div class="modal-content"></div>`));
}