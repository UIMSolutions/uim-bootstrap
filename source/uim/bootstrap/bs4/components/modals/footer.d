﻿module uim.bootstrap.bs4.components.modals.footer;

@safe: 
import uim.bootstrap;

class DBS4ModalFooter : DBS4Obj {
	mixin(H5This!("DIV", ["modal-footer"]));
}
mixin(H5Calls!"BS4ModalFooter");

version(test_uim_bootstrap) { unittest {
	assert(BS4ModalFooter == `<div class="modal-footer"></div>`);
}}