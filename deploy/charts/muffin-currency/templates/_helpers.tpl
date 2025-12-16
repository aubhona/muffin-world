{{- define "muffin-currency.name" -}}
muffin-currency
{{- end }}

{{- define "muffin-currency.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "muffin-currency.serviceAccountName" -}}
{{- if .Values.serviceAccount.name -}}
{{ .Values.serviceAccount.name }}
{{- else -}}
{{ include "muffin-currency.fullname" . }}
{{- end -}}
{{- end }}
