module uim.bootstrap.bs5.basic.components.modals.header;

@safe: 
import uim.bootstrap;

class DBS5ModalHeader : DBS5Obj {
	mixin(H5This!("DIV", ["modal-header"]));
}
mixin(H5Calls!"BS5ModalHeader");

version(test_uim_bootstrap) { unittest {
	assert(BS5ModalHeader == `<div class="modal-header"></div>`);
}}