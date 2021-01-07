module uim.bootstrap.bs5.demos.components.buttongroups;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/buttongroups", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Buttongroups - Bootstrap 5 Demo",
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
            <li class="breadcrumb-item active" aria-current="page">Button Groups</li>
          </ol>
        </nav>
      </div>
      <div class="container mt-3">
        <div class="row">
          <div class="col-12 col-lg-2">
          </div>
          <div class="col-12 col-lg-8">
            <h2 class="component display-4">Button Groups</h2>
            <hr>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Default</h3>
              <div class="code-live">
                <div class="btn-group" role="group" aria-label="Default button group">
                  <button type="button" class="btn btn-secondary">Home</button>
                  <button type="button" class="btn btn-secondary">Profile</button>
                  <button type="button" class="btn btn-secondary">Settings</button>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">States</h3>
              <div class="code-live">
                <div class="btn-group" role="group" aria-label="Default button group">
                  <button type="button" class="btn btn-secondary active">Home</button>
                  <button type="button" class="btn btn-secondary">Profile</button>
                  <button type="button" class="btn btn-secondary" disabled>Settings</button>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Outlined</h3>
              <div class="code-live">
                <div class="btn-group" role="group" aria-label="Default button group">
                  <button type="button" class="btn btn-outline-secondary">Home</button>
                  <button type="button" class="btn btn-outline-secondary">Profile</button>
                  <button type="button" class="btn btn-outline-secondary">Settings</button>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Links</h3>
              <div class="code-live">
                <div class="btn-group" role="group" aria-label="Default button group">
                  <a href="#" class="btn btn-secondary">Home</a>
                  <a href="#" class="btn btn-secondary">Profile</a>
                  <a href="#" class="btn btn-secondary">Settings</a>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Toolbar</h3>
              <div class="code-live">
                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
                  <div class="btn-group me-2" role="group" aria-label="First group">
                    <button type="button" class="btn btn-secondary">1</button>
                    <button type="button" class="btn btn-secondary">2</button>
                    <button type="button" class="btn btn-secondary">3</button>
                  </div>
                  <div class="btn-group me-2" role="group" aria-label="Second group">
                    <button type="button" class="btn btn-secondary">4</button>
                    <button type="button" class="btn btn-secondary">5</button>
                    <button type="button" class="btn btn-secondary">6</button>
                  </div>
                  <div class="btn-group" role="group" aria-label="Third group">
                    <button type="button" class="btn btn-secondary">7</button>
                    <button type="button" class="btn btn-secondary">8</button>
                    <button type="button" class="btn btn-secondary">9</button>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Sizing</h3>
              <div class="code-live">
                <div class="btn-group btn-group-sm" role="group" aria-label="Small button group">
                  <button type="button" class="btn btn-secondary">Home</button>
                  <button type="button" class="btn btn-secondary">Profile</button>
                  <button type="button" class="btn btn-secondary">Settings</button>
                </div>
                <div class="btn-group" role="group" aria-label="Default button group">
                  <button type="button" class="btn btn-secondary">Home</button>
                  <button type="button" class="btn btn-secondary">Profile</button>
                  <button type="button" class="btn btn-secondary">Settings</button>
                </div>
                <div class="btn-group btn-group-lg" role="group" aria-label="Large button group">
                  <button type="button" class="btn btn-secondary">Home</button>
                  <button type="button" class="btn btn-secondary">Profile</button>
                  <button type="button" class="btn btn-secondary">Settings</button>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Nesting</h3>
              <div class="code-live">
                <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                  <button type="button" class="btn btn-secondary">Home</button>
                  <button type="button" class="btn btn-secondary">Profile</button>
                  <div class="btn-group" role="group">
                    <button id="btnGroupNesting" type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">Settings</button>
                    <div class="dropdown-menu" aria-labelledby="btnGroupNesting">
                      <a class="dropdown-item" href="#">Dropdown link</a>
                      <a class="dropdown-item" href="#">Dropdown link</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="code-example mb-5">
              <h3 class="component-variation text-muted">Vertical</h3>
              <div class="code-live">
                <div class="btn-group-vertical" role="group" aria-label="Vertical button group">
                  <button type="button" class="btn btn-secondary">Home</button>
                  <button type="button" class="btn btn-secondary">Profile</button>
                  <button type="button" class="btn btn-secondary">Settings</button>
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