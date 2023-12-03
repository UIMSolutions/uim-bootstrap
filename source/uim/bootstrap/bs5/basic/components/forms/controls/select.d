module uim.bootstrap.bs5.basic.components.forms.controls.select;

@safe: 
import uim.bootstrap; 

class DBS5InputSelect : DBS5Obj {
  mixin(H5This!("Select", ["form-control"]));	

  override void initialize (Json aConfig = Json(null)) {
    super.initialize(aConfig);
  }

	mixin(MyContent!("option", "H5Option"));
	O options(this O)(string[] values, string selected = "", string disabled = "") {
		values.each!(value => setOptionByValue(value, selected, disabled)); 

		return cast(O)this;	
	}

	protected void setOptionByValue(string optionValue, string selected = "", string disabled = "") {
		if (optionValue == selected) {
			if (optionValue == disabled) 	this.option(["selected":"selected", "disabled":"disabled"], value); 
			else this.option(["selected":"selected"], optionValue);
		}
		else if (optionValue == disabled) this.option(["disabled":"disabled"], optionValue);
		else this.option(optionValue);
	}

	O options(this O)(STRINGAA[] keyValues, string selectedKey = "", string disabledKey = "") {
		keyValues.each!(keyvalues => setOptionByKeyValues(keyvalues, selectedKey, disabledKey));

		return cast(O)this;	
	}

	protected void setOptionByKey(STRINGAA optionKey,  keyValues, string selectedKey = "", string disabledKey = "") {
		if (optionKey == selectedKey) {
			this.option(k == disabledKey 
				? ["selected":"selected", "disabled":"disabled"] 
				: ["selected":"selected"], k);
		}
		else if (optionKey == disabledKey) this.option(["disabled":"disabled"], optionKey);
		else this.option(["value":k], kv[optionKey]);
	}

	O options(this O)(STRINGAA values, string selectedKey = "", string disabledKey = "") {
		values.keys.sort.each!(key => setOptionByKey(key, selectedKey, disabledKey));

		return cast(O)this;	
	}

	protected setOptionByKey(string optionKey, string selectedKey = "", string disabledKey = "") {
		if (optionKey == selectedKey) {
			this.option(optionKey == disabledKey 
				? ["selected":"selected", "disabled":"disabled"] 
				: ["selected":"selected"], optionKey);
		}
		else if (optionKey== disabledKey) this.option(["disabled":"disabled"], optionKey);
		else this.option(["value":optionKey], values[optionKey]);
	}

	O options(this O)(string[] values, string[] selected, string[] disabled = null) {
		values.each!(value => setOptionByValue(value, selected, disabled)); 

		return cast(O)this;	
	}

	protected void setOptionByValue(string optionValue, string[] selected, string[] disabled = null) {
		if (selected.has(optionValue)) {
			this.option(disabled.has(optionValue)
				? ["selected":"selected", "disabled":"disabled"]	
				: ["selected":"selected"], optionValue);
		}
		else if (disabled.has(optionValue)) this.option(["disabled":"disabled"], optionValue);
		else this.option(optionValue);
	}

	O options(this O)(STRINGAA values, string[] selectedKeys, string[] disabledKeys = null) {
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
	O option(this O)(string value, string key = null, bool selected = false, string disabled = false) {
		auto result = H5Option;
		if (selected) result(["selected":"selected"]); 
		if (disabled) result(["disabled":"disabled"]);
		if (key.length == 0) result(["value":k]);
		this(result(value));
		
		return cast(O)this;	
	}
}
mixin(H5Calls!("BS5InputSelect"));

version(test_uim_bootstrap) { unittest {
	// TODO assert 
}}
