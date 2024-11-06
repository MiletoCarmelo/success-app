# k8s/templates/_helpers.tpl
{{/*
Create name for resources
*/}}
{{- define "success-app.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "success-app.labels" -}}
app: {{ include "success-app.name" . }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "success-app.selectorLabels" -}}
app: {{ include "success-app.name" . }}
{{- end }}