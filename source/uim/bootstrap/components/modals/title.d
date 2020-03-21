module uim.bootstrap.components.modals.title;

import uim.bootstrap;

class DBS4ModalTitle : DBS4Obj {
	mixin(H5This!("H5", `["modal-title"]`));
}
mixin(BS4Short!"ModalTitle");

unittest {
	assert(Assert(BS4ModalTitle, `<h5 class="modal-title"></h5>`));
}