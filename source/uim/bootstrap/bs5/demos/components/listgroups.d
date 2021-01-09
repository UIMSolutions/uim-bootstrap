module uim.bootstrap.bs5.demos.components.listgroups;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/listgroups", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "List Groups - Bootstrap 5 Demo",
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
        <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/components">Components</a></li>
        <li class="breadcrumb-item active" aria-current="page">List Groups</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">List Groups</h2>
        <hr>

        <div class="mb-5">
              <h3 class="text-muted">Default</h3>
              <div>
                <ul class="list-group">
                  <li class="list-group-item">List group item one</li>
                  <li class="list-group-item">List group item two</li>
                  <li class="list-group-item">List group item three</li>
                </ul>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Active item</h3>
              <div>
                <ul class="list-group">
                  <li class="list-group-item">List group item one</li>
                  <li class="list-group-item active" aria-current="true">List group item two</li>
                  <li class="list-group-item">List group item three</li>
                </ul>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Disabled item</h3>
              <div>
                <ul class="list-group">
                  <li class="list-group-item">List group item one</li>
                  <li class="list-group-item">List group item two</li>
                  <li class="list-group-item disabled" aria-disabled="true">List group item three</li>
                </ul>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Links</h3>
              <div>
                <div class="list-group">
                  <a href="#" class="list-group-item list-group-item-action">List group item one</a>
                  <a href="#" class="list-group-item list-group-item-action active" aria-current="true">List group item two</a>
                  <a href="#" class="list-group-item list-group-item-action disabled" tabindex="-1" aria-disabled="true">List group item three</a>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Buttons</h3>
              <div>
                <div class="list-group">
                  <button type="button" class="list-group-item list-group-item-action">List group item one</button>
                  <button type="button" class="list-group-item list-group-item-action active" aria-current="true">List group item two</button>
                  <button type="button" class="list-group-item list-group-item-action" disabled>List group item three</button>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Flush</h3>
              <div>
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">List group item one</li>
                  <li class="list-group-item">List group item two</li>
                  <li class="list-group-item">List group item three</li>
                </ul>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Horizontal</h3>
              <div>
                <h4 class="h5 text-muted mt-3">All breakpoints</h4>
                <ul class="list-group list-group-horizontal">
                  <li class="list-group-item">List group item one</li>
                  <li class="list-group-item">List group item two</li>
                  <li class="list-group-item">List group item three</li>
                </ul>
                <h4 class="h5 text-muted mt-3">Small and up</h4>
                <ul class="list-group list-group-horizontal-sm">
                  <li class="list-group-item">List group item one</li>
                  <li class="list-group-item">List group item two</li>
                  <li class="list-group-item">List group item three</li>
                </ul>
                <h4 class="h5 text-muted mt-3">Medium and up</h4>
                <ul class="list-group list-group-horizontal-md">
                  <li class="list-group-item">List group item one</li>
                  <li class="list-group-item">List group item two</li>
                  <li class="list-group-item">List group item three</li>
                </ul>
                <h4 class="h5 text-muted mt-3">Large and up</h4>
                <ul class="list-group list-group-horizontal-lg">
                  <li class="list-group-item">List group item one</li>
                  <li class="list-group-item">List group item two</li>
                  <li class="list-group-item">List group item three</li>
                </ul>
                <h4 class="h5 text-muted mt-3">Extra large and up</h4>
                <ul class="list-group list-group-horizontal-xl">
                  <li class="list-group-item">List group item one</li>
                  <li class="list-group-item">List group item two</li>
                  <li class="list-group-item">List group item three</li>
                </ul>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Equal-width list group item</h3>
              <div>
                <ul class="list-group list-group-horizontal">
                  <li class="list-group-item flex-fill">List group item one</li>
                  <li class="list-group-item flex-fill">List group item two</li>
                  <li class="list-group-item flex-fill">List group item three</li>
                </ul>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Contextual color classes</h3>
              <div>
                <h4 class="h5 text-muted mt-3">Normal list group</h4>
                <ul class="list-group">
                  <li class="list-group-item">Default list group item</li>
                  <li class="list-group-item list-group-item-primary">Primary list group item</li>
                  <li class="list-group-item list-group-item-secondary">Secondary list group item</li>
                  <li class="list-group-item list-group-item-success">Succcess list group item</li>
                  <li class="list-group-item list-group-item-danger">Danger list group item</li>
                  <li class="list-group-item list-group-item-warning">Warning list group item</li>
                  <li class="list-group-item list-group-item-info">Info list group item</li>
                  <li class="list-group-item list-group-item-light">Light list group item</li>
                  <li class="list-group-item list-group-item-dark">Dark list group item</li>
                </ul>
                <h4 class="h5 text-muted mt-3">List group with links</h4>
                <div class="list-group">
                  <a href="#" class="list-group-item list-group-item-action">Default list group item</a>
                  <a href="#" class="list-group-item list-group-item-action list-group-item-primary">Primary list group item</a>
                  <a href="#" class="list-group-item list-group-item-action list-group-item-secondary">Secondary list group item</a>
                  <a href="#" class="list-group-item list-group-item-action list-group-item-success">Success list group item</a>
                  <a href="#" class="list-group-item list-group-item-action list-group-item-danger">Danger list group item</a>
                  <a href="#" class="list-group-item list-group-item-action list-group-item-warning">Warning list group item</a>
                  <a href="#" class="list-group-item list-group-item-action list-group-item-info">Info list group item</a>
                  <a href="#" class="list-group-item list-group-item-action list-group-item-light">Light list group item</a>
                  <a href="#" class="list-group-item list-group-item-action list-group-item-dark">Dark list group item</a>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Badges</h3>
              <div>
                <ul class="list-group">
                  <li class="list-group-item d-flex justify-content-between align-items-center">
                    List group item one
                    <span class="badge rounded-pill bg-primary">#</span>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center">
                    List group item two
                    <span class="badge rounded-pill bg-primary">##</span>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center">
                    List group item three
                    <span class="badge rounded-pill bg-primary">###</span>
                  </li>
                </ul>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Custom content</h3>
              <div>
                <div class="list-group">
                  <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
                    <h4>Active item</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <small>Etiam eleifend velit leo.</small>
                  </a>
                  <a href="#" class="list-group-item list-group-item-action">
                    <h4>Normal item</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <small>Etiam eleifend velit leo.</small>
                  </a>
                  <a href="#" class="list-group-item list-group-item-action disabled">
                    <h4>Disabled item</h4>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</p>
                    <small>Etiam eleifend velit leo.</small>
                  </a>
                </div>
              </div>
            </div>

            <div class="mb-5">
              <h3 class="text-muted">Tab panels</h3>
              <div>
                <div class="row">
                  <div class="col-4">
                    <div class="list-group" role="tablist">
                      <a href="#tab-pane-1" id="tab-1" class="list-group-item list-group-item-action active" data-toggle="list" role="tab" aria-controls="tab-pane-1">Tab pane 1</a>
                      <a href="#tab-pane-2" id="tab-2" class="list-group-item list-group-item-action" data-toggle="list" role="tab" aria-controls="tab-pane-2">Tab pane 2</a>
                      <a href="#tab-pane-3" id="tab-3" class="list-group-item list-group-item-action" data-toggle="list" role="tab" aria-controls="tab-pane-3">Tab pane 3</a>
                    </div>
                  </div>
                  <div class="col-8">
                    <div class="tab-content">
                      <div id="tab-pane-1" class="tab-pane fade show active" role="tabpanel" aria-labelledby="tab-1">Tab pane 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</div>
                      <div id="tab-pane-2" class="tab-pane fade" role="tabpanel" aria-labelledby="tab-2">Tab pane 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</div>
                      <div id="tab-pane-3" class="tab-pane fade" role="tabpanel" aria-labelledby="tab-3">Tab pane 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo.</div>
                    </div>
                  </div>
                </div>
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