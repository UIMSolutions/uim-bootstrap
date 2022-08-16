module uim.bootstrap.bs4.components.navs.nav;

@safe: 
import uim.bootstrap;

class DBS4Nav : DBS4Obj {
	mixin(H5This!("Ul", ["nav"]));

	mixin(MyContent!("item", "BS4NavItem"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4Nav.item, `<ul class="nav"><li class="nav-item"></li></ul>`);
	}}

	mixin(MyContent!("header", "BS4NavHeader"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4Nav.header, `<ul class="nav"><li class="nav-header"></li></ul>`);
	}}

	mixin(MyContent!("link", "this.item", "BS4NavLink"));
	version(test_uim_bootstrap) { unittest {
		assert(BS4Nav.link, `<ul class="nav"><li class="nav-item"><a class="nav-link" href="#"></a></li></ul>`);
	}}

	O pills(this O)(bool mode = true) { if (mode) this.addClasses("nav-pills"); return cast(O)this; }
	version(test_uim_bootstrap) { unittest {
		assert(BS4Nav.pills, `<ul class="nav nav-pills"></ul>`);
	}}
}
mixin(H5Calls!"BS4Nav");

version(test_uim_bootstrap) { unittest {
	assert(BS4Nav, `<ul class="nav"></ul>`);
}}