package com.ospedrobilro.capacitormanifestplaceholder;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "ManifestPlaceholderCap")
public class ManifestPlaceholderCapPlugin extends Plugin {

    private ManifestPlaceholderCap implementation = new ManifestPlaceholderCap();

    @PluginMethod
    public void echo(PluginCall call) {
        String value = call.getString("value");

        JSObject ret = new JSObject();
        ret.put("value", implementation.echo(value));
        call.resolve(ret);
    }
}
