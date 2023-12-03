module uim.bootstrap.bs4.components.forms.controls.select;

@safe: 
import uim.bootstrap; 

class DBS4InputSelect : DBS4Obj {
	mixin(H5This!("Select", ["form-control"]));	

	mixin(MyContent!("option", "H5Option"));
	O options(this O)(string[] values, string selectedValue = "", string disabledValue = "") {
		values.each!(value => setOption(value, selectedValue, disabledValue));

		return cast(O)this;	
	}

	O options(this O)(STRINGAA values, string selectedKey = "", string disabledKey = "") {
		values.keys.sort.each!(value => setOption(value, selectedKey, disabledKey));

		return cast(O)this;	
	}

	O options(this O)(string[] values, string[] selected, string[] disabled = null) {
		values.each!(value => setOptionByValue(value, selected, disabled));

		return cast(O)this;	
	}

	protected void setOptionByValue(string value, string[] selected, string[] disabled = null) {
		if (selected.has(value)) {
			this.option(disabled.has(value) 
				? ["selected":"selected", "disabled":"disabled"]	
				: ["selected":"selected"], value);
		}
		else if (disabled.has(value)) this.option(["disabled":"disabled"], value);
		else this.option(value);
	}

	O options(this O)(STRINGAA values, string[] selectedKeys, string[] disabledKeys = null) {
		values.keys.sort.each!(key => setOption(k, selectedKeys, disabledKeys));

		return cast(O)this;	
	}

	protected void setOption(string optionValue, string selectedValue = null, string disabledValue = null) {
		if (optionValue == selectedValue) {
				this.option(value == disabledValue ? 
					["selected":"selected", "disabled":"disabled"],  
					["selected":"selected"], optionValue);
			}
			else if (value == disabledValue) this.option(["disabled":"disabled"], optionValue);
			else this.option(optionValue);
	}

	protected void setOption(string optionValue, string[] selectedKeys, string[] disabledKeys = null) {
		if (selectedKeys.has(optionValue)) {
				this.option(disabledKeys.has(optionValue) 
					? ["selected":"selected", "disabled":"disabled"] 
					: ["selected":"selected"], optionValue);
			}
			else if (disabledKeys.has(optionValue)) this.option(["disabled":"disabled"], optionValue);
			else this.option(["value":optionValue], values[optionValue]);
	}

}
mixin(H5Calls!("BS4InputSelect"));
