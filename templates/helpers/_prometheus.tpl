{{/* Return the proper frontend image name. */}}
{{- define "prometheus.image" -}}
{{- $repository  := .Values.global.image.repository -}}
{{- $tag := .Values.global.image.tag | toString -}}
{{- printf "%s:%s" $repository $tag -}}
{{- end -}}
