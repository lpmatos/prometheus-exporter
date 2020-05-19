{{/* Return nginx auth secret password */}}
{{- define "nginx.auth.secret.password" -}}
{{- $nginxAuthUser := .Values.nginx.auth.secret.user -}}
{{- $nginxAuthPassword := .Values.nginx.auth.secret.password -}}
{{- $randon := randAlphaNum 10 -}}
{{- if $nginxAuthUser -}}
{{- if $nginxAuthPassword -}}
  {{- printf "%s:%s" $nginxAuthUser $nginxAuthPassword | b64enc | quote -}}
{{- else -}}
  {{- printf "%s:%s" $nginxAuthUser $randon | b64enc | quote -}}
{{- end -}}
{{- else -}}
  {{- required "We need Nginx Auth User" $nginxAuthUser -}}
{{- end -}}
{{- end -}}
