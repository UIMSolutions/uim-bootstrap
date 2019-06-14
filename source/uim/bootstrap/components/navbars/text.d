module uim.bootstrap.components.navbars.text;

import uim.bootstrap;

class DBS4NavbarText : DBS4Obj {
	mixin(H5This!("SPAN", `["navbar-text"]`));
	override public void init() {
		super.init;
	}
}
mixin(H5Short!"BS4NavbarText");

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4NavbarText == `<span class="navbar-text"></span>`);
	assert(BS4NavbarText("some text") == `<span class="navbar-text">some text</span>`);
}