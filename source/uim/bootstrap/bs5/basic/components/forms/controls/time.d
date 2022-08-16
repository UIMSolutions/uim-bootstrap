module uim.bootstrap.bs5.basic.components.forms.controls.time;

@safe: 
import uim.bootstrap; 

class DBS5InputTime : DBS5Input {
	mixin(H5This!("", null, `["type":"time"]`));

  override void initialize () {
    super.initialize();
  }

	O value(this O)(long timestamp) {
		_attributes["value"] = (cast(DateTime)fromTimestamp(timestamp)).toISOExtString.split("T")[1];
		return cast(O)this;
	}
	version(test_uim_bootstrap) { unittest {	
    /// TODO
	}

	O value(this O)(string timeValue) {
		_attributes["value"] = timeValue;
		return cast(O)this;
	}
	version(test_uim_bootstrap) { unittest {	
    /// TODO
	}

	O value(this O)(SysTime systime) {
		_attributes["value"] = (cast(DateTime)systime).toISOExtString.split("T")[1];
		return cast(O)this;
	}
	version(test_uim_bootstrap) { unittest {		
    /// TODO
	}

	O value(this O)(DateTime datetime) {
		_attributes["value"] = datetime.toISOExtString.split("T")[1];
		return cast(O)this;
	}
	version(test_uim_bootstrap) { unittest {		
    /// TODO
	}

}
mixin(H5Calls!("BS5InputTime"));

version(test_uim_bootstrap) { unittest {
	assert(BS5InputTime ==`<input class="form-control" type="time">`);
}
