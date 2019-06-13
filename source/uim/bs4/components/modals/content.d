module uim.bs4.components.modals.content;

import uim.bs4;

class DBS4ModalContent : DBS4Obj {
	mixin(H5This!("DIV", `["modal-content"]`));
	override public void init() {
		super.init;
	}
	O fade(this O)(bool mode = true) { return this.classes("fade"); }
}
mixin(H5Short!"BS4ModalContent");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4ModalContent == `<div class="modal-content"></div>`);
}