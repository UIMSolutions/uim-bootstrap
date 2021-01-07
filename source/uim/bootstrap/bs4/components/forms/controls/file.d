module uim.bootstrap.bs4.components.forms.controls.file;

import uim.bootstrap; 

class DBS4InputFile : DBS4Input {
	mixin(H5This!(null, null, `["type":"file"]`));
}
mixin(H5Calls!("BS4InputFile"));
unittest {
	assert(Assert(BS4InputFile, `<input class="form-control" type="file">`));
}