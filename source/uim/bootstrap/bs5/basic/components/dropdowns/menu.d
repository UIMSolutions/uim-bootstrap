module uim.bootstrap.bs5.basic.components.dropdowns.menu;

@safe: 
import uim.bootstrap;

class DBS5DropdownMenu : DBS5Obj {
	mixin(H5This!("div", ["dropdown-menu"]));

	mixin(MyAttribute!("labelledBy", "aria-labelledby"));

	mixin(MyContent!("divider", "BS5DropdownDivider"));
	mixin(MyContent!("header", "BS5DropdownHeader"));
	mixin(MyContent!("item", "BS5DropdownItem"));
	mixin(MyContent!("link", "BS5DropdownLink"));

	mixin(MyContent!("form", "BS5DropdownForm"));
	
	mixin(MyContent!("text", "BS5DropdownText"));
}
mixin(H5Calls!"BS5DropdownMenu");

version(test_uim_bootstrap) { unittest {
	assert(BS5DropdownMenu, `<div class="dropdown-menu"></div>`);
	assert(BS5DropdownMenu.link, `<div class="dropdown-menu"><a class="dropdown-item"></a></div>`);
	assert(BS5DropdownMenu.form, `<div class="dropdown-menu"><form></form></div>`);
}}
