/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "Time=%t ns | clk_div_4=%b, clk_div_250k=%b";
static const char *ng1 = "C:/Xilinx/ise_projects/music_playing/tb_divider_clk.v";
static int ng2[] = {0, 0};
static unsigned int ng3[] = {0U, 0U};
static const char *ng4 = "=================================================================";
static const char *ng5 = "[%0t] Testbench Started. Applying reset...";
static unsigned int ng6[] = {1U, 0U};
static const char *ng7 = "[%0t] Reset released.";
static const char *ng8 = "[%0t] Waiting for 3ms to observe the slow clock (clk_div_250k)...";
static const char *ng9 = "Expected period for clk_div_4 is 40ns.";
static const char *ng10 = "Expected period for clk_div_250k is 2.5ms (2,500,000ns).";
static const char *ng11 = "[%0t] Simulation finished. Check the waveform viewer.";

void Monitor_69_3(char *);
void Monitor_69_3(char *);


static void Monitor_69_3_Func(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    t2 = xsi_vlog_time(t1, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t5 = *((char **)t3);
    xsi_vlogfile_write(1, 0, 3, ng0, 4, t0, (char)118, t1, 64, (char)118, t4, 1, (char)118, t5, 1);

LAB1:    return;
}

static void Initial_32_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng1);

LAB4:    xsi_set_current_line(33, ng1);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(34, ng1);

LAB5:    xsi_set_current_line(34, ng1);
    t2 = (t0 + 2496);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB6;

LAB1:    return;
LAB6:    xsi_set_current_line(34, ng1);
    t3 = (t0 + 1608);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB10;

LAB8:    if (*((unsigned int *)t7) == 0)
        goto LAB7;

LAB9:    t13 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t13) = 1;

LAB10:    t14 = (t4 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t4) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB12;

LAB11:    t22 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1608);
    xsi_vlogvar_assign_value(t24, t4, 0, 0, 1);
    goto LAB5;

LAB7:    *((unsigned int *)t4) = 1;
    goto LAB10;

LAB12:    t18 = *((unsigned int *)t4);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t4) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB11;

LAB13:    goto LAB1;

}

static void Initial_40_1(char *t0)
{
    char t4[16];
    char *t1;
    char *t2;
    char *t3;

LAB0:    t1 = (t0 + 2936U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng1);

LAB4:    xsi_set_current_line(42, ng1);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(43, ng1);
    xsi_vlogfile_write(1, 0, 0, ng4, 1, t0);
    xsi_set_current_line(44, ng1);
    t2 = xsi_vlog_time(t4, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng5, 2, t0, (char)118, t4, 64);
    xsi_set_current_line(45, ng1);
    t2 = (t0 + 2744);
    xsi_process_wait(t2, 100000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(46, ng1);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(47, ng1);
    t2 = xsi_vlog_time(t4, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng7, 2, t0, (char)118, t4, 64);
    xsi_set_current_line(48, ng1);
    xsi_vlogfile_write(1, 0, 0, ng4, 1, t0);
    xsi_set_current_line(51, ng1);
    t2 = xsi_vlog_time(t4, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng8, 2, t0, (char)118, t4, 64);
    xsi_set_current_line(52, ng1);
    xsi_vlogfile_write(1, 0, 0, ng9, 1, t0);
    xsi_set_current_line(53, ng1);
    xsi_vlogfile_write(1, 0, 0, ng10, 1, t0);
    xsi_set_current_line(57, ng1);
    t2 = (t0 + 2744);
    xsi_process_wait(t2, 3000000000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(59, ng1);
    xsi_vlogfile_write(1, 0, 0, ng4, 1, t0);
    xsi_set_current_line(60, ng1);
    t2 = xsi_vlog_time(t4, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng11, 2, t0, (char)118, t4, 64);
    xsi_set_current_line(61, ng1);
    xsi_vlog_finish(1);
    goto LAB1;

}

static void Initial_68_2(char *t0)
{

LAB0:    xsi_set_current_line(68, ng1);

LAB2:    xsi_set_current_line(69, ng1);
    Monitor_69_3(t0);

LAB1:    return;
}

void Monitor_69_3(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 3240);
    t2 = (t0 + 3752);
    xsi_vlogfile_monitor((void *)Monitor_69_3_Func, t1, t2);

LAB1:    return;
}


extern void work_m_00000000000748741792_4160731967_init()
{
	static char *pe[] = {(void *)Initial_32_0,(void *)Initial_40_1,(void *)Initial_68_2,(void *)Monitor_69_3};
	xsi_register_didat("work_m_00000000000748741792_4160731967", "isim/tb_divider_clk_isim_beh.exe.sim/work/m_00000000000748741792_4160731967.didat");
	xsi_register_executes(pe);
}
