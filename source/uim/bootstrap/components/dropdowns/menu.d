module uim.bootstrap.components.dropdowns.menu;

import uim.bootstrap;

class DBS4DropdownMenu : DBS4Obj {
	mixin(H5This!("div", ["dropdown-menu"]));

	mixin(MyAttribute!("label", "aria-labelledby"));

	mixin(MyContent!("divider", "BS4DropdownDivider"));
	mixin(MyContent!("header", "BS4DropdownHeader"));
	mixin(MyContent!("item", "BS4DropdownItem"));
	mixin(MyContent!("link", "BS4DropdownLink"));
	mixin(MyContent!("form", "BS4DropdownForm"));
	mixin(MyContent!("text", "BS4DropdownText"));
	unittest {
		assert(Assert(BS4DropdownMenu.link, `<div class="dropdown-menu"><a class="dropdown-item"></a></div>`));
	}
}
mixin(H5Calls!"BS4DropdownMenu");

unittest {
	assert(Assert(BS4DropdownMenu, `<div class="dropdown-menu"></div>`));
}
