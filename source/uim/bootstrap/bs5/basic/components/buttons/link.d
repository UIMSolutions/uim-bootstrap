module uim.bootstrap.bs5.basic.components.buttons.link;

import uim.bootstrap;

class DBS5ButtonLink : DBS5ButtonObj {
	mixin(H5This!("A", ["btn"], `["type":"button", "role":"button"]`));

	override public void _init() {
		super._init;
	}
}
mixin(H5Calls!"BS5ButtonLink");

unittest {
	assert(Assert(BS5ButtonLink, `<a class="btn" role="button" type="button"></a>`));
}
	