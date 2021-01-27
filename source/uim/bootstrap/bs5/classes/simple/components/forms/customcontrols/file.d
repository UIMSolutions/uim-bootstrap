module uim.bootstrap.bs5.classes.simple.components.forms.customcontrols.file;

import uim.bootstrap;

class DBS5CustomFile : DBS5Obj {
	mixin(H5This!("DIV", ["custom-file"]));

	mixin(MyContent!("input", "BS5CustomFileInput"));
	mixin(MyContent!("label", "BS5CustomFileLabel"));
}

mixin(H5Calls!"BS5CustomFile");

unittest
{
	assert(Assert(BS5CustomFile, `<div class="custom-file"></div>`));
}
