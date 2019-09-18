module uim.bootstrap.components.modals.footer;

import uim.bootstrap;

class DBS4ModalFooter : DBS4Obj {
	mixin(H5This!("DIV", `["modal-footer"]`));
	override public void _init() {
		super._init;
	}
}
mixin(BS4Short!"ModalFooter");

unittest {
	
	
	assert(BS4ModalFooter == `<div class="modal-footer"></div>`);
}