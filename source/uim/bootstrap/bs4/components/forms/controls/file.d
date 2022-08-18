module uim.bootstrap.bs4.components.forms.controls.file;

@safe: 
import uim.bootstrap; 

class DBS4InputFile : DBS4Input {
	mixin(H5This!(null, null, `["type":"file"]`));
}
mixin(H5Calls!("BS4InputFile"));

version(test_uim_bootstrap) { unittest {
	assert(BS4InputFile, == `<input class="form-control" type="file">`);
}}