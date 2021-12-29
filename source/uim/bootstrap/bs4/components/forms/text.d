module uim.bootstrap.bs4.components.forms.text;

@safe: 
import uim.bootstrap;

class DBS4FormText : DBS4Obj {
	mixin(H5This!("SMALL", ["form-text"]));
}
mixin(H5Calls!"BS4FormText");
///
unittest {
	assert(Assert(BS4FormText, `<small class="form-text"></small>`));
}
