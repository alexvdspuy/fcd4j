p = Chart","Closure","Jsoup","Lang","Math","Time
project:
	jq '.[] | select(.project | IN("$(p)"))' faultclassification.json

list_proj_bugs:
	jq '.[] | select(.project | IN("$(p)"))' faultclassification.json | jq '.bugId'

b = 0
proj_bug:
	jq '.[] | select(.project | IN("$(p)"))' faultclassification.json | jq '. | select(.bugId == $(b))'

f = order","jump","call","pred","guard","block","def","use
list_faultclass:
	jq '.[] | select(.project | IN("$(p)"))' faultclassification.json | jq '. | select(.faultClass[] | IN("$(f)"))'
