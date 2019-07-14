module uim.bootstrap.components.forms.controls.file;

import uim.bootstrap; 

class DBS4InputFile : DH5INPUT {
	mixin(BS4This!("InputFile", `["form-control-file"]`, `["type":"file"]`));	
}
mixin(BS4Func!("InputFile"));

unittest {
	
	
}