module uim.bootstrap.components.forms.check;

import uim.bootstrap;

class DBS4FormCheck : DBS4Obj {
	mixin(H5This!("DIV", `["form-check"]`));
	override public void init() {
		super.init;
	}
	mixin(TProperty!("string", "forId"));

	O inline(this O)() { return this.classes("form-check-inline"); }

	mixin(MyContent!("label", "BS4FormCheckLabel"));
}
mixin(BS4Short!"FormCheck");

unittest {
	
	
	assert(BS4FormCheck == `<div class="form-check"></div>`);
}