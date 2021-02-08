module uim.bootstrap.bs5.basic.components.forms.customcontrols.filelabel;

import uim.bootstrap;

class DBS5CustomFileLabel : DBS5Obj
{
	mixin(H5This!("LABEL", ["custom-file-label"]));
}

mixin(H5Calls!"BS5CustomFileLabel");

unittest
{
	assert(Assert(BS5CustomFileLabel, `<label class="custom-file-label"></label>`));
}
