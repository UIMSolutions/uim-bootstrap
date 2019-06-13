module uim.bs4.components.forms.form;

import uim.bs4;

class DBS4Form : DBS4Obj {
	mixin(H5This!("Form"));
	override public void init() {
		super.init;
	}

	O inline(this O)(bool value = true) { return this.classes("form-inline"); }

	mixin(MyContent!("formGroup", "BS4FormGroup"));
}
mixin(H5Short!"BS4Form");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4Form == `<form></form>`);
	assert(BS4Form.inline == `<form class="form-inline"></form>`);
}