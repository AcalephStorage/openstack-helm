[client.{{ .Values.ceph.admin_user }}]
{{- if .Values.ceph.admin_keyring }}
    key = {{ .Values.ceph.admin_keyring }}
{{- else }}
    key = {{- include "secrets/ceph-client-key" . -}}
{{- end }}