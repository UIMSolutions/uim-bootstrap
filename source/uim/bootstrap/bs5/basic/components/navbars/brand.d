module uim.bootstrap.bs5.basic.components.navbars.brand;

import uim.bootstrap;

@safe: class DBS5NavbarBrand : DBS5Obj
{
	mixin(H5This!("a", ["navbar-brand"]));
	override public void _init()
	{
		super._init;
	}

	mixin(MyContent!("image", "H5IMG"));
}

mixin(H5Calls!"BS5NavbarBrand");
///
unittest
{
	assert(Assert(BS5NavbarBrand, `<a class="navbar-brand"></a>`));
}
