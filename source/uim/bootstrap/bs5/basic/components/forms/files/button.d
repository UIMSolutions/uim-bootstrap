module uim.bootstrap.bs5.basic.components.forms.files.button;

import uim.bootstrap;

@safe: class DBS5FormFileButton : DBS5Obj {
	mixin(H5This!("span", ["form-file-button"]));

}
mixin(H5Calls!"BS5FormFileButton");
///
unittest {
	assert(Assert(BS5FormFileButton, `<span class="form-file-button"></span>`));
}
