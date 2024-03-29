﻿module uim.bootstrap.bs5.basic.components.modals.content;

@safe: 
import uim.bootstrap;

class DBS5ModalContent : DBS5Obj {
	mixin(H5This!("DIV", ["modal-content"]));

	O fade(this O)(bool mode = true) { return this.addClasses("fade"); }

	mixin(MyContent!("header", "BS5ModalHeader"));
	mixin(MyContent!("body_", "BS5ModalBody"));
	mixin(MyContent!("footer", "BS5ModalFooter"));
}
mixin(H5Calls!"BS5ModalContent");

version(test_uim_bootstrap) { unittest {
	assert(BS5ModalContent == `<div class="modal-content"></div>`);
}}