module uim.bootstrap.bs4.components.navbars.text;

@safe: 
import uim.bootstrap;

class DBS4NavbarText : DBS4Obj {
	mixin(H5This!("SPAN", ["navbar-text"]));
}
mixin(H5Calls!"BS4NavbarText");

version(test_uim_bootstrap) { unittest {
	assert(BS4NavbarText, `<span class="navbar-text"></span>`);
	assert(BS4NavbarText("some text"), `<span class="navbar-text">some text</span>`);
}