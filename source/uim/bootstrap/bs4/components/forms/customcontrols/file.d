module uim.bootstrap.bs4.components.forms.customcontrols.file;

import uim.bootstrap;

class DBS4CustomFile : DBS4Obj {
	mixin(H5This!("DIV", ["custom-file"]));

	mixin(MyContent!("input", "BS4CustomFileInput"));
	mixin(MyContent!("label", "BS4CustomFileLabel"));
}

mixin(H5Calls!"BS4CustomFile");

unittest
{
	assert(Assert(BS4CustomFile, `<div class="custom-file"></div>`));
}
