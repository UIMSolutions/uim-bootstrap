module uim.bootstrap.bs4.components.forms.customcontrols.select;

@safe: 
import uim.bootstrap; 

class DBS4CustomSelect : DH5Select {
	mixin(H5This!("Select", ["custom-select"]));

	mixin(MyContent!("option", "H5Option"));
	O options(this O)(string[] values, string selected = "", string disabled = "") {
		foreach(value; values) {
			if (value == selected) {
				if (value == disabled) 	this.option(["selected":"selected", "disabled":"disabled"], value); 
				else this.option(["selected":"selected"], value);
			}
			else if (value == disabled) this.option(["disabled":"disabled"], value);
			else this.option(value);
		}
		return cast(O)this;	
	}
	O options(this O)(string[string] values, string selectedKey = "", string disabledKey = "") {
		foreach(k; values.keys.sort) {
			if (k == selectedKey) {
				if (k == disabledKey) 	this.option(["selected":"selected", "disabled":"disabled"], k); 
				else this.option(["selected":"selected"], k);
			}
			else if (k == disabledKey) this.option(["disabled":"disabled"], k);
			else this.option(["value":k], values[k]);
		}
		return cast(O)this;	
	}
	O options(this O)(string[] values, string[] selected, string[] disabled = null) {
		foreach(value; values) {
			if (selected.has(value)) {
				if (disabled.has(value)) 	this.option(["selected":"selected", "disabled":"disabled"], value); 
				else this.option(["selected":"selected"], value);
			}
			else if (disabled.has(value)) this.option(["disabled":"disabled"], value);
			else this.option(value);
		}
		return cast(O)this;	
	}
	O options(this O)(string[string] values, string[] selectedKeys, string[] disabledKeys = null) {
		foreach(k; values.keys.sort) {
			if (selectedKeys.has(k)) {
				if (disabledKeys.has(k)) this.option(["selected":"selected", "disabled":"disabled"], k); 
				else this.option(["selected":"selected"], k);
			}
			else if (disabledKeys.has(k)) this.option(["disabled":"disabled"], k);
			else this.option(["value":k], values[k]);
		}
		return cast(O)this;	
	}
}
mixin(H5Calls!("BS4CustomSelect"));

version(test_uim_bootstrap) { unittest {
	// TODO
}}