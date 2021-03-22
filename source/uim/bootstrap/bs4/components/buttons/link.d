module uim.bootstrap.bs4.components.buttons.link;

import uim.bootstrap;

@safe: class DBS4ButtonLink : DBS4ButtonObj {
	mixin(H5This!("A", ["btn"], `["type":"button"]`));

	override public void _init() {
		super._init;
	}
}
mixin(H5Calls!"BS4ButtonLink");

unittest {
	assert(Assert(BS4ButtonLink, `<a class="btn" type="button"></a>`));
}
