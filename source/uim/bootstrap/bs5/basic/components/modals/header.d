module uim.bootstrap.bs5.basic.components.modals.header;

@safe: 
import uim.bootstrap;

class DBS5ModalHeader : DBS5Obj {
	mixin(H5This!("DIV", ["modal-header"]));
}
mixin(H5Calls!"BS5ModalHeader");

unittest {
	assert(Assert(BS5ModalHeader, `<div class="modal-header"></div>`));
}