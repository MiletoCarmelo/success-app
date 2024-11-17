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
app: {{ include "success-app.name" . }}-{{ .Values.environment }}
{{- end }}

{{/*
TODO check if empty .value.Module
*/}}

{{- define "label-generator" -}}
{{- if .Values.module -}}
app.kubernetes.io/component: frontend-python-{{.Values.module}}-{{ .Values.environment }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/name: {{.Values.module}}-{{ .Values.environment }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "-" }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
{{- else -}}
{{- fail "La valeur .Values.module est requise" -}}
{{- end -}}
{{- end -}}