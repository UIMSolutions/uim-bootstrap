module uim.bootstrap.bs5.demos;

import uim.bootstrap;

public import uim.bootstrap.bs5.demos.layout;

DH5App demoBS5;
static this() {
    demoBS5 = new class DH5App {
        this() {
            super();
            this.layout(new DBS5Layout);
        }
    };
}

