module uim.bootstrap.bs5.basic.components.forms.text;

import uim.bootstrap;

@safe: class DBS5FormText : DBS5Obj {
	mixin(H5This!("SMALL", ["form-text"]));
}
mixin(H5Calls!"BS5FormText");
///
unittest {
	assert(Assert(BS5FormText, `<small class="form-text"></small>`));
}
