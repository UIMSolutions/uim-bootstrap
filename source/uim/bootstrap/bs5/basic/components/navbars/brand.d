module uim.bootstrap.bs5.basic.components.navbars.brand;

@safe: 
import uim.bootstrap;

class DBS5NavbarBrand : DBS5Obj {
	mixin(H5This!("a", ["navbar-brand"]));

	mixin(MyContent!("image", "H5IMG"));
}

mixin(H5Calls!"BS5NavbarBrand");
///
unittest
{
	assert(Assert(BS5NavbarBrand, `<a class="navbar-brand"></a>`));
}
