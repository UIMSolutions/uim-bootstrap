module uim.bootstrap.components.forms.controls.file;

import uim.bootstrap; 

class DBS4InputFile : DBS4Obj {
	mixin(H5This!("Input", `["form-control"]`, `["type":"file"]`));
	override public void _init() {
		super._init;
		_single = true;
	}
}
mixin(BS4Func!("InputFile"));
///
unittest {
	assert(BS4InputFile == `<input class="form-control" type="file">`);
}