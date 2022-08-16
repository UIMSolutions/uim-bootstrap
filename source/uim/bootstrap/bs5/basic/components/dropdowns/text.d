module uim.bootstrap.bs5.basic.components.dropdowns.text;

@safe: 
import uim.bootstrap;

class DBS5DropdownText : DBS5Obj {
	mixin(H5This!("p", null, null));
}
mixin(H5Calls!"BS5DropdownText");

version(test_uim_bootstrap) { unittest {
	assert(BS5DropdownText("Hallo"), `<p>Hallo</p>`);
}
