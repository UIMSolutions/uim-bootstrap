module uim.bootstrap.bs5.basic.components.modals.title;

import uim.bootstrap;

@safe: class DBS5ModalTitle : DBS5Obj {
	mixin(H5This!("H5", ["modal-title"]));
}
mixin(H5Calls!"BS5ModalTitle");

unittest {
	assert(Assert(BS5ModalTitle, `<h5 class="modal-title"></h5>`));
}