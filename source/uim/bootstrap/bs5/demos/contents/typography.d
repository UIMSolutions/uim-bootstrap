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
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Typography</h2>
        <hr>

         <div class="mb-5">
              <h3 class="text-muted">Heading elements</h3>
              <div>
                <h1>&lt;h1&gt; heading</h1>
                <h2>&lt;h2&gt; heading</h2>
                <h3>&lt;h3&gt; heading</h3>
                <h4>&lt;h4&gt; heading</h4>
                <h5>&lt;h5&gt; heading</h5>
                <h6>&lt;h6&gt; heading</h6>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Heading classes</h3>
              <div>
                <p class="h1">.h1 heading</p>
                <p class="h2">.h2 heading</p>
                <p class="h3">.h3 heading</p>
                <p class="h4">.h4 heading</p>
                <p class="h5">.h5 heading</p>
                <p class="h6">.h6 heading</p>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Secondary headings</h3>
              <div>
                <h1>
                  &lt;h1&gt; heading
                  <small class="text-muted">Secondary heading</small>
                </h1>
                <h2>
                  &lt;h2&gt; heading
                  <small class="text-muted">Secondary heading</small>
                </h2>
                <h3>
                  &lt;h3&gt; heading
                  <small class="text-muted">Secondary heading</small>
                </h3>
                <h4>
                  &lt;h4&gt; heading
                  <small class="text-muted">Secondary heading</small>
                </h4>
                <h5>
                  &lt;h5&gt; heading
                  <small class="text-muted">Secondary heading</small>
                </h5>
                <h6>
                  &lt;h6&gt; heading
                  <small class="text-muted">Secondary heading</small>
                </h6>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Display headings</h3>
              <div>
                <h1 class="display-1">Display heading 1</h1>
                <h1 class="display-2">Display heading 2</h1>
                <h1 class="display-3">Display heading 3</h1>
                <h1 class="display-4">Display heading 4</h1>
                <h1 class="display-5">Display heading 5</h1>
                <h1 class="display-6">Display heading 6</h1>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Lead paragraph</h3>
              <div>
                <p class="lead">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Inline elements</h3>
              <div>
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
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Inline styles using classes</h3>
              <div>
                <p><span class="mark">Highlighted text.</span></p>
                <p><span class="small">Fine print.</span></p>
                <p><span class="text-decoration-underline">Underlined text.</span></p>
                <p><span class="text-decoration-line-through">Text that is incorrect.</span></p>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Abbreviations</h3>
              <div>
                <p><abbr title="attribute">attr</abbr></p>
                <p><abbr title="HyperText Markup Language" class="initialism">html</abbr></p>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Blockquotes</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Default</h4>
                <blockquote class="blockquote">
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                </blockquote>
                <h4 class="h5 text-muted mt-3">Attribution</h4>
                <figure>
                  <blockquote class="blockquote">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                  </blockquote>
                  <figcaption class="blockquote-footer">Author name in <cite title="Source Title">Source Title</cite></figcaption>
                </figure>
                <h4 class="h5 text-muted mt-3">Alignment</h4>
                <figure class="text-center">
                  <blockquote class="blockquote">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                  </blockquote>
                  <figcaption class="blockquote-footer">Author name in <cite title="Source Title">Source Title</cite></figcaption>
                </figure>
                <figure class="text-end">
                  <blockquote class="blockquote">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                  </blockquote>
                  <figcaption class="blockquote-footer">Author name in <cite title="Source Title">Source Title</cite></figcaption>
                </figure>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Unstyled lists</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Unordered lists</h4>
                <ul class="list-unstyled">
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
                <ul class="list-unstyled">
                  <li>First item</li>
                  <li>Second item</li>
                  <li>Third item</li>
                  <li>Sub-items:
                    <ul class="list-unstyled">
                      <li>First sub-item</li>
                      <li>Second sub-item</li>
                      <li>Third sub-item</li>
                    </ul>
                  </li>
                </ul>
                <h4 class="h5 text-muted mt-3">Ordered lists</h4>
                <ol class="list-unstyled">
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
                <ol class="list-unstyled">
                  <li>First item</li>
                  <li>Second item</li>
                  <li>Third item</li>
                  <li>Sub-items:
                    <ol class="list-unstyled">
                      <li>First sub-item</li>
                      <li>Second sub-item</li>
                      <li>Third sub-item</li>
                    </ol>
                  </li>
                </ol>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Inline lists</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Unordered lists</h4>
                <ul class="list-inline">
                  <li class="list-inline-item">First inline item</li>
                  <li class="list-inline-item">Second inline item</li>
                  <li class="list-inline-item">Third inline item</li>
                </ul>
                <h4 class="h5 text-muted mt-3">Ordered lists</h4>
                <ol class="list-inline">
                  <li class="list-inline-item">First inline item</li>
                  <li class="list-inline-item">Second inline item</li>
                  <li class="list-inline-item">Third inline item</li>
                </ol>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Description lists</h3>
              <div>
                <dl class="row">
                  <dt class="col-md-3">Term</dt>
                  <dd class="col-md-9">Description</dd>
                  <dt class="col-md-3 text-truncate">Very long and truncated term</dt>
                  <dd class="col-md-9">Description</dd>
                  <dt class="col-md-3">Term</dt>
                  <dd class="col-md-9">
                    <dl class="row">
                      <dt class="col-md-4">Nested term</dt>
                      <dd class="col-md-8">Nested description</dd>
                      <dt class="col-md-4 text-truncate">Very long and truncated term</dt>
                      <dd class="col-md-8">Nested description</dd>
                    </dl>
                  </dd>
                </dl>
              </div>
            </div>
          </div>
        </div>
      </div>
*/