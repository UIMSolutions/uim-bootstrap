module uim.bootstrap.bs5.demos.components.badges;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/badges", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Badges - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 
      return `
<main>
      <div class="container-fluid mt-3 bg-light">
        <nav aria-label="Breadcrumb" >
          <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="/">UI Manufaktur</a></li>
            <li class="breadcrumb-item"><a href="/demos">Demos</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap">uim-bootstrap</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5">Bootstrap 5</a></li>
            <li class="breadcrumb-item"><a href="/demos/uim-bootstrap/5/components">Components</a></li>
            <li class="breadcrumb-item active" aria-current="page">Badges</li>
          </ol>
        </nav>
      </div>
      <div class="container mt-3">
        <div class="row">
          <div class="col-12 col-lg-2">
          </div>
          <div class="col-12 col-lg-8">
            <h2 class="component display-4">Badges</h2>
            <hr>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Headings with badge</h3>
              <div class="code-live">
                <h1>H1 heading with badge <span class="badge bg-secondary">Badge</span></h1>
                <h2>H2 heading with badge <span class="badge bg-secondary">Badge</span></h2>
                <h3>H3 heading with badge <span class="badge bg-secondary">Badge</span></h3>
                <h4>H4 heading with badge <span class="badge bg-secondary">Badge</span></h4>
                <h5>H5 heading with badge <span class="badge bg-secondary">Badge</span></h5>
                <h6>H6 heading with badge <span class="badge bg-secondary">Badge</span></h6>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Button with badge</h3>
              <div class="code-live">
                <button class="btn btn-secondary">Notifications <span class="badge bg-light text-dark">10</span></button>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Button with accessible badge</h3>
              <div class="code-live">
                <button class="btn btn-secondary">
                  Profile
                  <span class="badge bg-light text-dark">3</span>
                  <span class="visually-hidden">unread messages</span>
                </button>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Background colors</h3>
              <div class="code-live">
                <span class="badge bg-primary">Primary</span>
                <span class="badge bg-secondary">Secondary</span>
                <span class="badge bg-success">Success</span>
                <span class="badge bg-danger">Danger</span>
                <span class="badge bg-warning text-dark">Warning</span>
                <span class="badge bg-info">Info</span>
                <span class="badge bg-light text-dark">Light</span>
                <span class="badge bg-dark">Dark</span>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Pill badges</h3>
              <div class="code-live">
                <span class="badge rounded-pill bg-primary">Primary</span>
                <span class="badge rounded-pill bg-secondary">Secondary</span>
                <span class="badge rounded-pill bg-success">Success</span>
                <span class="badge rounded-pill bg-danger">Danger</span>
                <span class="badge rounded-pill bg-warning text-dark">Warning</span>
                <span class="badge rounded-pill bg-info">Info</span>
                <span class="badge rounded-pill bg-light text-dark">Light</span>
                <span class="badge rounded-pill bg-dark">Dark</span>
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