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
static const char *ng0 = "C:/Xilinx/ise_projects/music_playing/tb_top.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static const char *ng3 = "%0t: key_in=%b, LED_Mode=[%b|%b|%b], final_clk_out=%b";
static int ng4[] = {0, 0};
static const char *ng5 = "-------------------------------------------------------------------------------";
static const char *ng6 = "%0t: Starting Simulation...";
static const char *ng7 = "%0t: Applying reset...";
static const char *ng8 = "%0t: Reset released.";
static const char *ng9 = "%0t: >>> Pressing key for the 1st time (to Mode 1)...";
static int ng10[] = {50, 0};
static const char *ng11 = "%0t: >>> Pressing key for the 2nd time (to Mode 2)...";
static const char *ng12 = "%0t: >>> Pressing key for the 3rd time (back to Mode 0)...";
static const char *ng13 = "%0t: >>> Pressing key for the 4th time (to Mode 1 again)...";
static const char *ng14 = "%0t: Simulation finished.";

void Monitor_61_2(char *);
void Monitor_61_2(char *);


static int sp_press_key(char *t1, char *t2)
{
    int t0;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    double t7;
    double t8;
    char *t9;
    char *t10;

LAB0:    t0 = 1;
    t3 = (t2 + 48U);
    t4 = *((char **)t3);
    if (t4 == 0)
        goto LAB2;

LAB3:    goto *t4;

LAB2:    t4 = (t1 + 848);
    xsi_vlog_subprogram_setdisablestate(t4, &&LAB4);
    xsi_set_current_line(102, ng0);

LAB5:    xsi_set_current_line(103, ng0);
    t5 = ((char*)((ng1)));
    t6 = (t1 + 2680);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 1);
    xsi_set_current_line(104, ng0);
    t4 = (t1 + 2840);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = xsi_vlog_convert_to_real(t6, 32, 1);
    t7 = (t7 * 1000.0000000000000);
    t8 = (t7 < 0.00000000000000000);
    if (t8 == 1)
        goto LAB6;

LAB7:    t7 = (t7 + 0.50000000000000000);
    t7 = ((int64)(t7));

LAB8:    t7 = (t7 * 1.0000000000000000);
    t9 = (t2 + 56U);
    t10 = *((char **)t9);
    xsi_process_wait(t10, t7);
    *((char **)t3) = &&LAB9;
    t0 = 1;

LAB1:    return t0;
LAB4:    xsi_vlog_dispose_subprogram_invocation(t2);
    t4 = (t2 + 48U);
    *((char **)t4) = &&LAB2;
    t0 = 0;
    goto LAB1;

LAB6:    t7 = 0.00000000000000000;
    goto LAB8;

LAB9:    xsi_set_current_line(105, ng0);
    t4 = ((char*)((ng2)));
    t5 = (t1 + 2680);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    goto LAB4;

}

static void Monitor_61_2_Func(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t2 = xsi_vlog_time(t1, 1000.0000000000000, 1000.0000000000000);
    t3 = (t0 + 2680);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t0 + 1960U);
    t7 = *((char **)t6);
    t6 = (t0 + 1800U);
    t8 = *((char **)t6);
    t6 = (t0 + 1640U);
    t9 = *((char **)t6);
    t6 = (t0 + 1480U);
    t10 = *((char **)t6);
    xsi_vlogfile_write(1, 0, 3, ng3, 7, t0, (char)118, t1, 64, (char)118, t5, 1, (char)118, t7, 1, (char)118, t8, 1, (char)118, t9, 1, (char)118, t10, 1);

LAB1:    return;
}

static void Initial_24_0(char *t0)
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

LAB0:    t1 = (t0 + 3760U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(24, ng0);

LAB4:    xsi_set_current_line(25, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2360);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(26, ng0);

LAB5:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 3568);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB6;

LAB1:    return;
LAB6:    xsi_set_current_line(26, ng0);
    t3 = (t0 + 2360);
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
    t24 = (t0 + 2360);
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

static void Initial_45_1(char *t0)
{
    char t3[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    t1 = (t0 + 4008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);

LAB4:    xsi_set_current_line(47, ng0);
    xsi_vlogfile_write(1, 0, 0, ng5, 1, t0);
    xsi_set_current_line(48, ng0);
    t2 = xsi_vlog_time(t3, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng6, 2, t0, (char)118, t3, 64);
    xsi_set_current_line(49, ng0);
    xsi_vlogfile_write(1, 0, 0, ng5, 1, t0);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng1)));
    t4 = (t0 + 2520);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(51, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2680);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = xsi_vlog_time(t3, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng7, 2, t0, (char)118, t3, 64);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 3816);
    xsi_process_wait(t2, 20000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng2)));
    t4 = (t0 + 2520);
    xsi_vlogvar_assign_value(t4, t2, 0, 0, 1);
    xsi_set_current_line(57, ng0);
    t2 = xsi_vlog_time(t3, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng8, 2, t0, (char)118, t3, 64);
    xsi_set_current_line(58, ng0);
    xsi_vlogfile_write(1, 0, 0, ng5, 1, t0);
    xsi_set_current_line(61, ng0);
    Monitor_61_2(t0);
    xsi_set_current_line(71, ng0);
    t2 = xsi_vlog_time(t3, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng9, 2, t0, (char)118, t3, 64);
    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng10)));
    t4 = (t0 + 3816);
    t5 = (t0 + 848);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 2840);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB8:    t8 = (t0 + 3912);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB10:    if (t16 != 0)
        goto LAB11;

