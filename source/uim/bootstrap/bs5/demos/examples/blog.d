module uim.bootstrap.bs5.demos.examples.blog;

import uim.bootstrap;

static this() {
	demoBS5.pages("examples/blog", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Album Page - Bootstrap 5 Demo",
          ]).styles(` .bd-placeholder-img {
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
      }

/* stylelint-disable selector-list-comma-newline-after */

.blog-header {
  line-height: 1;
  border-bottom: 1px solid #e5e5e5;
}

.blog-header-logo {
  font-family: "Playfair Display", Georgia, "Times New Roman", serif/*rtl:Amiri, Georgia, "Times New Roman", serif*/;
  font-size: 2.25rem;
}

.blog-header-logo:hover {
  text-decoration: none;
}

h1, h2, h3, h4, h5, h6 {
  font-family: "Playfair Display", Georgia, "Times New Roman", serif/*rtl:Amiri, Georgia, "Times New Roman", serif*/;
}

.display-4 {
  font-size: 2.5rem;
}
@media (min-width: 768px) {
  .display-4 {
    font-size: 3rem;
  }
}

.nav-scroller {
  position: relative;
  z-index: 2;
  height: 2.75rem;
  overflow-y: hidden;
}

.nav-scroller .nav {
  display: flex;
  flex-wrap: nowrap;
  padding-bottom: 1rem;
  margin-top: -1px;
  overflow-x: auto;
  text-align: center;
  white-space: nowrap;
  -webkit-overflow-scrolling: touch;
}

.nav-scroller .nav-link {
  padding-top: .75rem;
  padding-bottom: .75rem;
  font-size: .875rem;
}

.card-img-right {
  height: 100%;
  border-radius: 0 3px 3px 0;
}

.flex-auto {
  flex: 0 0 auto;
}

.h-250 { height: 250px; }
@media (min-width: 768px) {
  .h-md-250 { height: 250px; }
}

/* Pagination */
.blog-pagination {
  margin-bottom: 4rem;
}
.blog-pagination > .btn {
  border-radius: 2rem;
}

/*
 * Blog posts
 */
.blog-post {
  margin-bottom: 4rem;
}
.blog-post-title {
  margin-bottom: .25rem;
  font-size: 2.5rem;
}
.blog-post-meta {
  margin-bottom: 1.25rem;
  color: #727272;
}

/*
 * Footer
 */
.blog-footer {
  padding: 2.5rem 0;
  color: #727272;
  text-align: center;
  background-color: #f9f9f9;
  border-top: .05rem solid #e5e5e5;
}
.blog-footer p:last-child {
  margin-bottom: 0;
}`);
		} 
			
    override string content() { 

      return 
`
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
    
BS5Container(
  BS5Header(["blog-header py-3"], 
    H5Div(["row flex-nowrap justify-content-between align-items-center">
      H5Div(["col-4 pt-1">
        H5A(["link-secondary"], ["href":"#"], Subscribe"),
      ),
      H5Div(["col-4 text-center">
        H5A(["blog-header-logo text-dark"], ["href":"#"], Large"),
      ),
      H5Div(["col-4 d-flex justify-content-end align-items-center">
        H5A(["link-secondary"], ["href":"#", "aria-label":"Search">
          <svg xmlns="http://www.w3.org/2000/svg" "width":"20" "height":"20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-"width":"2" class="mx-3" "role":"img" viewBox="0 0 24 24"><title>Search</title><circle cx="10.5" cy="10.5" r="7.5"/><path d="M21 21l-5.2-5.2"/></svg>
        "),
        H5A(["btn btn-sm btn-outline-secondary"], ["href":"#"], "Sign up")
      ),
    ),
  </header>

  H5Div(["nav-scroller py-1 mb-2">
    BS5Nav(["d-flex justify-content-between"], 
      H5A(["p-2 link-secondary"], ["href":"#"], "U.S."),
      H5A(["p-2 link-secondary"], ["href":"#"], "World"),
      H5A(["p-2 link-secondary"], ["href":"#"], "Technology"),
      H5A(["p-2 link-secondary"], ["href":"#"], "Design"),
      H5A(["p-2 link-secondary"], ["href":"#"], "Culture"),
      H5A(["p-2 link-secondary"], ["href":"#"], "Business"),
      H5A(["p-2 link-secondary"], ["href":"#"], "Politics"),
      H5A(["p-2 link-secondary"], ["href":"#"], "Opinion"),
      H5A(["p-2 link-secondary"], ["href":"#"], "Science"),
      H5A(["p-2 link-secondary"], ["href":"#"], "Health"),
      H5A(["p-2 link-secondary"], ["href":"#"], "Style"),
      H5A(["p-2 link-secondary"], ["href":"#"], "Travel")
    )
  ),
)

H5Main(["container"], 
  H5Div(["p-4 p-md-5 mb-4 text-white rounded bg-dark"], 
    H5Div(["col-md-6 px-0">
      H5H1(["display-4 font-italic">Title of a longer featured blog post</h1>
      H5P(["lead my-3">Multiple lines of text that form the lede, informing new readers quickly and efficiently about what’s most interesting in this post’s contents.")
      H5P(["lead mb-0"><a "href":"#" class="text-white fw-bold">Continue reading..."),")
    ),
  ),

  H5Div(["row mb-2"],
    H5Div(["col-md-6"], 
      H5Div(["row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        H5Div(["col p-4 d-flex flex-column position-static"], 
          H5Strong(["d-inline-block mb-2 text-primary">World")
          <h3 class="mb-0">Featured post"),
          H5Div(["mb-1 text-muted">Nov 12),
          H5P(["card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.")
          <a "href":"#" class="stretched-link">Continue reading"),
        ),
        H5Div(["col-auto d-none d-lg-block"], 
          H5Svg(["bd-placeholder-img" "width":"200" "height":"250" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

        ),
      ),
    ),
    H5Div(["col-md-6">
      H5Div(["row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative"], 
        H5Div(["col p-4 d-flex flex-column position-static"], 
          H5Strong(["d-inline-block mb-2 text-success"], "Design")
          <h3 class="mb-0"], "Post title"),
          H5Div(["mb-1 text-muted"], "Nov 11),
          H5P(["mb-auto"], "This is a wider card with supporting text below as a natural lead-in to additional content.")
          <a "href":"#" class="stretched-link">Continue reading"),
        ),
        H5Div(["col-auto d-none d-lg-block">
          H5Svg(["bd-placeholder-img" "width":"200" "height":"250" xmlns="http://www.w3.org/2000/svg" "role":"img", "aria-label":"Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect "width":"100%" "height":"100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

        ),
      ),
    ),
  ),

  H5Div(["row"], 
    H5Div(["col-md-8"], 
      <h3 class="pb-4 mb-4 font-italic border-bottom"], 
        From the Firehose
      "),

      <article class="blog-post"], 
        H5H2(["blog-post-title"], "Sample blog post"),
        H5P(["blog-post-meta"], "January 1, 2014 by H5A(["href":"#"], "Mark"))

        H5P("This blog post shows a few different types of content that’s supported and styled with Bootstrap. Basic typography, images, and code are all supported.")
        H5Hr,
        H5P("Cum sociis natoque penatibus et magnis H5A(["href":"#"], dis parturient montes"),, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.")
        <blockquote>
          H5P("Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis") ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.")
        </blockquote>
        H5P("Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.")
        H5H2("Heading")
        H5P("Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.")
        <h3>Sub-heading"),
        H5P("Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.")
        <pre><code>Example code block</code></pre>
        H5P("Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa.")
        <h3>Sub-heading"),
        H5P("Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.")
        <ul>
          H5Li("Praesent commodo cursus magna, vel scelerisque nisl consectetur et.),
          H5Li("Donec id elit non mi porta gravida at eget metus.),
          H5Li("Nulla vitae elit libero, a pharetra augue.),
        </ul>
        H5P("Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.")
        <ol>
          H5Li("Vestibulum id ligula porta felis euismod semper.),
          H5Li("Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.),
          H5Li("Maecenas sed diam eget risus varius blandit sit amet non magna.),
        </ol>
        H5P("Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis.")
      ),

      H5Article(["blog-post"], 
        H5H2(["blog-post-title">Another blog post")
        H5P(["blog-post-meta">December 23, 2013 by H5A(["href":"#"], Jacob"),")

        H5P("Cum sociis natoque penatibus et magnis H5A(["href":"#"], dis parturient montes"),, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.")
        H5Blockquote(
          H5P("Curabitur blandit tempus porttitor. <strong>Nullam quis risus eget urna mollis") ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit.")
        )
        H5P("Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.")
        H5P("Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.")
      ),

      H5Article(["blog-post"], 
        H5H2(["blog-post-title">New feature")
        H5P(["blog-post-meta">H5STring("December 14, 2013 by "), H5A(["href":"#"], "Chris")")

        H5P("Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.")
        H5BlockquoteH5Ul(
          H5Li("Praesent commodo cursus magna, vel scelerisque nisl consectetur et."),
          H5)elit non mi porta gravida at eget metus."),
          H5Li("Nulla vitae elit libero, a pharetra augue.")
        )
        H5P("Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.")
        H5P("Donec ullamcorper nulla non metus auctor fringilla. Nulla vitae elit libero, a pharetra augue.")
      ),

      H5Nav(["blog-pagination"], ["aria-label":"Pagination"], 
        H5A(["btn btn-outline-primary"], ["href":"#"], "Older"),
        H5A(["btn btn-outline-secondary disabled"], ["href":"#", "tabindex":"-1", aria-disabled="true">Newer"),
      ),

    ),H5Blockquote(

    H5)4">
      H5Div(["p-4 mb-3 bg-light rounded"], 
        H5H4(["font-italic"], "About"]),
        H5P(["mb-0">Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.")
      ),

      H5Div(["p-4"], 
        H5H4(["font-italic">Archives</h4>
        <ol class="list-unstyled mb-0"], 
          H5Li(H5A(["href":"#"], "March 2014")),
          H5Li(H5A(["href":"#"], "February 2014")),
          H5Li(H5A(["href":"#"], "January 2014")),
          H5Li(H5A(["href":"#"], "December 2013")),
          H5Li(H5A(["href":"#"], "November 2013")),
          H5Li(H5A(["href":"#"], "October 2013")),
          H5Li(H5A(["href":"#"], "September 2013")),
          H5Li(H5A(["href":"#"], "August 2013")),
          H5Li(H5A(["href":"#"], "July 2013")),
          H5Li(H5A(["href":"#"], "June 2013")),
          H5Li(H5A(["href":"#"], "May 2013")),
          H5Li(H5A(["href":"#"], "April 2013"))
        </ol>
      ),

      H5Div(["p-4"], 
        H5H4(["font-italic">Elsewhere</h4>
        <ol class="list-unstyled"], 
          H5Li(H5A(["href":"#"], "GitHub")),
          H5Li(H5A(["href":"#"], "Twitter")),
          H5Li(H5A(["href":"#"], "Facebook"))
        </ol>
      ),
    ),

  ),<!-- /.row -->

</main><!-- /.container -->

H5Footer(["blog-footer"], 
  H5P(H5String("Blog template built for "), H5A(["https://getbootstrap.com/">Bootstrap"), by H5A(["https://twitter.com/mdo">@mdo"),.")
  H5P("
    H5A(["href":"#"], "Back to top")
  ")
</footer>
`;

    }
  });
}
 
