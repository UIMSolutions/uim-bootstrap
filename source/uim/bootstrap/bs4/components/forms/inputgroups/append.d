module uim.bootstrap.bs4.components.forms.inputgroups.append;

@safe: 
import uim.bootstrap;

class DBS4InputGroupAppend : DBS4Obj {
	mixin(H5This!("DIV", ["input-group-append"]));

	mixin(MyContent!("button", "BS4Button"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4InputGroupAppend.button, `<div class="input-group-append"><button class="btn" type="button"></button></div>`);
	}}

	mixin(MyContent!("text", "BS4InputGroupText"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4InputGroupAppend.text, `<div class="input-group-append"><div class="input-group-text"></div></div>`);
	}}
}
mixin(H5Calls!"BS4InputGroupAppend");

version(test_uim_bootstrap) { unittest {
	assert(BS4InputGroupAppend, `<div class="input-group-append"></div>`);
}}