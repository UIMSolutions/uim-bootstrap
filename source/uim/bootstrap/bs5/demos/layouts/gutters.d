module source.uim.bootstrap.bs5.demos.layouts.gutters;

import uim.bootstrap;

static this() {
	demoBS5.pages("layouts/gutters", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Gutters - Bootstrap 5 Demo",
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
        <li class="breadcrumb-item active" aria-current="page">Gutters</li>
      </ol>
    </nav>
  </div>
  <div class="container mt-3">
    <div class="row">
      <div class="col-12 col-lg-2">
      </div>
      <div class="col-12 col-lg-8">
        <h2 class="component display-4">Gutters</h2>
        <hr>

        <div class="mb-5">
          <h3 class="text-muted container">Default</h3>
          <div>
            <div class="container">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo. Praesent nec egestas neque. Integer a ipsum et ante volutpat rhoncus. Pellentesque ultrices metus eget quam malesuada, sed faucibus nisi fringilla. Nunc eget turpis in turpis molestie malesuada a non sapien. Nullam auctor, tellus malesuada convallis accumsan, felis ex ultrices neque, quis tincidunt felis orci id nisi.</div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted container">Responsive</h3>
          <div>
            <h4 class="h5 text-muted mt-3 container">Small</h4>
            <div class="container-sm">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo. Praesent nec egestas neque. Integer a ipsum et ante volutpat rhoncus. Pellentesque ultrices metus eget quam malesuada, sed faucibus nisi fringilla. Nunc eget turpis in turpis molestie malesuada a non sapien. Nullam auctor, tellus malesuada convallis accumsan, felis ex ultrices neque, quis tincidunt felis orci id nisi.</div>
            <h4 class="h5 text-muted mt-3 container">Medium</h4>
            <div class="container-md">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo. Praesent nec egestas neque. Integer a ipsum et ante volutpat rhoncus. Pellentesque ultrices metus eget quam malesuada, sed faucibus nisi fringilla. Nunc eget turpis in turpis molestie malesuada a non sapien. Nullam auctor, tellus malesuada convallis accumsan, felis ex ultrices neque, quis tincidunt felis orci id nisi.</div>
            <h4 class="h5 text-muted mt-3 container">Large</h4>
            <div class="container-lg">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo. Praesent nec egestas neque. Integer a ipsum et ante volutpat rhoncus. Pellentesque ultrices metus eget quam malesuada, sed faucibus nisi fringilla. Nunc eget turpis in turpis molestie malesuada a non sapien. Nullam auctor, tellus malesuada convallis accumsan, felis ex ultrices neque, quis tincidunt felis orci id nisi.</div>
            <h4 class="h5 text-muted mt-3 container">Extra large</h4>
            <div class="container-xl">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo. Praesent nec egestas neque. Integer a ipsum et ante volutpat rhoncus. Pellentesque ultrices metus eget quam malesuada, sed faucibus nisi fringilla. Nunc eget turpis in turpis molestie malesuada a non sapien. Nullam auctor, tellus malesuada convallis accumsan, felis ex ultrices neque, quis tincidunt felis orci id nisi.</div>
            <h4 class="h5 text-muted mt-3 container">Extra extra large</h4>
            <div class="container-xxl">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo. Praesent nec egestas neque. Integer a ipsum et ante volutpat rhoncus. Pellentesque ultrices metus eget quam malesuada, sed faucibus nisi fringilla. Nunc eget turpis in turpis molestie malesuada a non sapien. Nullam auctor, tellus malesuada convallis accumsan, felis ex ultrices neque, quis tincidunt felis orci id nisi.</div>
          </div>
        </div>

        <div class="mb-5">
          <h3 class="text-muted container">Fluid</h3>
          <div>
            <div class="container-fluid">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In laoreet pellentesque lorem sed elementum. Suspendisse maximus convallis ex. Etiam eleifend velit leo. Praesent nec egestas neque. Integer a ipsum et ante volutpat rhoncus. Pellentesque ultrices metus eget quam malesuada, sed faucibus nisi fringilla. Nunc eget turpis in turpis molestie malesuada a non sapien. Nullam auctor, tellus malesuada convallis accumsan, felis ex ultrices neque, quis tincidunt felis orci id nisi.</div>
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