module uim.bootstrap.bs5.basic.components.forms.files.text;

@safe: 
import uim.bootstrap;

class DBS5FormFileText : DBS5Obj {
	mixin(H5This!("span", ["form-file-text"]));

}
mixin(H5Calls!"BS5FormFileText");
///
unittest {
	assert(Assert(BS5FormFileText, `<span class="form-file-text"></span>`));
}
