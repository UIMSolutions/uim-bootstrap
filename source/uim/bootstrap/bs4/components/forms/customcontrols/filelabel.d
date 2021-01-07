module uim.bootstrap.bs4.components.forms.customcontrols.filelabel;

import uim.bootstrap;

class DBS4CustomFileLabel : DBS4Obj
{
	mixin(H5This!("LABEL", ["custom-file-label"]));
}

mixin(H5Calls!"BS4CustomFileLabel");

unittest
{
	assert(Assert(BS4CustomFileLabel, `<label class="custom-file-label"></label>`));
}
