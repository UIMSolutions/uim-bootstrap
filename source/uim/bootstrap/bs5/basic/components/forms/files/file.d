module uim.bootstrap.bs5.basic.components.forms.files.file;

@safe: 
import uim.bootstrap;

class DBS5FormFile : DBS5Obj {
	mixin(H5This!("div", ["form-file"]));

}
mixin(H5Calls!"BS5FormFile");
///
unittest {
	assert(Assert(BS5FormFile, `<div class="form-file"></div>`));
}
