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
	unittest {
		assert(Assert(BS5DropdownMenu.link, `<div class="dropdown-menu"><a class="dropdown-item"></a></div>`));
	}

	mixin(MyContent!("form", "BS5DropdownForm"));
	unittest {
		assert(Assert(BS5DropdownMenu.form, `<div class="dropdown-menu"><form></form></div>`));
	}
	
	mixin(MyContent!("text", "BS5DropdownText"));
}
mixin(H5Calls!"BS5DropdownMenu");

unittest {
	assert(Assert(BS5DropdownMenu, `<div class="dropdown-menu"></div>`));
}
