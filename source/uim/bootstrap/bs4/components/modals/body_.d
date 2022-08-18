module uim.bootstrap.bs4.components.modals.body_;

@safe: 
import uim.bootstrap;

class DBS4ModalBody : DBS4Obj {
	mixin(H5This!("Div", ["modal-body"]));
}

mixin(H5Calls!"BS4ModalBody");

version(test_uim_bootstrap) { unittest {
	assert(BS4ModalBody == `<div class="modal-body"></div>`);
}}
