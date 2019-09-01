module uim.bootstrap.components.dropdowns.togglelink;

import uim.bootstrap;

class DBS4Togglelink : DBS4ButtonLink {
	mixin(H5This!("A", `["btn", "dropdown-toggle"]`, `["aria-haspopup":"true", "aria-expanded":"false"]`));
	override public void init() {
		super.init;
	}	
	unittest {
		writeln(BS4Togglelink);
		assert(BS4Togglelink == `<a class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></a>`);
		assert(BS4Togglelink.id("id") == `<a id="id" class="btn dropdown-toggle" aria-expanded="false" aria-haspopup="true" type="button"></a>`);
	}
}
mixin(BS4Short!"Togglelink");

unittest {
}

