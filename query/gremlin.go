package query

const (
	CodeListCheckExists  = "g.V().has('_code_list', 'listID', '%s').has('edition', '%s')."
	CodeListCreateV      = "  fold().coalesce(unfold(), addV('_code_list')."
	CodeListPropertyDot  = "    property(single, '%s', \"%s\")."
	CodeListPropertyBool = "    property(single, '%s', %v)."
	CodeListPropertyEnd  = "    property(single, '%s', \"%s\")"

	CodeCheckExists = "g.V().has('_code','listID', '%s').has('value', \"%s\")."
	CodeCreateV     = "  fold().coalesce(unfold(), addV('_code')."
	CodeAddProperty = "    property(single, 'listID', '%s').property(single, 'value', \"%s\")"

	EdgeFindCode      = "g.V().has('_code', 'listID', '%s').has('value', \"%s\").as('code')."
	EdgeFindCodeList  = "  V().has('_code_list', 'listID', '%s').has('edition', \"%s\")."
	EdgeCheckIfExists = "    coalesce(__.inE('usedBy').where(outV().as('code')),"
	EdgeAddProperty   = "       addE('usedBy').from('code')).property('label', \"%s\").next()"

	Next    = "  ).next()"
	NewLine = ""
)
