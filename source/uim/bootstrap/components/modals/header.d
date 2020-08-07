module uim.bootstrap.components.modals.header;

import uim.bootstrap;

class DBS4ModalHeader : DBS4Obj {
	mixin(H5This!("DIV", ["modal-header"]));
}
mixin(H5Calls!"BS4ModalHeader");

unittest {
	assert(Assert(BS4ModalHeader, `<div class="modal-header"></div>`));
}