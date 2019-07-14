module uim.bootstrap.components.forms.checklabel;

import uim.bootstrap;

class DBS4FormCheckLabel : DBS4Obj {
	mixin(H5This!("LABEL", `["form-check-label"]`));
	override public void init() {
		super.init;
	}
	unittest {
		assert(BS4FormCheckLabel == `<label class="form-check-label"></label>`);
	}
}
mixin(H5Short!"BS4FormCheckLabel");

unittest {
}