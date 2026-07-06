import gi

gi.require_version("Gtk", "4.0")

from gi.repository import Gtk

from izumo_builder.builder import Builder


class IzumoApp(Gtk.Application):

    def __init__(self):
        super().__init__(application_id="jp.izumo.builder")

        self.builder = Builder()

        self.connect("activate", self.on_activate)

    def on_activate(self, app):

        gtk_builder = Gtk.Builder()

        gtk_builder.add_from_file("ui/main_window.ui")

        window = gtk_builder.get_object("main_window")

        window.set_application(app)

        self.build_button = gtk_builder.get_object("build_button")
        self.stop_button = gtk_builder.get_object("stop_button")

        self.build_button.connect("clicked", self.on_build_clicked)
        self.stop_button.connect("clicked", self.on_stop_clicked)

        window.present()

    def on_build_clicked(self, button):
        self.builder.start_build()

    def on_stop_clicked(self, button):
        self.builder.stop_build()
