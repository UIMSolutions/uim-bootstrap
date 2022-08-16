module uim.bootstrap.bs4.components.navbars.brand;

@safe: 
import uim.bootstrap;

class DBS4NavbarBrand : DBS4Obj
{
	mixin(H5This!("a", ["navbar-brand"]));

	mixin(MyContent!("image", "H5IMG"));
}

mixin(H5Calls!"BS4NavbarBrand");
///
version(test_uim_bootstrap) { unittest {
	assert(BS4NavbarBrand, `<a class="navbar-brand"></a>`);
}
