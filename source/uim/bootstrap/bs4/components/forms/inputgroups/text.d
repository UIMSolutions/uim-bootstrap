module uim.bootstrap.bs4.components.forms.inputgroups.text;

@safe: 
import uim.bootstrap;

class DBS4InputGroupText : DBS4Obj {
	mixin(H5This!("DIV", ["input-group-text"]));
}
mixin(H5Calls!"BS4InputGroupText");

version(test_uim_bootstrap) { unittest {
	assert(BS4InputGroupText, `<div class="input-group-text"></div>`);
}