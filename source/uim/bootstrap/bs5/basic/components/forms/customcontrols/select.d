module uim.bootstrap.bs5.basic.components.forms.customcontrols.select;

@safe: 
import uim.bootstrap; 

class DBS5CustomSelect : DH5Select {
	mixin(H5This!("Select", ["custom-select"]));

	mixin(MyContent!("option", "H5Option"));
	O options(this O)(string[] values, string selected = "", string disabled = "") {
		foreach(value; values) {
			if (value == selected) {
				this.option(value == disabled
					? ["selected":"selected", "disabled":"disabled"] 
					: ["selected":"selected"], value);
			}
			else if (value == disabled) this.option(["disabled":"disabled"], value);
			else this.option(value);
		}
		return cast(O)this;	
	}
	O options(this O)(string[string] values, string selectedKey = "", string disabledKey = "") {
		foreach(k; values.keys.sort) {
			if (k == selectedKey) {
				this.option(k == disabledKey 
					? ["selected":"selected", "disabled":"disabled"], k); 
					: ["selected":"selected"], k);
			}
			else if (k == disabledKey) this.option(["disabled":"disabled"], k);
			else this.option(["value":k], values[k]);
		}
		return cast(O)this;	
	}
	O options(this O)(string[] values, string[] selected, string[] disabled = null) {
		foreach(value; values) {
			if (selected.has(value)) {
				this.option(disabled.has(value) 
					? ["selected":"selected", "disabled":"disabled"] 
				 	: ["selected":"selected"], value);
			}
			else if (disabled.has(value)) this.option(["disabled":"disabled"], value);
			else this.option(value);
		}
		return cast(O)this;	
	}
	O options(this O)(string[string] values, string[] selectedKeys, string[] disabledKeys = null) {
		foreach(k; values.keys.sort) {
			if (selectedKeys.has(k)) {
				this.option(disabledKeys.has(k) 
					? ["selected":"selected", "disabled":"disabled"]
					: ["selected":"selected"], k);
			}
			else if (disabledKeys.has(k)) this.option(["disabled":"disabled"], k);
			else this.option(["value":k], values[k]);
		}
		return cast(O)this;	
	}
}
mixin(H5Calls!("BS5CustomSelect"));
