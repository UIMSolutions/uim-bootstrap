module uim.bootstrap.bs5.basic.components.navs.list;

@safe: 
import uim.bootstrap;

class DBS5NavList : DBS5Obj {
	mixin(H5This!("UL", ["nav"]));

	mixin(MyContent!("item", "BS5NavItem"));
	O vertical(this O)(bool mode = true) { return this.addClasses("flex-column"); }
	O tabs(this O)(bool mode = true) { return this.addClasses("nav-tabs"); }
	O pills(this O)(bool mode = true) { return this.addClasses("nav-pills"); }
	O fill(this O)(bool mode = true) { return this.addClasses("nav-fill"); }
	O justified(this O)(bool mode = true) { return this.addClasses("nav-justified"); }
}
mixin(H5Calls!"BS5NavList");

version(test_uim_bootstrap) { unittest {
	assert(BS5NavList, `<ul class="nav"></ul>`);
	assert(BS5NavList.vertical, `<ul class="flex-column nav"></ul>`);
}}