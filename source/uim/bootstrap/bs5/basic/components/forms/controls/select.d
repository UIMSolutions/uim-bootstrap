module uim.bootstrap.bs5.basic.components.forms.controls.select;

@safe: 
import uim.bootstrap; 

class DBS5InputSelect : DBS5Obj {
  mixin(H5This!("Select", ["form-control"]));	

  override void initialize () {
    super.initialize();
  }

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

	O options(this O)(string[string][] keyValues, string selectedKey = "", string disabledKey = "") {
		foreach(kv; keyValues) {
			foreach(k; kv.byKey().array.sort!("a < b")) {
				if (k == selectedKey) {
					if (k == disabledKey) 	this.option(["selected":"selected", "disabled":"disabled"], k); 
					else this.option(["selected":"selected"], k);
				}
				else if (k == disabledKey) this.option(["disabled":"disabled"], k);
				else this.option(["value":k], kv[k]);
			}
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
				if (disabled.has(value)) this.option(["selected":"selected", "disabled":"disabled"], value); 
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
	
}
