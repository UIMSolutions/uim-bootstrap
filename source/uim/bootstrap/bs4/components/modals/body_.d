module uim.bootstrap.bs4.components.modals.body_;

import uim.bootstrap;

class DBS4ModalBody : DBS4Obj
{
	mixin(H5This!("Div", ["modal-body"]));
	override public void _init()
	{
		super._init;
	}
}

mixin(H5Calls!"BS4ModalBody");

unittest
{
	assert(Assert(BS4ModalBody, `<div class="modal-body"></div>`));
}
