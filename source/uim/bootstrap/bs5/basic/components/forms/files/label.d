module uim.bootstrap.bs5.basic.components.forms.files.label;

@safe: 
import uim.bootstrap;

class DBS5FormFileLabel : DBS5Obj {
	mixin(H5This!("label", ["form-file-label"]));

}
mixin(H5Calls!"BS5FormFileLabel");
///
unittest {
	assert(BS5FormFileLabel, `<label class="form-file-label"></label>`);
}
