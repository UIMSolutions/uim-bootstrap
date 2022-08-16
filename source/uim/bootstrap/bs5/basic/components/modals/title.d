module uim.bootstrap.bs5.basic.components.modals.title;

@safe: 
import uim.bootstrap;

class DBS5ModalTitle : DBS5Obj {
	mixin(H5This!("H5", ["modal-title"]));
}
mixin(H5Calls!"BS5ModalTitle");

version(test_uim_bootstrap) { unittest {
	assert(BS5ModalTitle, `<h5 class="modal-title"></h5>`);
}