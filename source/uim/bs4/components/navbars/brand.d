module uim.bs4.components.navbars.brand;

import uim.bs4;

class DBS4NavbarBrand : DBS4Obj {
	mixin(H5This!("A", `["navbar-brand"]`, `["href":"#"]`));
	override public void init() {
		super.init;
	}
	mixin(MyContent!("image", "H5IMG"));
}
mixin(H5Short!"BS4NavbarBrand");

unittest {
	writeln("Testing ", __MODULE__);

	assert(BS4NavbarBrand == `<a class="navbar-brand" href="#"></a>`);
}