module uim.bs4.components.modals.header;

import uim.bs4;

class DBS4ModalHeader : DBS4Obj {
	mixin(H5This!("DIV", `["modal-header"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4ModalHeader");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4ModalHeader == `<div class="modal-header"></div>`);
}