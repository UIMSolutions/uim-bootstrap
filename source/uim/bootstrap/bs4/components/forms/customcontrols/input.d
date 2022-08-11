module uim.bootstrap.bs4.components.forms.customcontrols.input;

@safe: 
import uim.bootstrap;

class DBS4CustomInput : DBS4Obj {
	mixin(H5This!("INPUT", ["custom-control-input"], null, true));
	override public void initialize() {
		super.initialize;
		_single = true;
	}

	unittest {
		assert(BS4CustomInput, `<input class="custom-control-input">`);
	}

}
mixin(H5Calls!"BS4CustomInput");

unittest {
}
