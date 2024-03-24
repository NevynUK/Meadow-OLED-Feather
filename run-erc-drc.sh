#!/bin/bash

set -e
scriptdir="$( cd "$(dirname "$0")" ; pwd -P )"

kicad-cli sch erc --severity-all --exit-code-violations -o "$scriptdir/erc.rpt" Meadow-Feather-OLED.kicad_sch
kicad-cli pcb drc --severity-all --exit-code-violations -o "$scriptdir/drc.rpt" Meadow-Feather-OLED.kicad_pcb
