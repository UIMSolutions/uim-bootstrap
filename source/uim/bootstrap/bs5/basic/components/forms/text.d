module uim.bootstrap.bs5.basic.components.forms.text;

@safe: 
import uim.bootstrap;

class DBS5FormText : DBS5Obj {
	mixin(H5This!("SMALL", ["form-text"]));
}
mixin(H5Calls!"BS5FormText");

version(test_uim_bootstrap) { unittest {
	assert(BS5FormText == `<small class="form-text"></small>`);
}
