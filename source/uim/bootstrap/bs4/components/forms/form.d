module uim.bootstrap.bs4.components.forms.form;

@safe: 
import uim.bootstrap;

class DBS4Form : DBS4Obj {
	mixin(H5This!("Form"));

	O inline(this O)(bool value = true) { return this.addClasses("form-inline"); }

	mixin(MyContent!("label", "H5Label"));
	mixin(MyContent!("formGroup", "BS4FormGroup"));
}
mixin(H5Calls!"BS4Form");

version(test_uim_bootstrap) { unittest {
	assert(BS4Form, `<form></form>`);
	assert(BS4Form.inline, `<form class="form-inline"></form>`);
}}