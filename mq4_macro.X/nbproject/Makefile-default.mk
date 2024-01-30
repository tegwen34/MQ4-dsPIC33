#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/mq4_macro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/mq4_macro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../../lib/lib/src/dataXfer.c ../../lib/lib/src/dataXferImpl.c ../../lib/lib/src/pic24_adc.c ../../lib/lib/src/pic24_clockfreq.c ../../lib/lib/src/pic24_configbits.c ../../lib/lib/src/pic24_ecan.c ../../lib/lib/src/pic24_flash.c ../../lib/lib/src/pic24_i2c.c ../../lib/lib/src/pic24_serial.c ../../lib/lib/src/pic24_spi.c ../../lib/lib/src/pic24_stdio_uart.c ../../lib/lib/src/pic24_timer.c ../../lib/lib/src/pic24_uart.c ../../lib/lib/src/pic24_util.c mq4_macro.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1106609200/dataXfer.o ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o ${OBJECTDIR}/_ext/1106609200/pic24_adc.o ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o ${OBJECTDIR}/_ext/1106609200/pic24_flash.o ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o ${OBJECTDIR}/_ext/1106609200/pic24_serial.o ${OBJECTDIR}/_ext/1106609200/pic24_spi.o ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o ${OBJECTDIR}/_ext/1106609200/pic24_timer.o ${OBJECTDIR}/_ext/1106609200/pic24_uart.o ${OBJECTDIR}/_ext/1106609200/pic24_util.o ${OBJECTDIR}/mq4_macro.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1106609200/dataXfer.o.d ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o.d ${OBJECTDIR}/_ext/1106609200/pic24_adc.o.d ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o.d ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o.d ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o.d ${OBJECTDIR}/_ext/1106609200/pic24_flash.o.d ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o.d ${OBJECTDIR}/_ext/1106609200/pic24_serial.o.d ${OBJECTDIR}/_ext/1106609200/pic24_spi.o.d ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o.d ${OBJECTDIR}/_ext/1106609200/pic24_timer.o.d ${OBJECTDIR}/_ext/1106609200/pic24_uart.o.d ${OBJECTDIR}/_ext/1106609200/pic24_util.o.d ${OBJECTDIR}/mq4_macro.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1106609200/dataXfer.o ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o ${OBJECTDIR}/_ext/1106609200/pic24_adc.o ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o ${OBJECTDIR}/_ext/1106609200/pic24_flash.o ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o ${OBJECTDIR}/_ext/1106609200/pic24_serial.o ${OBJECTDIR}/_ext/1106609200/pic24_spi.o ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o ${OBJECTDIR}/_ext/1106609200/pic24_timer.o ${OBJECTDIR}/_ext/1106609200/pic24_uart.o ${OBJECTDIR}/_ext/1106609200/pic24_util.o ${OBJECTDIR}/mq4_macro.o

