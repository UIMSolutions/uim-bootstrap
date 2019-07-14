module uim.bootstrap.components.progresses.progress;

import uim.bootstrap;

class DBS4Progress : DBS4Obj {
	mixin(H5This!("DIV", `["progress"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4Progress");

unittest {
	

	assert(BS4Progress == `<div class="progress"></div>`);
}