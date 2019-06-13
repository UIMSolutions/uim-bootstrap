module uim.bs4.components.forms.controls.file;

import uim.bs4; 

class DBS4InputFile : DH5INPUT {
	mixin(BS4This!("InputFile", `["form-control-file"]`, `["type":"file"]`));	
}
mixin(BS4Func!("InputFile"));

unittest {
	writeln("Testing ", __MODULE__);
	
}