import {Component, onWillStart, useState} from "@odoo/owl";
import {registry} from "@web/core/registry";
import {useService} from "@web/core/utils/hooks";

export class TrainingNotes extends Component {
    static template = "training_hello.TrainingNotes";

    setup() {
        this.orm = useService("orm");
        this.state = useState({notes: [], title: "", body: ""});
        onWillStart(() => this.loadNotes());
    }

    async loadNotes() {
        this.state.notes = await this.orm.searchRead(
            "training.note", [], ["title", "body"]
        );
    }

    async createNote() {
        const title = this.state.title.trim();
        if (!title) {
            return;
        }
        await this.orm.create("training.note", [{
            title,
            body: this.state.body,
        }]);
        this.state.title = "";
        this.state.body = "";
        await this.loadNotes();
    }
}

registry.category("actions").add("training_hello.training_notes", TrainingNotes);