{{/* https://github.com/qdm12/gluetun/wiki/IVPN */}}
{{- define "gluetun.ivpn.openvpn.validation" -}}
  {{- include "gluetun.options.required" (dict
                                          "rootCtx" $
                                          "options" (list
                                                    "openvpnUser")) -}}
  {{- include "gluetun.unsupported.server.options" (dict
                                                  "rootCtx" $
                                                  "options" (list
                                                            "serverRegions"
                                                            "serverNames")) -}}
{{- end -}}

{{- define "gluetun.ivpn.wireguard.validation" -}}
  {{- include "gluetun.options.required" (dict
                                          "rootCtx" $
                                          "options" (list
                                                    "wireguardPrivateKey"
                                                    "wireguardAddresses")) -}}
  {{- include "gluetun.unsupported.server.options" (dict
                                                  "rootCtx" $
                                                  "options" (list
                                                            "serverRegions"
                                                            "serverNames")) -}}
{{- end -}}