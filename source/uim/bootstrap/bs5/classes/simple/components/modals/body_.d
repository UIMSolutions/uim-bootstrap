module uim.bootstrap.bs5.classes.simple.components.modals.body_;

import uim.bootstrap;

class DBS5ModalBody : DBS5Obj
{
	mixin(H5This!("Div", ["modal-body"]));
	override public void _init()
	{
		super._init;
	}
}

mixin(H5Calls!"BS5ModalBody");

unittest
{
	assert(Assert(BS5ModalBody, `<div class="modal-body"></div>`));
}
