module uim.bootstrap.components.forms.checklabel;

import uim.bootstrap;

class DBS4FormCheckLabel : DBS4Obj {
	mixin(H5This!("LABEL", `["form-check-label"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4FormCheckLabel");

unittest {
	writeln("Testing ", __MODULE__);
	
	assert(BS4FormCheck == `<label class="form-check-label"></label>`);
}