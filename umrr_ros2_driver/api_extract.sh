#!/bin/bash
set -e

smart_pack=SmartAccessAutomotive_2_1_0.tar.gz
URL_smartbinaries=https://www.smartmicro.com/fileadmin/media/Downloads/Automotive_Radar/Software/${smart_pack}

function getSmartaccessBinaries {
    wget -c $URL_smartbinaries
    echo "extracting smart access"
    tar xfz $smart_pack -C smartmicro/
}

function cleanup {
    rm -rf $smart_pack
}

getSmartaccessBinaries
cleanup
