module source.uim.bootstrap.bs5.demos.layouts.columns;

import uim.bootstrap;

static this() {
	demoBS5.pages("layouts/columns", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Columns - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return `
<main>
  <div class="container-fluid mt-3 bg-light m-1">
    <nav aria-label="Breadcrumb" >
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
        <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/contents">Contents</a></li>
        <li class="breadcrumb-item active" aria-current="page">Columns</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Columns</h2>
        <hr>

        <div class="mb-5">
          <h3 class="text-muted container">Vertical alignment</h3>
          <div>
            <div class="container">
              <h4 class="h5 text-muted mt-3">Row</h4>
              <p>Grid with vertical alignment on .row using flex utilities</p>
            </div>
            <div class="container" data-example="row-height">
              <div class="row align-items-start">
                <div class="col">.col</div>
                <div class="col">.col</div>
                <div class="col">.col</div>
              </div>
              <div class="row align-items-center">
                <div class="col">.col</div>
                <div class="col">.col</div>
                <div class="col">.col</div>
              </div>
              <div class="row align-items-end">
                <div class="col">.col</div>
                <div class="col">.col</div>
                <div class="col">.col</div>
              </div>
            </div>
            <div class="container">
              <h4 class="h5 text-muted mt-3">Column</h4>
              <p>Grid with vertical alignment on .col using flex utilities</p>
            </div>
            <div class="container" data-example="row-height">
              <div class="row">
                <div class="col align-self-start">.col .align-self-start</div>
                <div class="col align-self-center">.col .align-self-center</div>
                <div class="col align-self-end">.col .align-self-end</div>
              </div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <div class="container">
            <h3 class="text-muted">Horizontal alignment</h3>
            <p>Grid with horizontal alignment on .row using flex utilities</p>
          </div>
          <div>
            <div class="container">
              <div class="row justify-content-start">
                <div class="col-3">.col-3</div>
                <div class="col-3">.col-3</div>
                <div class="col-3">.col-3</div>
              </div>
              <div class="row justify-content-center">
                <div class="col-3">.col-3</div>
                <div class="col-3">.col-3</div>
                <div class="col-3">.col-3</div>
              </div>
              <div class="row justify-content-end">
                <div class="col-3">.col-3</div>
                <div class="col-3">.col-3</div>
                <div class="col-3">.col-3</div>
              </div>
              <div class="row justify-content-around">
                <div class="col-3">.col-3</div>
                <div class="col-3">.col-3</div>
                <div class="col-3">.col-3</div>
              </div>
              <div class="row justify-content-between">
                <div class="col-3">.col-3</div>
                <div class="col-3">.col-3</div>
                <div class="col-3">.col-3</div>
              </div>
              <div class="row justify-content-evenly">
                <div class="col-3">.col-3</div>
                <div class="col-3">.col-3</div>
                <div class="col-3">.col-3</div>
              </div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted container">Column wrapping</h3>
          <div>
            <div class="container">
              <div class="row">
                <div class="col-8">.col-8</div>
                <div class="col-5">.col-5</div>
                <div class="col-4">.col-4</div>
              </div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted container">Column breaks</h3>
          <div>
            <h4 class="h5 text-muted mt-3 container">All breakpoints</h4>
            <p>Grid with column break using sizing utility class</p>
            <div class="container">
              <div class="row">
                <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
                <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
                <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
                <div class="w-100"></div>
                <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
                <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
                <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
              </div>
            </div>
            <h4 class="h5 text-muted mt-3 container">Responsive</h4>
            <p>Grid with responsive column break using sizing and display utility classes</p>
            <div class="container">
              <div class="row">
                <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
                <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
                <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
                <div class="w-100 d-none d-lg-block"></div>
                <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
                <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
                <div class="col-6 col-sm-3">.col-6 .col-sm-3</div>
              </div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <div class="container">
            <h3 class="text-muted">Reordering</h3>
            <p>Grid reordering with flex utilities: order-first (-1), order-0 to order-5 and order-last (6)</p>
          </div>
          <div>
            <div class="container">
              <div class="row">
                <div class="col order-last">First, but last</div>
                <div class="col order-3">Second, but number 5</div>
                <div class="col order-2">Third, but number 4</div>
                <div class="col order-1">Fourth, but number 3</div>
                <div class="col order-first">Fifth, but first</div>
                <div class="col">Last, but unordered, so number 2</div>
              </div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted container">Offsetting</h3>
          <div>
            <h4 class="h5 text-muted mt-3 container">Offset classes</h4>
            <div class="container">
              <div class="row">
                <div class="col-md-5">.col-md-5</div>
                <div class="col-md-5 offset-md-2">.col-md-5 .offset-md-2</div>
              </div>
              <div class="row">
                <div class="col-lg-4 offset-lg-3">.col-lg-4 .offset-lg-3</div>
                <div class="col-lg-2 offset-lg-3">.col-lg-2 .offset-lg-3</div>
              </div>
              <div class="row">
                <div class="col-sm-6 col-md-5 col-lg-6">.col-sm-6 .col-md-5 .col-lg-6</div>
                <div class="col-sm-6 col-md-5 offset-md-2 col-lg-6 offset-lg-0">.col-sm-6 .col-md-5 .offset-md-2 .col-lg-6 .offset-lg-0</div>
              </div>
            </div>
            <h4 class="h5 text-muted mt-3 container">Spacing utilities</h4>
            <div class="container">
              <div class="row">
                <div class="col-md-5">.col-md-5</div>
                <div class="col-md-5 ms-auto">.col-md-5 .ms-auto</div>
              </div>
              <div class="row">
                <div class="col-lg-4 ms-lg-auto">.col-lg-4 .ms-lg-auto</div>
                <div class="col-lg-2 ms-lg-auto">.col-lg-2 .ms-lg-auto</div>
              </div>
              <div class="row">
                <div class="col-sm-6 me-lg-auto">.col-sm-6 .me-lg-auto</div>
                <div class="col-sm-3">.col-sm-3</div>
              </div>
            </div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted container">Standalone column classes</h3>
          <div>
            <div class="col-1">8.333333%</div>
            <div class="col-2">16.666667%</div>
            <div class="col-3">25%</div>
            <div class="col-4">33.333333%</div>
            <div class="col-5">41.666667%</div>
            <div class="col-6">50%</div>
            <div class="col-7">58.333333%</div>
            <div class="col-8">66.666667%</div>
            <div class="col-9">75%</div>
            <div class="col-10">83.333333%</div>
            <div class="col-11">91.666667%</div>
            <div class="col-12">100%</div>
          </div>
        </div>

      </div>
    </div>
  </div>
</main>

      `;
    }
  });
}