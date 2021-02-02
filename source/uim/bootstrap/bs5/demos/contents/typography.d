module source.uim.bootstrap.bs5.demos.contents.typography;

import uim.bootstrap;

static this() {
	demoBS5.pages("contents/typography", new class DH5AppPage {
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
      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/contents"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Contents"], "Typography")),

  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Typography"),
      H5Hr,

    ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}
 
/*
  H5Div(["container mt-3"]
    H5Div(["row"]
      H5Div(["col-12 col-lg-2"]
      )
      H5Div(["col-12 col-lg-8"]
        <h2 ["component display-4"]Typography</h2>
        <hr>

         H5Div(["mb-5"]
              <h3 ["text-muted"]Heading elements</h3>
              H5Div(
                <h1>&lt;h1&gt; heading</h1>
                <h2>&lt;h2&gt; heading</h2>
                <h3>&lt;h3&gt; heading</h3>
                <h4>&lt;h4&gt; heading")
                <h5>&lt;h5&gt; heading</h5>
                <h6>&lt;h6&gt; heading</h6>
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Heading classes</h3>
              H5Div(
                <p ["h1"].h1 heading</p>
                <p ["h2"].h2 heading</p>
                <p ["h3"].h3 heading</p>
                <p ["h4"].h4 heading</p>
                <p ["h5"].h5 heading</p>
                <p ["h6"].h6 heading</p>
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Secondary headings</h3>
              H5Div(
                <h1>
                  &lt;h1&gt; heading
                  <small ["text-muted"]Secondary heading</small>
                </h1>
                <h2>
                  &lt;h2&gt; heading
                  <small ["text-muted"]Secondary heading</small>
                </h2>
                <h3>
                  &lt;h3&gt; heading
                  <small ["text-muted"]Secondary heading</small>
                </h3>
                <h4>
                  &lt;h4&gt; heading
                  <small ["text-muted"]Secondary heading</small>
                ")
                <h5>
                  &lt;h5&gt; heading
                  <small ["text-muted"]Secondary heading</small>
                </h5>
                <h6>
                  &lt;h6&gt; heading
                  <small ["text-muted"]Secondary heading</small>
                </h6>
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Display headings</h3>
              H5Div(
                <h1 ["display-1"]Display heading 1</h1>
                <h1 ["display-2"]Display heading 2</h1>
                <h1 ["display-3"]Display heading 3</h1>
                <h1 ["display-4"]Display heading 4</h1>
                <h1 ["display-5"]Display heading 5</h1>
                <h1 ["display-6"]Display heading 6</h1>
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Lead paragraph</h3>
              H5Div(
                <p ["lead"]Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Inline elements</h3>
              H5Div(
                <p><mark>Highlighted text.</mark></p>
                <p><del>Deleted text.</del></p>
                <p><s>Text that is incorrect.</s></p>
                <p><ins>Inserted text.</ins></p>
                <p><u>Underlined text.</u></p>
                <p><small>Fine print.</small></p>
                <p><strong>Strong text.</strong></p>
                <p><em>Emphasized text.</em></p>
                <p><b>Bold text.</b></p>
                <p><i>Alternate voice, technical term etc.</i></p>
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Inline styles using classes</h3>
              H5Div(
                <p><span ["mark"]Highlighted text.</span></p>
                <p><span ["small"]Fine print.</span></p>
                <p><span ["text-decoration-underline"]Underlined text.</span></p>
                <p><span ["text-decoration-line-through"]Text that is incorrect.</span></p>
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Abbreviations</h3>
              H5Div(
                <p><abbr title="attribute"]attr</abbr></p>
                <p><abbr title="HyperText Markup Language" ["initialism"]html</abbr></p>
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Blockquotes</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Default")
                <blockquote ["blockquote"]
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                </blockquote>
                H5H4(["h5", "text-muted", "mt-3"], "Attribution")
                H5Figure(>
                  <blockquote ["blockquote"]
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                  </blockquote>
                  H5FigCaption(["blockquote-footer"]Author name in <cite title="Source Title"]Source Title</cite>)
                )
                H5H4(["h5", "text-muted", "mt-3"], "Alignment")
                H5Figure( ["text-center"]
                  <blockquote ["blockquote"]
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                  </blockquote>
                  H5FigCaption(["blockquote-footer"]Author name in <cite title="Source Title"]Source Title</cite>)
                )
                H5Figure( ["text-end"]
                  <blockquote ["blockquote"]
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                  </blockquote>
                  H5FigCaption(["blockquote-footer"]Author name in <cite title="Source Title"]Source Title</cite>)
                )
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Unstyled lists</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Unordered lists")
                <ul ["list-unstyled"]
                  <li>First item</li>
                  <li>Second item</li>
                  <li>Third item</li>
                  <li>Sub-items:
                    <ul>
                      <li>First sub-item</li>
                      <li>Second sub-item</li>
                      <li>Third sub-item</li>
                    </ul>
                  </li>
                </ul>
                <ul ["list-unstyled"]
                  <li>First item</li>
                  <li>Second item</li>
                  <li>Third item</li>
                  <li>Sub-items:
                    <ul ["list-unstyled"]
                      <li>First sub-item</li>
                      <li>Second sub-item</li>
                      <li>Third sub-item</li>
                    </ul>
                  </li>
                </ul>
                H5H4(["h5", "text-muted", "mt-3"], "Ordered lists")
                <ol ["list-unstyled"]
                  <li>First item</li>
                  <li>Second item</li>
                  <li>Third item</li>
                  <li>Sub-items:
                    <ol>
                      <li>First sub-item</li>
                      <li>Second sub-item</li>
                      <li>Third sub-item</li>
                    </ol>
                  </li>
                </ol>
                <ol ["list-unstyled"]
                  <li>First item</li>
                  <li>Second item</li>
                  <li>Third item</li>
                  <li>Sub-items:
                    <ol ["list-unstyled"]
                      <li>First sub-item</li>
                      <li>Second sub-item</li>
                      <li>Third sub-item</li>
                    </ol>
                  </li>
                </ol>
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Inline lists</h3>
              H5Div(
                H5H4(["h5", "text-muted", "mt-3"], "Unordered lists")
                <ul ["list-inline"]
                  <li ["list-inline-item"]First inline item</li>
                  <li ["list-inline-item"]Second inline item</li>
                  <li ["list-inline-item"]Third inline item</li>
                </ul>
                H5H4(["h5", "text-muted", "mt-3"], "Ordered lists")
                <ol ["list-inline"]
                  <li ["list-inline-item"]First inline item</li>
                  <li ["list-inline-item"]Second inline item</li>
                  <li ["list-inline-item"]Third inline item</li>
                </ol>
              )
            )

            H5Div(["mb-5"]
              <h3 ["text-muted"]Description lists</h3>
              H5Div(
                <dl ["row"]
                  <dt ["col-md-3"]Term</dt>
                  <dd ["col-md-9"]Description</dd>
                  <dt ["col-md-3 text-truncate"]Very long and truncated term</dt>
                  <dd ["col-md-9"]Description</dd>
                  <dt ["col-md-3"]Term</dt>
                  <dd ["col-md-9"]
                    <dl ["row"]
                      <dt ["col-md-4"]Nested term</dt>
                      <dd ["col-md-8"]Nested description</dd>
                      <dt ["col-md-4 text-truncate"]Very long and truncated term</dt>
                      <dd ["col-md-8"]Nested description</dd>
                    </dl>
                  </dd>
                </dl>
              )
            )
          )
        )
      )
*/