module source.uim.bootstrap.bs5.demos.contents.typography;

import uim.bootstrap;

static this() {
	demoBS5.pages("basic/contents/typography", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Typography - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto elementsExample = demoBs5Example("elements", "Heading elements", 
  H5Div(
    H5H1("h1 heading"),
    H5H2("h2 heading"),
    H5H3("h3 heading"),
    H5H4("h4 heading"),
    H5H5("h5 heading"),
    H5H6("h6 heading"),
  ), `H5H1("h1 heading")
  H5H2("h2 heading")
  H5H3("h3 heading")
  H5H4("h4 heading")
  H5H5("h5 heading")
  H5H6("h6 heading")`, ``);

auto classesExample = demoBs5Example("classes", "Heading classes", 
  H5Div(
    H5P(["h1"], ".h1 heading"),
    H5P(["h2"], ".h2 heading"),
    H5P(["h3"], ".h3 heading"),
    H5P(["h4"], ".h4 heading"),
    H5P(["h5"], ".h5 heading"),
    H5P(["h6"], ".h6 heading")
  ), `H5P(["h1"], ".h1 heading")
  H5P(["h2"], ".h2 heading")
  H5P(["h3"], ".h3 heading")
  H5P(["h4"], ".h4 heading")
  H5P(["h5"], ".h5 heading")
  H5P(["h6"], ".h6 heading")`, ``);

auto secondaryExample = demoBs5Example("secondary", "Secondary headings", 
  H5Div(
    H5H1(
      H5String("h1 heading"),
      H5Small(["text-muted"], "Secondary heading"),
    ),
    H5H2(
      H5String("h2 heading"),
      H5Small(["text-muted"], "Secondary heading"),
    ),
    H5H3(
      H5String("h3 heading"),
      H5Small(["text-muted"], "Secondary heading"),
    ), 
    H5H4(
      H5String("h4 heading"),
      H5Small(["text-muted"], "Secondary heading"),
    ),
    H5H5(
      H5String("h5 heading"),
      H5Small(["text-muted"], "Secondary heading"),
    ),
    H5H6(
      H5String("h6 heading"),
      H5Small(["text-muted"], "Secondary heading"),
    )
  ), ``, ``);

auto displayExample = demoBs5Example("display", "Display headings", 
  H5Div(
    H5H1(["display-1"], "Display heading 1"),
    H5H1(["display-2"], "Display heading 2"),
    H5H1(["display-3"], "Display heading 3"),
    H5H1(["display-4"], "Display heading 4"),
    H5H1(["display-5"], "Display heading 5"),
    H5H1(["display-6"], "Display heading 6")
  ), ``, ``);

auto leadExample = demoBs5Example("lead", "Lead paragraph", 
  H5Div(
    H5P(["lead"], "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
  ), ``, ``);

auto inlineExample = demoBs5Example("inline", "Inline elements", 
  H5Div(
    H5P(H5Mark("Highlighted text.")),
    H5P(H5Del("Deleted text.")),
    H5P(H5S("Text that is incorrect.")),
    H5P(H5Ins("Inserted text.")),
    H5P(H5U("Underlined text.")),
    H5P(H5Small("Fine print.")),
    H5P(H5Strong("Strong text.")),
    H5P(H5Em("Emphasized text.")),
    H5P(H5B("Bold text.")),
    H5P(H5I("Alternate voice, technical term etc.")),
  ), ``, ``);

auto inlinestylesExample = demoBs5Example("inlinestyles", "Inline styles using classes", 
  H5Div(
    H5P(H5Span(["mark"], "Highlighted text.")),
    H5P(H5Span(["small"], "Fine print.")),
    H5P(H5Span(["text-decoration-underline"], "Underlined text.")),
    H5P(H5Span(["text-decoration-line-through"], "Text that is incorrect."))
  ), ``, ``);

auto abbreviationsExample = demoBs5Example("abbreviations", "Abbreviations", 
  H5Div(
    H5P(H5Abbr(["title":"attribute"], "attr</abbr>")),
    H5P(H5Abbr(["title":"HyperText Markup Language"], "[initialism]html"))
  ), ``, ``);

auto blockquotesExample = demoBs5Example("Blockquotes", "Blockquotes", 
  H5Div(
    H5H5(["text-muted", "mt-3"], "Default"),
    H5Blockquote(["blockquote"],
      H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
    ),
    H5H5(["text-muted", "mt-3"], "Attribution"),
    H5Figure(
      H5Blockquote(["blockquote"],
        H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
      ),
      H5Figcaption(["blockquote-footer"], `Author name in <cite title="Source Title"]Source Title</cite>`)
    ),
    H5H5(["text-muted", "mt-3"], "Alignment"),
    H5Figure(["text-center"],
      H5Blockquote(["blockquote"],
        H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
      ),
      H5Figcaption(["blockquote-footer"], `Author name in <cite title="Source Title"]Source Title</cite>`)
    ),
    H5Figure(["text-end"],
      H5Blockquote(["blockquote"],
        H5P("Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.")
      ),
      H5Figcaption(["blockquote-footer"], `Author name in <cite title="Source Title"]Source Title</cite>`)
    )
  ), ``, ``);

auto unstyledExample = demoBs5Example("unstyled", "Unstyled lists", 
  H5Div(
    H5H5(["text-muted", "mt-3"], "Unordered lists"),
    H5Ul(["list-unstyled"],
      H5Li("First item"),
      H5Li("Second item"),
      H5Li("Third item"),
      H5Li(
        H5String("Sub-items:"),
        H5Ul(
          H5Li("First sub-item"),
          H5Li("Second sub-item"),
          H5Li("Third sub-item")
        )
      )
    ),
    H5Ul(["list-unstyled"],
      H5Li("First item"),
      H5Li("Second item"),
      H5Li("Third item"),
      H5Li(
        H5String("Sub-items:"),
        H5Ul(["list-unstyled"],
          H5Li("First sub-item"),
          H5Li("Second sub-item"),
          H5Li("Third sub-item")
        )
      )
    ),
    H5H5(["text-muted", "mt-3"], "Ordered lists"),
    H5Ol(["list-unstyled"],
      H5Li("First item"),
      H5Li("Second item"),
      H5Li(
        H5String("Third item"),
        H5String("Sub-items:"),
        H5Ol(
          H5Li("First sub-item"),
          H5Li("Second sub-item"),
          H5Li("Third sub-item")
        )
      )
    ),
    H5Ol(["list-unstyled"],
      H5Li("First item"),
      H5Li("Second item"),
      H5Li("Third item"),
      H5Li(
        H5String("Sub-items:"),
        H5Ol(["list-unstyled"],
          H5Li("First sub-item"),
          H5Li("Second sub-item"),
          H5Li("Third sub-item")
        )
      )
    )
  ), ``, ``);

auto inlinelistsExample = demoBs5Example("inlinelists", "Inline lists", 
  H5Div(
    H5H5(["text-muted", "mt-3"], "Unordered lists"),
    H5Ul(["list-inline"],
      H5Li(["list-inline-item"], "First inline item"),
      H5Li(["list-inline-item"], "Second inline item"),
      H5Li(["list-inline-item"], "Third inline item")
    ),
    H5H5(["text-muted", "mt-3"], "Ordered lists"),
    H5Ol(["list-inline"],
      H5Li(["list-inline-item"], "First inline item"),
      H5Li(["list-inline-item"], "Second inline item"),
      H5Li(["list-inline-item"], "Third inline item")
    )
  ), ``, ``);

auto descriptionExample = demoBs5Example("description", "Description lists", 
  H5Div(
    H5Dl(["row"],
      H5Dt(["col-md-3"], "Term"),
      H5Dd(["col-md-9"], "Description"),
      H5Dt(["col-md-3", "text-truncate"], "Very long and truncated term"),
      H5Dd(["col-md-9"], "Description"),
      H5Dt(["col-md-3"], "Term"),
      H5Dd(["col-md-9"],
        H5Dl(["row"],
          H5Dt(["col-md-4"], "Nested term"),
          H5Dd(["col-md-8"], "Nested description"),
          H5Dt(["col-md-4 text-truncate"], "Very long and truncated term"),
          H5Dd(["col-md-8"], "Nested description")
        )
      )
    )
  ), ``, ``); 

      return 
H5Main(["style":"margin-top:70px;"], 
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5/", "/demos/uim-bootstrap/5/basic/", "/demos/uim-bootstrap/5/basic/contents"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Basic", "Contents"], "Typography")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"], 
      listLevels("basic"),
      listAreas("basic", "contents"),
      listSections("basic", "contents", "typography")),
    H5Div(["col-12", "col-lg-8"], 
      dateInfo(this),
      H5H2(["display-4"], "Typography"),
      H5Hr,

      elementsExample,
      classesExample,
      secondaryExample,
      displayExample,
      leadExample,
      inlineExample,
      inlinestylesExample,
      abbreviationsExample,
      blockquotesExample,
      unstyledExample,
      inlinelistsExample,
      descriptionExample

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
 
