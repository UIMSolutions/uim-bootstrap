module uim.bootstrap.components.forms.customcontrols.filelabel;

import uim.bootstrap;

class DBS4CustomFileLabel : DBS4Obj
{
	mixin(H5This!("LABEL", `["custom-file-label"]`));
}

mixin(BS4Short!"CustomFileLabel");

unittest
{
	assert(BS4CustomFileLabel == `<label class="custom-file-label"></label>`);
}
