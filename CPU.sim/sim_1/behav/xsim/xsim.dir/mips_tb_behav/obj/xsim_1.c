/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_147(char*, char *);
extern void execute_148(char*, char *);
extern void execute_349(char*, char *);
extern void execute_350(char*, char *);
extern void execute_153(char*, char *);
extern void execute_154(char*, char *);
extern void execute_155(char*, char *);
extern void execute_156(char*, char *);
extern void execute_157(char*, char *);
extern void execute_158(char*, char *);
extern void execute_159(char*, char *);
extern void execute_160(char*, char *);
extern void execute_173(char*, char *);
extern void execute_178(char*, char *);
extern void execute_322(char*, char *);
extern void execute_323(char*, char *);
extern void execute_324(char*, char *);
extern void execute_325(char*, char *);
extern void execute_326(char*, char *);
extern void execute_327(char*, char *);
extern void execute_328(char*, char *);
extern void execute_329(char*, char *);
extern void execute_330(char*, char *);
extern void execute_331(char*, char *);
extern void execute_332(char*, char *);
extern void execute_333(char*, char *);
extern void execute_334(char*, char *);
extern void execute_335(char*, char *);
extern void execute_336(char*, char *);
extern void execute_337(char*, char *);
extern void execute_338(char*, char *);
extern void execute_339(char*, char *);
extern void execute_340(char*, char *);
extern void execute_341(char*, char *);
extern void execute_342(char*, char *);
extern void execute_343(char*, char *);
extern void execute_344(char*, char *);
extern void execute_345(char*, char *);
extern void execute_346(char*, char *);
extern void execute_347(char*, char *);
extern void execute_348(char*, char *);
extern void execute_161(char*, char *);
extern void execute_162(char*, char *);
extern void execute_172(char*, char *);
extern void execute_5(char*, char *);
extern void execute_163(char*, char *);
extern void execute_165(char*, char *);
extern void execute_169(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_164(char*, char *);
extern void execute_166(char*, char *);
extern void execute_167(char*, char *);
extern void execute_12(char*, char *);
extern void execute_171(char*, char *);
extern void execute_14(char*, char *);
extern void execute_16(char*, char *);
extern void execute_174(char*, char *);
extern void execute_20(char*, char *);
extern void execute_21(char*, char *);
extern void execute_176(char*, char *);
extern void execute_177(char*, char *);
extern void execute_23(char*, char *);
extern void execute_143(char*, char *);
extern void execute_318(char*, char *);
extern void execute_319(char*, char *);
extern void execute_320(char*, char *);
extern void execute_317(char*, char *);
extern void execute_195(char*, char *);
extern void execute_179(char*, char *);
extern void execute_183(char*, char *);
extern void execute_187(char*, char *);
extern void execute_188(char*, char *);
extern void execute_189(char*, char *);
extern void execute_190(char*, char *);
extern void execute_191(char*, char *);
extern void execute_315(char*, char *);
extern void execute_316(char*, char *);
extern void execute_145(char*, char *);
extern void execute_146(char*, char *);
extern void execute_321(char*, char *);
extern void execute_150(char*, char *);
extern void execute_151(char*, char *);
extern void execute_152(char*, char *);
extern void execute_351(char*, char *);
extern void execute_352(char*, char *);
extern void execute_353(char*, char *);
extern void execute_354(char*, char *);
extern void execute_355(char*, char *);
extern void transaction_11(char*, char*, unsigned, unsigned, unsigned);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[91] = {(funcp)execute_147, (funcp)execute_148, (funcp)execute_349, (funcp)execute_350, (funcp)execute_153, (funcp)execute_154, (funcp)execute_155, (funcp)execute_156, (funcp)execute_157, (funcp)execute_158, (funcp)execute_159, (funcp)execute_160, (funcp)execute_173, (funcp)execute_178, (funcp)execute_322, (funcp)execute_323, (funcp)execute_324, (funcp)execute_325, (funcp)execute_326, (funcp)execute_327, (funcp)execute_328, (funcp)execute_329, (funcp)execute_330, (funcp)execute_331, (funcp)execute_332, (funcp)execute_333, (funcp)execute_334, (funcp)execute_335, (funcp)execute_336, (funcp)execute_337, (funcp)execute_338, (funcp)execute_339, (funcp)execute_340, (funcp)execute_341, (funcp)execute_342, (funcp)execute_343, (funcp)execute_344, (funcp)execute_345, (funcp)execute_346, (funcp)execute_347, (funcp)execute_348, (funcp)execute_161, (funcp)execute_162, (funcp)execute_172, (funcp)execute_5, (funcp)execute_163, (funcp)execute_165, (funcp)execute_169, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_164, (funcp)execute_166, (funcp)execute_167, (funcp)execute_12, (funcp)execute_171, (funcp)execute_14, (funcp)execute_16, (funcp)execute_174, (funcp)execute_20, (funcp)execute_21, (funcp)execute_176, (funcp)execute_177, (funcp)execute_23, (funcp)execute_143, (funcp)execute_318, (funcp)execute_319, (funcp)execute_320, (funcp)execute_317, (funcp)execute_195, (funcp)execute_179, (funcp)execute_183, (funcp)execute_187, (funcp)execute_188, (funcp)execute_189, (funcp)execute_190, (funcp)execute_191, (funcp)execute_315, (funcp)execute_316, (funcp)execute_145, (funcp)execute_146, (funcp)execute_321, (funcp)execute_150, (funcp)execute_151, (funcp)execute_152, (funcp)execute_351, (funcp)execute_352, (funcp)execute_353, (funcp)execute_354, (funcp)execute_355, (funcp)transaction_11, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_50};
const int NumRelocateId= 91;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/mips_tb_behav/xsim.reloc",  (void **)funcTab, 91);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/mips_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/mips_tb_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/mips_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/mips_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/mips_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
