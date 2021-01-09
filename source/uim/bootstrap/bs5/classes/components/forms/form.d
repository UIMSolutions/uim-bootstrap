module uim.bootstrap.bs5.classes.components.forms.form;

import uim.bootstrap;

class DBS5Form : DBS5Obj {
	mixin(H5This!("Form"));

	O inline(this O)(bool value = true) { return this.classes("form-inline"); }

		mixin(MyContent!("label", "H5Label"));
		mixin(MyContent!("formGroup", "BS5FormGroup"));
}
mixin(H5Calls!"BS5Form");

unittest {
	
	
	assert(Assert(BS5Form, `<form></form>`));
	assert(Assert(BS5Form.inline, `<form class="form-inline"></form>`));
}