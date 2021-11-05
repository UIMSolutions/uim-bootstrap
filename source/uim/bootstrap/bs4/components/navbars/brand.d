module uim.bootstrap.bs4.components.navbars.brand;

import uim.bootstrap;

@safe: class DBS4NavbarBrand : DBS4Obj
{
	mixin(H5This!("a", ["navbar-brand"]));
	override public void _init()
	{
		super._init;
	}

	mixin(MyContent!("image", "H5IMG"));
}

mixin(H5Calls!"BS4NavbarBrand");
///
unittest
{
	assert(Assert(BS4NavbarBrand, `<a class="navbar-brand"></a>`));
}
