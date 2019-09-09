module uim.bootstrap.components.modals.footer;

import uim.bootstrap;

class DBS4ModalFooter : DBS4Obj {
	mixin(H5This!("H5", `["modal-footer"]`));
	override public void _init() {
		super._init;
	}
}
mixin(BS4Short!"ModalFooter");

unittest {
	
	
	assert(BS4ModalFooter == `<h5 class="modal-footer"></h5>`);
}