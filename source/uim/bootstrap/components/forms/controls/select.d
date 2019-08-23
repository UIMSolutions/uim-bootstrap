module uim.bootstrap.components.forms.controls.select;

import uim.bootstrap; 

class DBS4InputSelect : DH5Select {
	mixin(BS4This!("InputSelect", `["form-control"]`));	

	mixin(MyContent!("option", "H5Option"));
	O options(this O)(string[string] values, string selectedKey = "") {
		foreach(k; values.keys.sort) {
			if (k == selectedKey) this.option(["value":k, "selected":"selected"], values[k]);
			else this.option(["value":k], values[k]);
		}
		return cast(O)this;	
	}
}
mixin(BS4Func!("InputSelect"));

unittest {
	
	
}