LAB6:    t9 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t9);

LAB7:    t17 = (t0 + 3912);
    t18 = *((char **)t17);
    t17 = (t0 + 848);
    t19 = (t0 + 3816);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 3816);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB9:;
LAB11:    t8 = (t0 + 4008U);
    *((char **)t8) = &&LAB8;
    goto LAB1;

LAB12:    xsi_set_current_line(76, ng0);
    t2 = xsi_vlog_time(t3, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng11, 2, t0, (char)118, t3, 64);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng10)));
    t4 = (t0 + 3816);
    t5 = (t0 + 848);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 2840);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB15:    t8 = (t0 + 3912);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB17:    if (t16 != 0)
        goto LAB18;

LAB13:    t9 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t9);

LAB14:    t17 = (t0 + 3912);
    t18 = *((char **)t17);
    t17 = (t0 + 848);
    t19 = (t0 + 3816);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 3816);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB16:;
LAB18:    t8 = (t0 + 4008U);
    *((char **)t8) = &&LAB15;
    goto LAB1;

LAB19:    xsi_set_current_line(81, ng0);
    t2 = xsi_vlog_time(t3, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng12, 2, t0, (char)118, t3, 64);
    xsi_set_current_line(82, ng0);
    t2 = ((char*)((ng10)));
    t4 = (t0 + 3816);
    t5 = (t0 + 848);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 2840);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB22:    t8 = (t0 + 3912);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB24:    if (t16 != 0)
        goto LAB25;

LAB20:    t9 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t9);

LAB21:    t17 = (t0 + 3912);
    t18 = *((char **)t17);
    t17 = (t0 + 848);
    t19 = (t0 + 3816);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 3816);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB26;
    goto LAB1;

LAB23:;
LAB25:    t8 = (t0 + 4008U);
    *((char **)t8) = &&LAB22;
    goto LAB1;

LAB26:    xsi_set_current_line(86, ng0);
    t2 = xsi_vlog_time(t3, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng13, 2, t0, (char)118, t3, 64);
    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng10)));
    t4 = (t0 + 3816);
    t5 = (t0 + 848);
    t6 = xsi_create_subprogram_invocation(t4, 0, t0, t5, 0, 0);
    xsi_vlog_subprogram_pushinvocation(t5, t6);
    t7 = (t0 + 2840);
    xsi_vlogvar_assign_value(t7, t2, 0, 0, 32);

LAB29:    t8 = (t0 + 3912);
    t9 = *((char **)t8);
    t10 = (t9 + 80U);
    t11 = *((char **)t10);
    t12 = (t11 + 272U);
    t13 = *((char **)t12);
    t14 = (t13 + 0U);
    t15 = *((char **)t14);
    t16 = ((int  (*)(char *, char *))t15)(t0, t9);

LAB31:    if (t16 != 0)
        goto LAB32;

LAB27:    t9 = (t0 + 848);
    xsi_vlog_subprogram_popinvocation(t9);

LAB28:    t17 = (t0 + 3912);
    t18 = *((char **)t17);
    t17 = (t0 + 848);
    t19 = (t0 + 3816);
    t20 = 0;
    xsi_delete_subprogram_invocation(t17, t18, t0, t19, t20);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3816);
    xsi_process_wait(t2, 100000000LL);
    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB30:;
LAB32:    t8 = (t0 + 4008U);
    *((char **)t8) = &&LAB29;
    goto LAB1;

LAB33:    xsi_set_current_line(91, ng0);
    xsi_vlogfile_write(1, 0, 0, ng5, 1, t0);
    xsi_set_current_line(92, ng0);
    t2 = xsi_vlog_time(t3, 1000.0000000000000, 1000.0000000000000);
    xsi_vlogfile_write(1, 0, 0, ng14, 2, t0, (char)118, t3, 64);
    xsi_set_current_line(93, ng0);
    xsi_vlogfile_write(1, 0, 0, ng5, 1, t0);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 3816);
    xsi_process_wait(t2, 10000000LL);
    *((char **)t1) = &&LAB34;
    goto LAB1;

LAB34:    xsi_set_current_line(95, ng0);
    xsi_vlog_finish(1);
    goto LAB1;

}

void Monitor_61_2(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 4064);
    t2 = (t0 + 4576);
    xsi_vlogfile_monitor((void *)Monitor_61_2_Func, t1, t2);

LAB1:    return;
}


extern void work_m_00000000002312828145_3622719947_init()
{
	static char *pe[] = {(void *)Initial_24_0,(void *)Initial_45_1,(void *)Monitor_61_2};
	static char *se[] = {(void *)sp_press_key};
	xsi_register_didat("work_m_00000000002312828145_3622719947", "isim/tb_top_isim_beh.exe.sim/work/m_00000000002312828145_3622719947.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
