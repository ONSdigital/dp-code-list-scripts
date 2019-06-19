package regex

import (
	"regexp"
)

var IsCreate *regexp.Regexp
var KVPattern *regexp.Regexp
var CodeListID *regexp.Regexp
var TrimMatch *regexp.Regexp

func init() {
	inTicks := "'[^']+'"
	inQuotes := `"[^"]+"`

	IsCreate = regexp.MustCompile("^CREATE +\\([^{]+{ *")
	KVPattern = regexp.MustCompile("([a-zA-Z0-9_\\-\"`']+) *: *(" + inTicks + "|" + inQuotes + ")[, ]*")
	CodeListID = regexp.MustCompile("^CREATE[ ]*\\(.+_code_list_([^`]+).*")
	TrimMatch = regexp.MustCompile("^MATCH +\\([^\\)]+\\)[^{]+ * ]")
}
