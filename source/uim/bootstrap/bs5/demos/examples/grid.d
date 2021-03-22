module uim.bootstrap.bs5.demos.examples.grid;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/grid", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Starter Page - Bootstrap 5 Demo",
          ])
          .styles(`.themed-grid-col {
  padding-top: .75rem;
  padding-bottom: .75rem;
  background-color: rgba(86, 61, 124, .15);
  border: 1px solid rgba(86, 61, 124, .2);
}

.themed-container {
  padding: .75rem;
  margin-bottom: 1.5rem;
  background-color: rgba(0, 123, 255, .15);
  border: 1px solid rgba(0, 123, 255, .2);
}

.bd-placeholder-img {
  font-size: 1.125rem;
  text-anchor: middle;
  -webkit-user-select: none;
  -moz-user-select: none;
  user-select: none;
}

@media (min-width: 768px) {
  .bd-placeholder-img-lg {
    font-size: 3.5rem;
  }
}`).styles(["href":"grid.css", "rel":"stylesheet"]);
		} 
			
    override string content(string[string] someParameters = null) {  
//   <body class="py-4">

      return 
H5Main(
 
   H5Div(["container"],

    H5H1("Bootstrap grid examples"),
    H5P(["lead"], "Basic grid layouts to get you familiar with building within the Bootstrap grid system."),
    H5P("In these examples the .themed-grid-col @safe: class is added to the columns to add some theming. This is not a @safe: class that is available in Bootstrap by default."),

    H5H2(["mt-4"], "Five grid tiers"),
    H5P("There are five tiers to the Bootstrap grid system, one for each range of devices we support. Each tier starts at a minimum viewport size and automatically applies to the larger devices unless overridden."),

    H5Div(["row mb-3"], 
      H5Div(["col-4 themed-grid-col"], ".col-4"),
      H5Div(["col-4 themed-grid-col"], ".col-4"),
      H5Div(["col-4 themed-grid-col"], ".col-4")
    ),

    H5Div(["row mb-3"], 
      H5Div(["col-sm-4 themed-grid-col"], ".col-sm-4"),
      H5Div(["col-sm-4 themed-grid-col"], ".col-sm-4"),
      H5Div(["col-sm-4 themed-grid-col"], ".col-sm-4")
    ),

    H5Div(["row mb-3"], 
      H5Div(["col-md-4 themed-grid-col"], ".col-md-4"),
      H5Div(["col-md-4 themed-grid-col"], ".col-md-4"),
      H5Div(["col-md-4 themed-grid-col"], ".col-md-4")
    ),

    H5Div(["row mb-3"], 
      H5Div(["col-lg-4 themed-grid-col"], ".col-lg-4"),
      H5Div(["col-lg-4 themed-grid-col"], ".col-lg-4"),
      H5Div(["col-lg-4 themed-grid-col"], ".col-lg-4")
    ),

    H5Div(["row mb-3"], 
      H5Div(["col-xl-4 themed-grid-col"], ".col-xl-4"),
      H5Div(["col-xl-4 themed-grid-col"], ".col-xl-4"),
      H5Div(["col-xl-4 themed-grid-col"], ".col-xl-4")
    ),

    H5Div(["row mb-3"], 
      H5Div(["col-xxl-4 themed-grid-col"], ".col-xxl-4"),
      H5Div(["col-xxl-4 themed-grid-col"], ".col-xxl-4"),
      H5Div(["col-xxl-4 themed-grid-col"], ".col-xxl-4")
    ),

    H5H2(["mt-4"], "Three equal columns"),
    H5P("Get three equal-width columns starting at desktops and scaling to large desktops. On mobile devices, tablets and below, the columns will automatically stack."),
    H5Div(["row mb-3"], 
      H5Div(["col-md-4 themed-grid-col"], ".col-md-4"),
      H5Div(["col-md-4 themed-grid-col"], ".col-md-4"),
      H5Div(["col-md-4 themed-grid-col"], ".col-md-4")
    ),

    H5H2(["mt-4"], "Three equal columns alternative"),
    H5P("By using the .row-cols-* classes, you can easily create a grid with equal columns."),
    H5Div(["row row-cols-md-3 mb-3"], 
      H5Div(["col themed-grid-col"], `H5Code(".col") child of H5Code(".row-cols-md-3")`),
      H5Div(["col themed-grid-col"], `H5Code(".col") child of H5Code(".row-cols-md-3")`),
      H5Div(["col themed-grid-col"], `H5Code(".col") child of H5Code(".row-cols-md-3")`)
    ),

    H5H2(["mt-4"], "Three unequal columns"),
    H5P("Get three columns starting at desktops and scaling to large desktops of various widths. Remember, grid columns should add up to twelve for a single horizontal block. More than that, and columns start stacking no matter the viewport."),
    H5Div(["row mb-3"], 
      H5Div(["col-md-3 themed-grid-col"], ".col-md-3"),
      H5Div(["col-md-6 themed-grid-col"], ".col-md-6"),
      H5Div(["col-md-3 themed-grid-col"], ".col-md-3")
    ),

    H5H2(["mt-4"], "Two columns"),
    H5P("Get two columns <strong>starting at desktops and scaling to large desktops"),
    H5Div(["row mb-3"], 
      H5Div(["col-md-8 themed-grid-col"], ".col-md-8"),
      H5Div(["col-md-4 themed-grid-col"], ".col-md-4")
    ),

    H5H2(["mt-4"], "Full width, single column"),
    H5P(["text-warning"], "No grid classes are necessary for full-width elements."),

    H5Hr(["my-4"]),

    H5H2(["mt-4"], "Two columns with two nested columns"),
    H5P("Per the documentation, nesting is easy—just put a row of columns within an existing column. This gives you two columns <strong>starting at desktops and scaling to large desktops, with another two (equal widths) within the larger column."),
    H5P("At mobile device sizes, tablets and down, these columns and their nested columns will stack."),
    H5Div(["row mb-3"], 
      H5Div(["col-md-8 themed-grid-col"], 
        H5Div(["pb-3"], ".col-md-8"),
        H5Div(["row"], 
          H5Div(["col-md-6 themed-grid-col"], ".col-md-6"),
          H5Div(["col-md-6 themed-grid-col"], ".col-md-6")
        )
      ),
      H5Div(["col-md-4 themed-grid-col"], ".col-md-4")
    ),

    H5Hr(["my-4"]),

    H5H2(["mt-4"], "Mixed: mobile and desktop"),
    H5P("The Bootstrap v4 grid system has five tiers of classes: xs (extra small, this @safe: class infix is not used), sm (small), md (medium), lg (large), and xl (extra large). You can use nearly any combination of these classes to create more dynamic and flexible layouts."),
    H5P("Each tier of classes scales up, meaning if you plan on setting the same widths for md, lg and xl, you only need to specify md."),
    H5Div(["row mb-3"], 
      H5Div(["col-md-8 themed-grid-col"], ".col-md-8"),
      H5Div(["col-6 col-md-4 themed-grid-col"], ".col-6 .col-md-4")
    ),
    H5Div(["row mb-3"], 
      H5Div(["col-6 col-md-4 themed-grid-col"], ".col-6 .col-md-4"),
      H5Div(["col-6 col-md-4 themed-grid-col"], ".col-6 .col-md-4"),
      H5Div(["col-6 col-md-4 themed-grid-col"], ".col-6 .col-md-4")
    ),
    H5Div(["row mb-3"], 
      H5Div(["col-6 themed-grid-col"], ".col-6"),
      H5Div(["col-6 themed-grid-col"], ".col-6")
    ),

    H5Hr(["my-4"]),

    H5H2(["mt-4"], "Mixed: mobile, tablet, and desktop"),
    H5Div(["row mb-3"],
      H5Div(["col-sm-6 col-lg-8 themed-grid-col"], ".col-sm-6 .col-lg-8"),
      H5Div(["col-6 col-lg-4 themed-grid-col"], ".col-6 .col-lg-4")
    ),
    H5Div(["row mb-3"],
      H5Div(["col-6 col-sm-4 themed-grid-col"], ".col-6 .col-sm-4"),
      H5Div(["col-6 col-sm-4 themed-grid-col"], ".col-6 .col-sm-4"),
      H5Div(["col-6 col-sm-4 themed-grid-col"], ".col-6 .col-sm-4")
    ),

    H5Hr(["my-4"]),

    H5H2(["mt-4"], "Gutters"),
    H5P("With .gx-* classes, the horizontal gutters can be adjusted."),
    H5Div(["row row-cols-1 row-cols-md-3 gx-4"],
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".gx-4") gutters`),
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".gx-4") gutters`),
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".gx-4") gutters`),
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".gx-4") gutters`),
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".gx-4") gutters`),
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".gx-4") gutters`)
    ),
    H5P(["mt-4"], "Use the .gy-* classes to control the vertical gutters."),
    H5Div(["row row-cols-1 row-cols-md-3 gy-4"],
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".gy-4") gutters`),
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".gy-4") gutters`),
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".gy-4") gutters`),
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".gy-4") gutters`),
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".gy-4") gutters`),
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".gy-4") gutters`)
    ),
    H5P(["mt-4"], "With .g-* classes, the gutters in both directions can be adjusted."),
    H5Div(["row row-cols-1 row-cols-md-3 g-3"],
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".g-3") gutters`),
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".g-3") gutters`),
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".g-3") gutters`),
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".g-3") gutters`),
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".g-3") gutters`),
      H5Div(["col themed-grid-col"], `H5Code(".col") with H5Code(".g-3") gutters`)
    )
  ),

  H5Div("containers", ["container"],
    H5Hr(["my-4"]),

    H5H2(["mt-4"], "Containers"),
    H5P("Additional classes added in Bootstrap v4.4 allow containers that are 100% wide until a particular breakpoint. v5 adds a new xxl breakpoint.")
  ),

  H5Div(["container themed-container"], ".container"),
  H5Div(["container-sm themed-container"], ".container-sm"),
  H5Div(["container-md themed-container"], ".container-md"),
  H5Div(["container-lg themed-container"], ".container-lg"),
  H5Div(["container-xl themed-container"], ".container-xl"),
  H5Div(["container-xxl themed-container"], ".container-xxl"),
  H5Div(["container-fluid themed-container"], ".container-fluid")
).toString;

    }
  });
}
 
