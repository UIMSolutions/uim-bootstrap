module uim.bootstrap.bs5.basic.components.navbars.text;

@safe: 
import uim.bootstrap;

class DBS5NavbarText : DBS5Obj {
	mixin(H5This!("SPAN", ["navbar-text"]));
}
mixin(H5Calls!"BS5NavbarText");

unittest {
	assert(BS5NavbarText, `<span class="navbar-text"></span>`));
	assert(BS5NavbarText("some text"), `<span class="navbar-text">some text</span>`));
}