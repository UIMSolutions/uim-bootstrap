module uim.bootstrap.bs4.components.navbars.text;

import uim.bootstrap;

@safe: class DBS4NavbarText : DBS4Obj {
	mixin(H5This!("SPAN", ["navbar-text"]));
}
mixin(H5Calls!"BS4NavbarText");

unittest {
	assert(Assert(BS4NavbarText, `<span class="navbar-text"></span>`));
	assert(Assert(BS4NavbarText("some text"), `<span class="navbar-text">some text</span>`));
}