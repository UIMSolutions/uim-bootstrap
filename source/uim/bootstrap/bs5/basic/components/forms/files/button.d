module uim.bootstrap.bs5.basic.components.forms.files.button;

@safe: 
import uim.bootstrap;

class DBS5FormFileButton : DBS5Obj {
	mixin(H5This!("span", ["form-file-button"]));
}
mixin(H5Calls!"BS5FormFileButton");

version(test_uim_bootstrap) { unittest {
	assert(BS5FormFileButton == `<span class="form-file-button"></span>`);
}}
