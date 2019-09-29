module uim.bootstrap.components.forms.text;

import uim.bootstrap;

class DBS4FormText : DBS4Obj {
	mixin(H5This!("SMALL", `["form-text"]`));
}
mixin(BS4Short!"FormText");
///
unittest {
	assert(BS4FormText == `<small class="form-text"></small>`);
}
