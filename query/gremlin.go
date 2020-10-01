package query

const (
	CodeListCheckExists  = "g.V().hasId('%s')."
	CodeListCreateV      = "  fold().coalesce(unfold(), addV('_code_list')."
	CodeListPropertyID   = "    property(%s, '%s')."
	CodeListPropertyDot  = "    property(single, '%s', \"%s\")."
	CodeListPropertyBool = "    property(single, '%s', %v)."
	CodeListPropertyEnd  = "    property(single, '%s', \"%s\")"

	CodeCheckExists = "g.V().hasId('%s')."
	CodeCreateV     = "  fold().coalesce(unfold(), addV('_code')."
	CodeAddProperty = "    property(id, '%s').property(single, 'listID', '%s').property(single, 'value', \"%s\")"

	EdgeFindCodeList  = "  g.V().hasId('%s').as('codeList').V().hasId('%s').as('code')."
	EdgeCheckIfExists = "    coalesce(__.outE('usedBy').where(inV().as('codeList')),"
	EdgeAddProperty   = "       addE('usedBy').to('codeList')).property('label', \"%s\").next()"

	Next    = "  ).next()"
	NewLine = ""
)
