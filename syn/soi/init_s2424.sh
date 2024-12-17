############################
# Set path to XFAB XH035 PDK #
###########################
#export X_DIR=/pkg/xfab2/XKIT
#export PATH=$X_DIR/x_all/cadence/xenv:$PATH

#environment variables copied from XFAB_AMS_refkit_2_5_1
export MG_ENABLE_DUMMYPARAMS=true
export CDS_XL_DUMMY_BA_FLOW=true
export MG_ENABLE_PTOT=true
export MG_USE_EXTRAS=true
export REFKIT_DIR=$PWD


################################
# Set path to Cadence Virtuoso #
################################ 
export CDSHOME=/pkg/cadence/installs/IC618
export PATH=$PATH:$CDSHOME/tools/bin:$CDSHOME/tools/dfII/bin
export CDS_AUTO_64BIT=ALL

## CDS_Netlisting_Mode
## Interpretion of CDF properties during netlisting
export CDS_Netlisting_Mode="Analog"


##########################################
# Set path to SPECTRE/MMSIM (simulators) #
##########################################
export MMSIMHOME=/pkg/cadence/installs/SPECTRE231
export PATH=$PATH:$MMSIMHOME/tools/bin
#export CDS_AHDLCMI_ENABLE=NO


############################
# Set ASSURA DRC/LVS tools #
############################
#export ASSURAHOME=/pkg/cadence/installs/ASSURA41
#export PATH=$PATH:$ASSURAHOME/tools/bin:$ASSURAHOME/tools/assura/bin
#export ASSURA_AUTO_64BIT=ALL

#########################
# Set PVS DRC/LVS tools #
######################### 
export PVSHOME=/pkg/cadence/installs/PVS231
export PATH=$PATH:$PVSHOME/tools/bin

################################
# Set QRC Parasitic Extraction #
################################
export QRC_HOME=/pkg/cadence/installs/QUANTUS231
export PATH=$PATH:$QRC_HOME/tools/bin
export QRC_ENABLE_EXTRACTION="t"

######################
# Set XCELIUM tools  #
######################
export IUSHOME=/pkg/cadence/installs/XCELIUM2309
export PATH=$PATH:$IUSHOME/tools/bin/64bit:$IUSHOME/tools/bin
export CDS_BIND_TMP_DD=true


###################
# GENUS RC RTL Compiler #
###################
export GENUSHOME=/pkg/cadence/installs/GENUS211
export PATH=$PATH:$GENUSHOME/tools.lnx86/bin

######################################
# INNOVUS DIGITAL PLACE AND ROUTE    #
######################################
export INNOVUS=/pkg/cadence/installs/INNOVUS211
export PATH=$PATH:$INNOVUS/tools/bin/64bit:$INNOVUS/tools/bin
export EDIHOME=$INNOVUS
export CDS_ENABLE_EXP_PCELL=TRUE

############
# Licenses #
############

# Cadence license
export LM_LICENSE_FILE=3000@lic08.ug.kth.se

# Mentor license (Calibre)
export MGLS_LICENSE_FILE=1727@lic02.ug.kth.se

################
# Instructions #
################

echo Cadence Environment Initialization for XFAB completed
echo to create a new working directory run: xkit -t xh035 or xkit -t xh018
echo for help: xkit -h
echo "Europractice MPW options:"
echo "for xh035: 1121"
echo "INPUT1 = "1"     3.3V standard"
echo "INPUT2 = "1"     MOS5A (5.0V MOS) / HVMOSMID (compact 14nm HV MOS) / NHVEMID (ESD robust 14nm HV MOS)"
echo "INPUT3 = "2"     4 Thin Metals"
echo "INPUT4 = "1"     single MIM"
echo "for xh018: 1143"
echo "INPUT_CORE =    "1"     LP Low Power 1.8V"
echo "INPUT_MOS35 =   "1"     MOS3 3.3 Volt MOS"
echo "INPUT_METALS =  "4"     4 Thin Metals"
echo "INPUT_TOPMTLS = "3"     Top and Thick Metal: METTP & METTPL"
echo "to open Cadence in a working directory: virtuoso&"






