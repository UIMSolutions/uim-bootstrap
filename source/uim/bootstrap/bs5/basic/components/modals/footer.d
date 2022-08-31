module uim.bootstrap.bs5.basic.components.modals.footer;

@safe: 
import uim.bootstrap;

class DBS5ModalFooter : DBS5Obj {
	mixin(H5This!("DIV", ["modal-footer"]));
}
mixin(H5Calls!"BS5ModalFooter");

version(test_uim_bootstrap) { unittest {
	assert(BS5ModalFooter == `<div class="modal-footer"></div>`);
}}