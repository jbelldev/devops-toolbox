#!/usr/bin/env -S jq -rf
# Checks the status of the chosen Operator and returns its existing operands
# Would be handled best by piping to `column -t`

# Fetch all references
.status.components.refs
  # Create the headers for the table
  | ["KIND", "NAME", "NAMESPACE"],
  # Pull and parse the table contents
    (.[] | [.kind, .name, .namespace // ""])
  # Format into a tab-separated value list
  | @tsv
