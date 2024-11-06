# templates/_helpers.tpl

{{/*
Nom de l'application
*/}}
{{- define "success-app.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Labels communs à utiliser dans les manifests
*/}}
{{- define "success-app.labels" -}}
app: {{ include "success-app.name" . }}
environment: {{ .Values.environment }}
{{- end }}

{{/*
Selector labels pour les services et deployments
*/}}
{{- define "success-app.selectorLabels" -}}
app: {{ include "success-app.name" . }}
{{- end }}