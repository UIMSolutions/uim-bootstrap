module uim.bootstrap.bs5.basic.components.forms.files.label;

import uim.bootstrap;

@safe: class DBS5FormFileLabel : DBS5Obj {
	mixin(H5This!("label", ["form-file-label"]));

}
mixin(H5Calls!"BS5FormFileLabel");
///
unittest {
	assert(Assert(BS5FormFileLabel, `<label class="form-file-label"></label>`));
}
