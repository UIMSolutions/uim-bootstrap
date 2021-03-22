﻿module uim.bootstrap.bs4.components.modals.header;

import uim.bootstrap;

@safe: class DBS4ModalHeader : DBS4Obj {
	mixin(H5This!("DIV", ["modal-header"]));
}
mixin(H5Calls!"BS4ModalHeader");

unittest {
	assert(Assert(BS4ModalHeader, `<div class="modal-header"></div>`));
}