module uim.bootstrap.components.forms.controls.textarea;

import uim.bootstrap; 

class DBS4InputTextArea : DH5TEXTAREA {
	mixin(BS4This!("InputTextArea", `["form-control"]`));

	mixin(MyAttribute!"rows");
	mixin(MyAttribute!"cols");
}
mixin(BS4Func!("InputTextArea"));

unittest {
	writeln("Testing ", __MODULE__);
	
}