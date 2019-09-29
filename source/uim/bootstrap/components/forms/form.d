module uim.bootstrap.components.forms.form;

import uim.bootstrap;

class DBS4Form : DBS4Obj {
	mixin(H5This!("Form"));

	O inline(this O)(bool value = true) { return this.classes("form-inline"); }

	mixin(MyContent!("formGroup", "BS4FormGroup"));
}
mixin(BS4Short!"Form");

unittest {
	
	
	assert(BS4Form == `<form></form>`);
	assert(BS4Form.inline == `<form class="form-inline"></form>`);
}