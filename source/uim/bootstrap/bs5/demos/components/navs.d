module uim.bootstrap.bs5.demos.components.navs;

import uim.bootstrap;

static this() {
	demoBS5.pages("components/navs", new class DH5AppPage {
		this() { 
			super(); 
			this
			.created(DateTime(2020, 12, 20, 10, 10, 0))
			.changed(timeLastModified(__FILE_FULL_PATH__))
			.parameters([
					"pageTitle": "Navs - Bootstrap 5 Demo",
          ]);
		} 
			
    override string content() { 

auto unorderedExample = demoBs5Example("unordered", "Unordered list",
  H5Div(
    BS5Nav(
      BS5NavItem(
        BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")))
      ), ``, ``);

auto linksExample = demoBs5Example("links", "Links",
  H5Div(
    BS5Nav(["nav"],
      BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active"),
      BS5NavLink(["href":"#"],"Link"),
      BS5NavLink(["href":"#"], "Link"),
      BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))
      ), ``, ``);

auto barExample = demoBs5Example("bar", "Navs as navigation bar",
  H5Div(
    H5Nav(
      BS5Nav(
        BS5NavItem(
          BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
        BS5NavItem(
          BS5NavLink(["href":"#"], "Link")),
        BS5NavItem(
          BS5NavLink(["href":"#"], "Link")),
        BS5NavItem(
          BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))))
      ), ``, ``);

auto horizontalExample = demoBs5Example("horizontal", "Horizontal alignment",
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Centered"),
    BS5Nav(["justify-content-center"], 
      BS5NavItem(
        BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))),
    H5H4(["h5", "text-muted", "mt-3"], "Right-aligned"),
    BS5Nav(["justify-content-end"], 
      BS5NavItem(
        BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")))
      ), ``, ``);
          
auto verticalExample = demoBs5Example("vertical", "Vertical",
  H5Div(
    BS5Nav(["flex-column"], 
      BS5NavItem(
        BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")))
        ), ``, ``);

auto tabsExample = demoBs5Example("tabs", "Tabs",
  H5Div(
    BS5Nav(["nav-tabs"], 
      BS5NavItem(
        BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")))
        ), ``, ``);

auto pillsExample = demoBs5Example("pills", "Pills",
  H5Div(
    BS5Nav(["nav-pills"], 
      BS5NavItem(
        BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")))
        ), ``, ``);

auto fillExample = demoBs5Example("fill", "Fill",
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Unordered list"),
    BS5Nav(["nav-tabs", "nav-fill"], 
      BS5NavItem(
        BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))), H5Br,
    H5Nav(["nav", "nav-tabs", "nav-fill"], 
      BS5NavLink(["nav-item", "active"], ["href":"#", "aria-current":"page"], "Active"),
      BS5NavLink(["nav-item"], ["href":"#"], "Link"),
      BS5NavLink(["nav-item"], ["href":"#"], "Link"),
      BS5NavLink(["nav-item", "disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))
      ), ``, ``);

auto justifyExample = demoBs5Example("justify", "Justify",
  H5Div(
    H5H4(["h5", "text-muted", "mt-3"], "Unordered list"),
    BS5Nav(["nav-pills", "nav-justified"], 
      BS5NavItem(
        BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))), H5Br,
    H5Nav(["nav", "nav-pills", "nav-justified"], 
      BS5NavLink(["nav-item", "active"], ["href":"#", "aria-current":"page"], "Active"),
      BS5NavLink(["nav-item"], ["href":"#"], "Link"),
      BS5NavLink(["nav-item"], ["href":"#"], "Link"),
      BS5NavLink(["nav-item", "disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled"))
      ), ``, ``);


auto responsiveExample = demoBs5Example("responsive", "Responsive",
  H5Div(
    BS5Nav(["flex-column", "flex-md-row"], 
      BS5NavItem(
        BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")))
        ), ``, ``);

auto dropdownExample = demoBs5Example("dropdown", "Dropdown",
  H5Div(
    BS5Nav(
      BS5NavItem(
        BS5NavLink(["active"], ["href":"#", "aria-current":"page"], "Active")),
      BS5NavItem(["dropdown"],
        BS5NavLink(["dropdown-toggle"], ["href":"#", "data-bs-toggle":"dropdown", "role":"button", "aria-expanded":"false"], "Dropdown"),
          BS5DropdownMenu(
            BS5DropdownItem(["href":"#"],  "First item"),
            BS5DropdownItem(["href":"#"],  "Second item"),
            BS5DropdownItem(["href":"#"],  "Third item")
          )),
      BS5NavItem(
        BS5NavLink(["href":"#"], "Link")),
      BS5NavItem(
        BS5NavLink(["disabled"], ["href":"#", "tabindex":"-1", "aria-disabled":"true"], "Disabled")))
        ), ``, ``);

auto tabpanelExample = demoBs5Example("tabpanel", "Tab panel from list",
  H5Div(
    BS5Nav(["nav-tabs"], ["role":"tablist"], 
      BS5NavItem(["role":"presentation"],
        BS5NavLink("tabList-1", ["active"], ["href":"#tabList-pane-1", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabList-pane-1", "aria-selected":"true"], "Panel 1")),
      BS5NavItem(["role":"presentation"],
        BS5NavLink("tabList-2", ["href":"#tabList-pane-2", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabList-pane-2", "aria-selected":"false"], "Panel 2")),
      BS5NavItem(["role":"presentation"], 
        BS5NavLink("tabList-3", ["href":"#tabList-pane-3", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabList-pane-3", "aria-selected":"false"], "Panel 3"))),
    H5Div(["tab-content"], 
      H5Div("tabList-pane-1", ["tab-pane", "active"], ["role":"tabpanel", "aria-labelledby":"tabList-1"],
        H5P("Panel 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
      H5Div("tabList-pane-2", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tabList-2"],
        H5P("Panel 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
      H5Div("tabList-pane-3", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tabList-3"],
        H5P("Panel 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")))
        ), ``, ``);

auto tablinksExample = demoBs5Example("tablinks", "Tab panel from links",
  H5Div(
    H5Nav(
      H5Div(["nav", "nav-tabs"], ["role":"tablist"], 
        BS5NavLink("tabLinks-1", ["nav-item active"], ["href":"#tabLinks-pane-1", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabLinks-pane-1", "aria-selected":"true"], "Panel 1"),
        BS5NavLink("tabLinks-2", ["nav-item"], ["href":"#tabLinks-pane-2", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabLinks-pane-2", "aria-selected":"false"], "Panel 2"),
        BS5NavLink("tabLinks-3", ["nav-item"], ["href":"#tabLinks-pane-3", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabLinks-pane-3", "aria-selected":"false"], "Panel 3"))),
    H5Div(["tab-content"], 
      H5Div("tabLinks-pane-1", ["tab-pane", "active"], ["role":"tabpanel", "aria-labelledby":"tabLinks-1"],
        H5P("Panel 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
      H5Div("tabLinks-pane-2", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tabLinks-2"],
        H5P("Panel 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
      H5Div("tabLinks-pane-3", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tabLinks-3"],
        H5P("Panel 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")))
      ), ``, ``);

auto verticalpanelExample = demoBs5Example("verticalpanel", "Vertical tab panel",
  H5Div(
    BS5Row(
      H5Div(["col-3"], 
        BS5Nav(["flex-column", "nav-pills"], ["role":"tablist"], 
          BS5NavItem(["role":"presentation"], 
            BS5NavLink("tabVertical-1", ["active"], ["href":"#tabVertical-pane-1", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabVertical-pane-1", "aria-selected":"true"], "Panel 1")),
          BS5NavItem(["role":"presentation"], 
            BS5NavLink("tabVertical-2", ["href":"#tabVertical-pane-2", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabVertical-pane-2", "aria-selected":"false"], "Panel 2")),
          BS5NavItem(["role":"presentation"], 
            BS5NavLink("tabVertical-3", ["href":"#tabVertical-pane-3", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabVertical-pane-3", "aria-selected":"false"], "Panel 3")))),
      H5Div(["col-9"], 
        H5Div(["tab-content"],
          H5Div("tabVertical-pane-1", ["tab-pane", "active"], ["role":"tabpanel", "aria-labelledby":"tabVertical-1"], 
            H5P("Panel 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. 
            Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. 
            Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. 
            Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
          H5Div("tabVertical-pane-2", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tabVertical-2"], 
            H5P("Panel 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
          H5Div("tabVertical-pane-3", ["tab-pane"], ["role":"tabpanel", "aria-labelledby":"tabVertical-3"], 
            H5P("Panel 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")))))
        ), ``, ``);

auto fadeExample = demoBs5Example("fade", "Tab panel with fade effect",
  H5Div(
    BS5Nav(["nav-tabs"], ["role":"tablist"], 
      BS5NavItem(["role":"presentation"], 
        BS5NavLink("tabFade-1", ["active"], ["href":"#tabFade-pane-1", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabFade-pane-1", "aria-selected":"true"], "Panel 1")),
      BS5NavItem(["role":"presentation"], 
        BS5NavLink("tabFade-2", ["href":"#tabFade-pane-2", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabFade-pane-2", "aria-selected":"false"], "Panel 2")),
      BS5NavItem(["role":"presentation"], 
        BS5NavLink("tabFade-3", ["href":"#tabFade-pane-3", "data-bs-toggle":"tab", "role":"tab", "aria-controls":"tabFade-pane-3", "aria-selected":"false"], "Panel 3"))),
    H5Div(["tab-content"], 
      H5Div("tabFade-pane-1", ["tab-pane", "fade", "show", "active"], ["role":"tabpanel", "aria-labelledby":"tabFade-1"], 
        H5P("Panel 1: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
      H5Div("tabFade-pane-2", ["tab-pane", "fade"], ["role":"tabpanel", "aria-labelledby":"tabFade-2"], 
        H5P("Panel 2: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")),
      H5Div("tabFade-pane-3", ["tab-pane", "fade"], ["role":"tabpanel", "aria-labelledby":"tabFade-3"], 
        H5P("Panel 3: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas feugiat, urna ut pharetra ultricies, augue tellus euismod turpis, vitae semper ipsum augue a velit. Pellentesque id finibus velit. Ut sagittis maximus maximus. In aliquet enim sed turpis mollis ornare. Suspendisse elementum a magna eu luctus. Etiam tincidunt mattis mauris, non lobortis nulla tempor in. Sed lacinia metus viverra, scelerisque enim sed, sollicitudin magna. Sed non augue sit amet nisl tincidunt ultrices. Praesent nec lacus eget tortor ultricies pulvinar. Praesent euismod ut lorem sit amet bibendum.")))
        ), ``, ``);

      return 
H5Main(
  H5Div(["container-fluid", "mt-3", "bg-light"],
    bs5Breadcrumbs(["/", "/demos", "/demos/uim-bootstrap", "/demos/uim-bootstrap/5", "/demos/uim-bootstrap/5/components"], 
    ["UI Manufaktur", "Demos", "uim-bootstrap", "Bootstrap 5", "Components"], "Navs")),
  BS5Container(["mt-3"]).row(
    H5Div(["col-12", "col-lg-2"]),
    H5Div(["col-12", "col-lg-8"], 
      H5H2(["display-4"], "Navs"),
      H5Hr,

      unorderedExample,
      linksExample,
      barExample,
      horizontalExample,
      verticalExample,
      tabsExample,
      pillsExample,
      fillExample,
      justifyExample,
      responsiveExample,
      dropdownExample,
      tabpanelExample,
      tablinksExample,
      verticalpanelExample,
      fadeExample

     ),
    H5Div(["col-12", "col-lg-2"]))).toString;
    }
  });
}