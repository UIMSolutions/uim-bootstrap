module uim.bootstrap.components.forms.controls.textarea;

import uim.bootstrap; 

class DBS4InputTextArea : DH5Textarea {
	mixin(BS4This!("InputTextArea", `["form-control"]`));

	mixin(MyAttribute!"rows");
	mixin(MyAttribute!"cols");
}
mixin(BS4Func!("InputTextArea"));

unittest {
	
	
}