module uim.bootstrap.bs5.basic.components.forms.controls.file;

import uim.bootstrap; 

@safe: class DBS5InputFile : DBS5Input {
	mixin(H5This!(null, ["form-control"], `["type":"file"]`));
}
mixin(H5Calls!("BS5InputFile"));
unittest {
	assert(Assert(BS5InputFile, `<input class="form-control" type="file">`));
}
