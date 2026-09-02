import { Component } from "@odoo/owl";
import { _t } from "@web/core/l10n/translation";
import { registry } from "@web/core/registry";
import { useService } from "@web/core/utils/hooks";

export class HelloWorld extends Component {
    static template = "training_hello.HelloWorld";

    setup() {
        this.notification = useService("notification");
    }

    sayHello() {
        this.notification.add(_t("Welcome to Odoo"), {
            type: "success",
        });
    }
}

registry.category("actions").add(
    "training_hello.hello_world",
    HelloWorld
);