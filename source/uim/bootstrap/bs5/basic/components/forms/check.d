module uim.bootstrap.bs5.basic.components.forms.check;

import uim.bootstrap;

@safe: class DBS5FormCheck : DBS5Obj {
	mixin(H5This!("Div", ["form-check"]));
	mixin(TProperty!("string", "forId"));

	O inline(this O)(bool mode = true) { if (mode) this.classes("form-check-inline"); return cast(O)this; }
	unittest {
		assert(Assert(BS5FormCheck.inline, `<div class="form-check form-check-inline"></div>`));
	}

	mixin(MyContent!("label", "BS5FormCheckLabel"));
}
mixin(H5Calls!"BS5FormCheck");

unittest {
	assert(BS5FormCheck == `<div class="form-check"></div>`);
}