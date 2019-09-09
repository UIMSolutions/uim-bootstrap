module uim.bootstrap.components.forms.checklabel;

import uim.bootstrap;

class DBS4FormCheckLabel : DBS4Obj {
	mixin(H5This!("LABEL", `["form-check-label"]`));
	override public void _init() {
		super._init;
	}
	unittest {
		assert(BS4FormCheckLabel == `<label class="form-check-label"></label>`);
	}
}
mixin(BS4Short!"FormCheckLabel");

unittest {
}