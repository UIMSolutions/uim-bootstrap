module uim.bootstrap.bs5.classes.components.buttons.link;

import uim.bootstrap;

class DBS5ButtonLink : DBS5ButtonObj {
	mixin(H5This!("A", ["btn"], `["type":"button"]`));

	override public void _init() {
		super._init;
	}
}
mixin(H5Calls!"BS5ButtonLink");

unittest {
	assert(Assert(BS5ButtonLink, `<a class="btn" type="button"></a>`));
}
