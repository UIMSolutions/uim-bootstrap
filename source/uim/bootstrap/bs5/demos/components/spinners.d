module uim.bootstrap.bs5.demos.components.spinners;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/spinners", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Spinners - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto borderExample = demoBs5Example("border", "Border spinner", 
  H5Div(
    BS5SpinnerBorder(["role":"status"], 
      H5Span(["visually-hidden"], "Loading..."))
      ), ``, ``);

auto growingExample = demoBs5Example("growing", "Growing spinner", 
  H5Div(
    BS5SpinnerGrow(["role":"status"], 
      H5Span(["visually-hidden"], "Loading..."))
      ), ``, ``);

auto colorsExample = demoBs5Example("colors", "Colors Border", 
  H5Div(
    BS5SpinnerBorder(["text-primary"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerBorder(["text-secondary"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerBorder(["text-success"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerBorder(["text-danger"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerBorder(["text-warning"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerBorder(["text-info"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerBorder(["text-light"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerBorder(["text-dark"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading..."))
      ), ``, ``);

auto colors2Example = demoBs5Example("colors2", "Colors Grow", 
  H5Div(
    BS5SpinnerGrow(["text-primary"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerGrow(["text-secondary"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerGrow(["text-success"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerGrow(["text-danger"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerGrow(["text-warning"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerGrow(["text-info"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerGrow(["text-light"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerGrow(["text-dark"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading..."))
      ), ``, ``);

auto sizingExample = demoBs5Example("sizing", "Sizing Border", 
  H5Div(
    BS5SpinnerBorder(["spinner-border-sm"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerBorder(["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerBorder(["role":"status", "style":"width: 3rem; height: 3rem;"], 
      H5Span(["visually-hidden"], "Loading..."))
      ), ``, ``);

auto sizing2Example = demoBs5Example("sizing2", "Sizing Grow", 
  H5Div(
    BS5SpinnerGrow(["spinner-grow-sm"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerGrow(["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    BS5SpinnerGrow(["role":"status", "style":"width: 3rem; height: 3rem;"], 
      H5Span(["visually-hidden"], "Loading..."))
      ), ``, ``);

auto alignmentExample = demoBs5Example("alignment", "Alignment", 
  H5Div(
              // <p>Use <a href="spacing.html"]spacing</a>, <a href="flex.html"]flex</a>, <a href="float.html"]float</a> and <a href="text.html"]text</a> utilities to align and place your spinner as needed.</p>
    H5H4(["h5", "text-muted", "mt-3"], "Margin"),
    BS5SpinnerBorder(["m-3"], ["role":"status"], 
      H5Span(["visually-hidden"], "Loading...")),
    H5H4(["h5", "text-muted", "mt-3"], "Flex"),
    H5Div(["d-flex justify-content-center"], 
      BS5SpinnerBorder(["role":"status"],
        H5Span(["visually-hidden"], "Loading..."))),
    H5Div(["d-flex", "align-items-center"], 
      H5Strong("Loading..."),
      BS5SpinnerBorder(["ms-auto"], ["role":"status", "aria-hidden":"true"])),
    H5H4(["h5", "text-muted", "mt-3"], "Float"),
    H5Div(["clearfix"], 
      BS5SpinnerBorder(["float-end"], ["role":"status"],
        H5Span(["visually-hidden"], "Loading..."))),
    H5H4(["h5", "text-muted", "mt-3"], "Text align"),
    H5Div(["text-center"], 
      H5Div(["spinner-border"], ["role":"status"],
        H5Span(["visually-hidden"], "Loading...")))
      ), ``, ``);


      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Components"], "Spinners")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Spinners"),
      H5Hr,

      borderExample,
      growingExample,
      colorsExample,
      colors2Example,
      sizingExample,
      sizing2Example,
      alignmentExample

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}