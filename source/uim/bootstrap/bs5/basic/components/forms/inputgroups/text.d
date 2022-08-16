module uim.bootstrap.bs5.basic.components.forms.inputgroups.text;

@safe: 
import uim.bootstrap;

class DBS5InputGroupText : DBS5Obj {
	mixin(H5This!("DIV", ["input-group-text"]));
}
mixin(H5Calls!"BS5InputGroupText");

version(test_uim_bootstrap) { unittest {
	assert(BS5InputGroupText, `<div class="input-group-text"></div>`);
}}