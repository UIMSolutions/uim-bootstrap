module uim.bootstrap.components.modals.body_;

import uim.bootstrap;

class DBS4ModalBody : DBS4Obj {
	mixin(H5This!("H5", `["modal-body"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4ModalBody");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4ModalBody == `<h5 class="modal-body"></h5>`);
}