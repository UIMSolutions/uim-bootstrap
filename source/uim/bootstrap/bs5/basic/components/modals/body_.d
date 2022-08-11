module uim.bootstrap.bs5.basic.components.modals.body_;

@safe: 
import uim.bootstrap;

class DBS5ModalBody : DBS5Obj
{
	mixin(H5This!("Div", ["modal-body"]));
}

mixin(H5Calls!"BS5ModalBody");

unittest
{
	assert(BS5ModalBody, `<div class="modal-body"></div>`));
}
