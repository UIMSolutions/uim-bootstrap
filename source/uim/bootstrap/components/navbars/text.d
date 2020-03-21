module uim.bootstrap.components.navbars.text;

import uim.bootstrap;

class DBS4NavbarText : DBS4Obj {
	mixin(H5This!("SPAN", `["navbar-text"]`));
}
mixin(BS4Short!"NavbarText");

unittest {
	assert(Assert(BS4NavbarText, `<span class="navbar-text"></span>`));
	assert(Assert(BS4NavbarText("some text"), `<span class="navbar-text">some text</span>`));
}