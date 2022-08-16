module uim.bootstrap.bs5.basic.components.navs.item;

@safe: 
import uim.bootstrap;

class DBS5NavItem : DBS5Obj {
	mixin(H5This!("li", ["nav-item"], null));

	mixin(MyContent!("link", "BS5NavLink"));

	O dropdown(this O)(bool mode = true) { return this.addClasses("dropdown"); }
	version(test_uim_bootstrap) { unittest {
		assert(BS5NavItem.dropdown ==`<li class="dropdown nav-item"></li>`);
	}}
}
mixin(H5Calls!"BS5NavItem");

version(test_uim_bootstrap) { unittest {
	assert(BS5NavItem, `<li class="nav-item"></li>`);
}}