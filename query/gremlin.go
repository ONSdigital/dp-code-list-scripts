package query

const (
	CodeListCheckExists  = "g.V().hasLabel('_code_list').has('listID', '%s').has('edition', '%s')."
	CodeListCreateV      = "  fold().coalesce(unfold(), addV('_code_list')."
	CodeListPropertyDot  = "    property(single, '%s', '%s')."
	CodeListPropertyBool = "    property(single, '%s', %v)."
	CodeListPropertyEnd  = "    property(single, '%s', '%s')"

	CodeCheckExists = "g.V().hasLabel('_code').has('listID', '%s').has('value', '%s')."
	CodeCreateV     = "  fold().coalesce(unfold(), addV('_code')."
	CodeAddProperty = "    property(single, 'listID', '%s').property(single, 'value', '%s')"

	EdgeCheckExists = "g.V().hasLabel('_code').has('listID', '%s').has('value', '%s').outE().fold().coalesce(unfold(),"
	EdgeFindCode    = "  g.V().hasLabel('_code').has('listID', '%s').has('value', '%s')."
	EdgeAddLabel    = "    addE('usedBy').to("
	EdgeFindList    = "      g.V().hasLabel('_code_list').has('listID', '%s').has('edition', '%s')"
	EdgeAddProperty = "    ).property(single, 'label', '%s')).next()"

	Next    = "  ).next()"
	NewLine = ""
)
