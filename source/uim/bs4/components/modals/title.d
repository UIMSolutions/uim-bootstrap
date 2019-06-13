module uim.bs4.components.modals.title;

import uim.bs4;

class DBS4ModalTitle : DBS4Obj {
	mixin(H5This!("H5", `["modal-title"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4ModalTitle");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4ModalTitle == `<h5 class="modal-title"></h5>`);
}