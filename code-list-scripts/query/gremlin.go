package query

const (
	CodeListCheckExists = "g.V().hasLabel('_code_list_%s').has('edition', '%s').fold().coalesce(unfold(),"
	CodeListCreateV     = "  addV('_code_list_%s::_code_list')."
	CodeListPropertyDot = "    property(single, '%s', '%s')."
	CodeListPropertyEnd = "    property(single, '%s', '%s')"

	CodeCheckExists = "g.V().hasLabel('_code_%s').has('value', '%s').fold().coalesce(unfold(),"
	CodeCreateV     = "  addV('_code::_code_%s').property(single, 'value', '%s')).next()"

	EdgeCheckExists = "g.V().hasLabel('_code_%s').has('value', '%s').outE().fold().coalesce(unfold(),"
	EdgeCreate      = "  g.V().hasLabel('_code_%s').has('value', '%s')."
	EdgeAddLabel    = "    addE('usedBy').to("
	EdgeFindList    = "      g.V().hasLabel('_code_list_%s').has('edition', '%s')"
	EdgeAddProperty = "  ).property(single, 'label', '%s')).next()"

	Next    = "  ).next()"
	NewLine = ""
)
