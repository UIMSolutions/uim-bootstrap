module uim.bootstrap.bs5.basic.components.navbars.text;

import uim.bootstrap;

@safe: class DBS5NavbarText : DBS5Obj {
	mixin(H5This!("SPAN", ["navbar-text"]));
}
mixin(H5Calls!"BS5NavbarText");

unittest {
	assert(Assert(BS5NavbarText, `<span class="navbar-text"></span>`));
	assert(Assert(BS5NavbarText("some text"), `<span class="navbar-text">some text</span>`));
}