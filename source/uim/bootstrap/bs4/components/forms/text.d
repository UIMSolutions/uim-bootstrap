module uim.bootstrap.bs4.components.forms.text;

@safe: 
import uim.bootstrap;

class DBS4FormText : DBS4Obj {
	mixin(H5This!("SMALL", ["form-text"]));
}
mixin(H5Calls!"BS4FormText");
///
version(test_uim_bootstrap) { unittest {
	assert(BS4FormText, `<small class="form-text"></small>`);
}
