module source.uim.bootstrap.bs5.demos.utilities.display;

import uim.bootstrap;

static this() {
	demoBS5.pages("utilities/display", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Display - Bootstrap 5 Demo",
          ]);
		} 
			
     override string content() { 

auto defaultExample = demoBs5Example("default", "None", 
  H5Div(
    H5Div(["d-none"], "Display none")
  ), ``, ``);

auto inlineExample = demoBs5Example("Inline", "Inline and block", 
  H5Div(
    H5Div(["d-inline", "bg-secondary", "text-white p-2"], "Display inline"),
    H5Div(["d-inline", "bg-secondary", "text-white p-2"], "Display inline"),
    H5Br,H5Br,
    H5Span(["d-block", "bg-secondary", "text-white p-2"], "Display block"),
    H5Br,
    H5Div(["d-inline-block", "bg-secondary", "text-white p-2"],
      H5H4(["Inline-block"], "Display inline-block")
    ),
    H5Div(["d-inline-block", "bg-secondary", "text-white p-2"],
      H5H4(["Inline-block"], "Display inline-block")
    )
  ), ``, ``);

auto gridExample = demoBs5Example("grid", "Grid", 
  H5Div(
    H5Div(["d-grid"], "Display grid")
  ), ``, ``);

auto tableExample = demoBs5Example("table", "Table", 
  H5Div(
    H5Div(["d-table"], "Display table"),
    H5Div(["d-table-row"], "Display table-row"),
    H5Div(["d-table-cell"], "Display table-cell")
  ), ``, ``);

auto flexExample = demoBs5Example("flex", "Flex", 
  H5Div(
    H5Div(["d-flex"], "Display flex"),
    H5Div(["d-inline-flex"], "Display inline-flex")
  ), ``, ``);

auto displayExample = demoBs5Example("display", "Responsive display none", 
  H5Div(
    H5Div(["d-sm-none"], "Display none for breakpoints sm and up"),
    H5Div(["d-md-none"], "Display none for breakpoints md and up"),
    H5Div(["d-lg-none"], "Display none for breakpoints lg and up"),
    H5Div(["d-xl-none"], "Display none for breakpoints xl and up"),
    H5Div(["d-xxl-none"], "Display none for breakpoints xxl and up")
  ), ``, ``);

auto printExample = demoBs5Example("print", "Print", 
  H5Div(
    H5Div(["d-print-none"], "Display none for print"),
    H5Div(["d-print-inline"], "Display inline for print"),
    H5Div(["d-print-block"], "Display block for print"),
    H5Div(["d-print-inline-block"], "Display inline-block for print"),
    H5Div(["d-print-grid"], "Display grid for print"),
    H5Div(["d-print-table"], "Display table for print"),
    H5Div(["d-print-table-row"], "Display table-row for print"),
    H5Div(["d-print-table-cell"], "Display table-cell for print"),
    H5Div(["d-print-flex"], "Display flex for print"),
    H5Div(["d-print-inline-flex"], "Display inline-flex for print")
  ), ``, ``);

      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/utilities"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Utilities"], "Display")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(created, changed),
      H5H2(["display-4"], "Display"),
      H5Hr,

      defaultExample, 
      inlineExample, 
      gridExample, 
      tableExample, 
      flexExample, 
      displayExample, 
      printExample

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}   
