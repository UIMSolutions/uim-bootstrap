module uim.bootstrap.bs4.components.modals.title;

@safe: 
import uim.bootstrap;

class DBS4ModalTitle : DBS4Obj {
	mixin(H5This!("H5", ["modal-title"]));
}
mixin(H5Calls!"BS4ModalTitle");

version(test_uim_bootstrap) { unittest {
	assert(BS4ModalTitle, `<h5 class="modal-title"></h5>`);
}}