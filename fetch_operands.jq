#!/usr/bin/env -S jq -rf
# Checks the status of the chosen Operator and returns its existing operands
# Usage: oc get operator <operator_name> -ojson | fetch_operands.jq | column -t

# Fetch all references
.status.components.refs
  # Create the headers for the table
  | ["KIND", "NAME", "NAMESPACE"],
  # Pull and parse the table contents
    (.[] | [.kind, .name, .namespace // "N/A"])
  # Format into a tab-separated value list
  | @tsv
