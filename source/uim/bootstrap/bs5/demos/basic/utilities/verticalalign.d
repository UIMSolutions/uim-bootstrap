module source.uim.bootstrap.bs5.demos.utilities.verticalalign;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/utilities/verticalalign", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Vertical Align - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto inlineExample = demoBs5Example("inline", "Inline and inline-block", 
  H5Div(
/*     H5H1("BaselineH5Img(["src":"/img/20x20.png" ["align-baseline"])
    H5H1("Text-topH5Img(["src":"/img/20x20.png" ["align-text-top"])
    H5H1("Text-bottomH5Img(["src":"/img/20x20.png" ["align-text-bottom"])
    H5H1("TopH5Img(["src":"/img/20x20.png" ["align-top"])
    H5H1("MiddleH5Img(["src":"/img/20x20.png" ["align-middle"])
    H5H1("BottomH5Img(["src":"/img/20x20.png" ["align-bottom"]) */
  ), ``, ``);

auto cellExample = demoBs5Example("cell", "Table cell", 
  H5Div(
    H5P("Text-top and text-bottom not applicable on table cells"),
    H5Table(["table"], ["style":"height: 200px;"],
      H5Tbody(
        H5Tr(
          H5Td(["align-baseline"], "Baseline"),
          H5Td(["align-top"], "Top"),
          H5Td(["align-middle"], "Middle"),
          H5Td(["align-bottom"], "Bottom")
        )
      )
    )
  ), ``, ``); 

            return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Utilities"], "Vertical Align")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "utilities"),
      listSections("basic", "utilities", "verticalalign")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Vertical Align"),
      H5Hr,

      inlineExample, 
      cellExample 
    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}  
