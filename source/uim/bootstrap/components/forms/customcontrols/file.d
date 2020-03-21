module uim.bootstrap.components.forms.customcontrols.file;

import uim.bootstrap;

class DBS4CustomFile : DBS4Obj {
	mixin(H5This!("DIV", `["custom-file"]`));

	mixin(MyContent!("input", "BS4CustomFileInput"));
	mixin(MyContent!("label", "BS4CustomFileLabel"));
}

mixin(BS4Short!"CustomFile");

unittest
{
	assert(Assert(BS4CustomFile, `<div class="custom-file"></div>`));
}
