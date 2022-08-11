module uim.bootstrap.bs5.basic.components.forms.customcontrols.filelabel;

@safe: 
import uim.bootstrap;

class DBS5CustomFileLabel : DBS5Obj
{
	mixin(H5This!("LABEL", ["custom-file-label"]));
}

mixin(H5Calls!"BS5CustomFileLabel");

unittest
{
	assert(BS5CustomFileLabel, `<label class="custom-file-label"></label>`);
}
