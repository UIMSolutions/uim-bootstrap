module uim.bootstrap.components.navbars.nav;

import uim.bootstrap;

class DBS4NavbarNav : DBS4Obj
{
	mixin(H5This!("Ul", `["navbar-nav"]`));
	override public void _init()
	{
		super._init;
	}
}

mixin(BS4Short!"NavbarNav");
///
unittest
{
	assert(BS4NavbarNav == `<ul class="navbar-nav"></ul>`);
}
