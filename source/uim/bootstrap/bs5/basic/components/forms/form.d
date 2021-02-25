module uim.bootstrap.bs5.basic.components.forms.form;

import uim.bootstrap;

class DBS5Form : DBS5Obj {
	mixin(H5This!("Form"));

	O inline(this O)(bool value = true) { return this.classes("form-inline"); }

		mixin(MyContent!("group", "BS5FormGroup"));
		mixin(MyContent!("label", "H5Label"));
		mixin(MyContent!("submit", "BS5ButtonSubmit"));
		mixin(MyContent!("reset", "BS5ButtonReset"));
}
mixin(H5Calls!"BS5Form");

unittest {
	
	
	assert(Assert(BS5Form, `<form></form>`));
	assert(Assert(BS5Form.inline, `<form class="form-inline"></form>`));
}