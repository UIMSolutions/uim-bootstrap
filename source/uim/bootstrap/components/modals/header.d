module uim.bootstrap.components.modals.header;

import uim.bootstrap;

class DBS4ModalHeader : DBS4Obj {
	mixin(H5This!("DIV", `["modal-header"]`));
	override public void init() {
		super.init;
	}
}
mixin(BS4Short!"ModalHeader");

unittest {
	
	
	assert(BS4ModalHeader == `<div class="modal-header"></div>`);
}