# Source Files
SOURCEFILES=../../lib/lib/src/dataXfer.c ../../lib/lib/src/dataXferImpl.c ../../lib/lib/src/pic24_adc.c ../../lib/lib/src/pic24_clockfreq.c ../../lib/lib/src/pic24_configbits.c ../../lib/lib/src/pic24_ecan.c ../../lib/lib/src/pic24_flash.c ../../lib/lib/src/pic24_i2c.c ../../lib/lib/src/pic24_serial.c ../../lib/lib/src/pic24_spi.c ../../lib/lib/src/pic24_stdio_uart.c ../../lib/lib/src/pic24_timer.c ../../lib/lib/src/pic24_uart.c ../../lib/lib/src/pic24_util.c mq4_macro.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/mq4_macro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33EP128GP502
MP_LINKER_FILE_OPTION=,--script="..\..\lib\lib\application_linker_file\p33EP128GP502_application.gld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1106609200/dataXfer.o: ../../lib/lib/src/dataXfer.c  .generated_files/flags/default/e923d37cee113ceacb360bac73ec4b2e7d1ef90e .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/dataXfer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/dataXfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/dataXfer.c  -o ${OBJECTDIR}/_ext/1106609200/dataXfer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/dataXfer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/dataXferImpl.o: ../../lib/lib/src/dataXferImpl.c  .generated_files/flags/default/b6c4d5a2ea344cc92dc512462adabacef2ae9022 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/dataXferImpl.c  -o ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/dataXferImpl.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_adc.o: ../../lib/lib/src/pic24_adc.c  .generated_files/flags/default/65f73b6771b65fb174934f7f409fd15441950032 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_adc.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_adc.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o: ../../lib/lib/src/pic24_clockfreq.c  .generated_files/flags/default/4a4b1fb04da6242bfe4d77fabd00363bc7c79b91 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_clockfreq.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_configbits.o: ../../lib/lib/src/pic24_configbits.c  .generated_files/flags/default/b990f4302aea65b337705666a60f3eb2fe45fc18 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_configbits.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_configbits.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_ecan.o: ../../lib/lib/src/pic24_ecan.c  .generated_files/flags/default/49ed6190efe8da61bcbc4e88be4167a277344468 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_ecan.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_ecan.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_flash.o: ../../lib/lib/src/pic24_flash.c  .generated_files/flags/default/e2e7b028a3e8af8072bcbbd688a69a9c8f094ef9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_flash.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_flash.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_i2c.o: ../../lib/lib/src/pic24_i2c.c  .generated_files/flags/default/d99acd95eeb80360b27226081cad5acf1bf8a598 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_i2c.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_i2c.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_serial.o: ../../lib/lib/src/pic24_serial.c  .generated_files/flags/default/42e450556450bc939e85f4ddf6f9491b6ed06e41 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_serial.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_serial.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_spi.o: ../../lib/lib/src/pic24_spi.c  .generated_files/flags/default/58d2b48b47322182c47f749b7ef21ec6196411bb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_spi.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_spi.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o: ../../lib/lib/src/pic24_stdio_uart.c  .generated_files/flags/default/36948d86d3d95aa81d4690d258f106c739c12958 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_stdio_uart.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_timer.o: ../../lib/lib/src/pic24_timer.c  .generated_files/flags/default/c7130d74e2b4c5180730836651bcd202100f408b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_timer.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_timer.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_uart.o: ../../lib/lib/src/pic24_uart.c  .generated_files/flags/default/588fa76a1ca9fb7e12b61f6fc5548ca78fe96b36 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_uart.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_uart.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_util.o: ../../lib/lib/src/pic24_util.c  .generated_files/flags/default/b55f76b91ea20459764f2eb82a76f1fff6bbb5eb .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_util.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_util.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_util.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_util.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mq4_macro.o: mq4_macro.c  .generated_files/flags/default/6180d6435c60338eaa5abade118ee4cec178851d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mq4_macro.o.d 
	@${RM} ${OBJECTDIR}/mq4_macro.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mq4_macro.c  -o ${OBJECTDIR}/mq4_macro.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mq4_macro.o.d"      -g -D__DEBUG   -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1106609200/dataXfer.o: ../../lib/lib/src/dataXfer.c  .generated_files/flags/default/ee0ed691f34ba4c5cfd35a4d355e43ae48b3e195 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/dataXfer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/dataXfer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/dataXfer.c  -o ${OBJECTDIR}/_ext/1106609200/dataXfer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/dataXfer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/dataXferImpl.o: ../../lib/lib/src/dataXferImpl.c  .generated_files/flags/default/acc563ead789f8868ec8a27ad3ddaf8c823e5626 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/dataXferImpl.c  -o ${OBJECTDIR}/_ext/1106609200/dataXferImpl.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/dataXferImpl.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_adc.o: ../../lib/lib/src/pic24_adc.c  .generated_files/flags/default/e95fc94ce47cf088896b4ee123c23407b4bf9d6 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_adc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_adc.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_adc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_adc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o: ../../lib/lib/src/pic24_clockfreq.c  .generated_files/flags/default/b6f1d2e37f92c1d4424a785a2dd33b5056130e31 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_clockfreq.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_clockfreq.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_configbits.o: ../../lib/lib/src/pic24_configbits.c  .generated_files/flags/default/2ba689fdbcd5ec3a13242a4e245c8513de9ed4fe .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_configbits.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_configbits.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_configbits.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_ecan.o: ../../lib/lib/src/pic24_ecan.c  .generated_files/flags/default/46b5f165a10c3c3da87f44dda8545a82560f3e48 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_ecan.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_ecan.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_ecan.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_flash.o: ../../lib/lib/src/pic24_flash.c  .generated_files/flags/default/c09c3eec8dff5908dc06e490da59424d188881ff .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_flash.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_flash.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_flash.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_flash.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_i2c.o: ../../lib/lib/src/pic24_i2c.c  .generated_files/flags/default/7754de2a0cb09bd6f7506171e7f62905a98908f .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_i2c.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_i2c.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_i2c.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_serial.o: ../../lib/lib/src/pic24_serial.c  .generated_files/flags/default/dfb1b5425c7c1ee6b85bae9c0c73e65136189a50 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_serial.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_serial.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_serial.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_serial.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_spi.o: ../../lib/lib/src/pic24_spi.c  .generated_files/flags/default/53ba63d4134f10b9bca819f529fb7c203ce213bf .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_spi.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_spi.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_spi.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o: ../../lib/lib/src/pic24_stdio_uart.c  .generated_files/flags/default/27c667972f9b096b47e500264e084ccedc14dbdc .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_stdio_uart.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_stdio_uart.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_timer.o: ../../lib/lib/src/pic24_timer.c  .generated_files/flags/default/3bda8fc198f7fcb419cddc5ec5c7dae95133effa .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_timer.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_timer.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_timer.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_uart.o: ../../lib/lib/src/pic24_uart.c  .generated_files/flags/default/20e4d3f2a6966d8f0fd0e88339475ba29b10b9a5 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_uart.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_uart.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_uart.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_uart.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1106609200/pic24_util.o: ../../lib/lib/src/pic24_util.c  .generated_files/flags/default/4adeecb4acf6f5df349e445cf17e37e9b27d3bc0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1106609200" 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_util.o.d 
	@${RM} ${OBJECTDIR}/_ext/1106609200/pic24_util.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../lib/lib/src/pic24_util.c  -o ${OBJECTDIR}/_ext/1106609200/pic24_util.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1106609200/pic24_util.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/mq4_macro.o: mq4_macro.c  .generated_files/flags/default/d300b85e878cf4cbb5197e0d76ae9de50e9a8dd0 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/mq4_macro.o.d 
	@${RM} ${OBJECTDIR}/mq4_macro.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mq4_macro.c  -o ${OBJECTDIR}/mq4_macro.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/mq4_macro.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -I"../../lib/lib/include" -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/mq4_macro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../../lib/lib/application_linker_file/p33EP128GP502_application.gld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/mq4_macro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/mq4_macro.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../../lib/lib/application_linker_file/p33EP128GP502_application.gld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/mq4_macro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}\\xc16-bin2hex ${DISTDIR}/mq4_macro.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
