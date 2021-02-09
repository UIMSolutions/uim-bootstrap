module source.uim.bootstrap.bs5.demos.forms.range;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/forms/range", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Range - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
auto defaultExample = demoBs5Example("default", "Default", 
  H5Div(
    BS5FormCheck(
      H5Label(["form-label"], ["for":"inputRange"], "Range input label"),
      H5Input("inputRange", ["form-range"], ["type":"range"]))
  ), ``, ``);

auto minmaxExample = demoBs5Example("minmax", "MinMax", 
  H5Div(
    H5Label(["form-label"], ["for":"inputRangeMinMax"], "Range input label"),
    H5Input("inputRangeMinMax", ["form-range"], ["type":"range", "min":"0", "max":"10"])
  ), ``, ``);

auto stepsExample = demoBs5Example("steps", "With Steps", 
  H5Div(
    H5Label(["form-label"], ["for":"inputRangeSteps"], "Range input label"),
    H5Input("inputRangeSteps", ["form-range"], ["type":"range", "min":"0", "max":"10", "step":"0.5"])
  ), ``, ``);

        return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/basic", "/demos/uim-bootstrap/5/basic/basic/forms"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Basic", "Forms"], "Range")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "forms"),
      listSections("basic", "forms", "range")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Range"),
      H5Hr,

      defaultExample,
      minmaxExample,
      stepsExample
      
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
