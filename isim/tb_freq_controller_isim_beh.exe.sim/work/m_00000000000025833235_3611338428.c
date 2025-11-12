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
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {24U, 0U};
static unsigned int ng4[] = {4U, 0U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {49U, 0U};
static unsigned int ng7[] = {9U, 0U};
static unsigned int ng8[] = {2U, 0U};
static unsigned int ng9[] = {99U, 0U};
static unsigned int ng10[] = {3U, 0U};



static void Always_206_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    int t22;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(206, ng0);
    t2 = (t0 + 3808);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(206, ng0);

LAB5:    xsi_set_current_line(207, ng0);
    t5 = (t0 + 1208U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(210, ng0);

LAB14:    xsi_set_current_line(211, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);

LAB15:    t2 = ((char*)((ng2)));
    t22 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t22 == 1)
        goto LAB16;

LAB17:    t2 = ((char*)((ng5)));
    t22 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t22 == 1)
        goto LAB18;

LAB19:    t2 = ((char*)((ng8)));
    t22 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t22 == 1)
        goto LAB20;

LAB21:
LAB23:
LAB22:    xsi_set_current_line(227, ng0);

LAB28:    xsi_set_current_line(228, ng0);
    t2 = ((char*)((ng3)));
    t5 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 8, 0LL);
    xsi_set_current_line(229, ng0);
    t2 = ((char*)((ng4)));
    t5 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(230, ng0);
    t2 = ((char*)((ng5)));
    t5 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 1, 0LL);
    t6 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t6, t2, 1, 0, 1, 0LL);
    t12 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t12, t2, 2, 0, 1, 0LL);

LAB24:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(207, ng0);

LAB13:    xsi_set_current_line(208, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t20, t19, 0, 0, 4, 0LL);
    t21 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t21, t19, 4, 0, 8, 0LL);
    xsi_set_current_line(209, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    t5 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t5, t2, 1, 0, 1, 0LL);
    t6 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t6, t2, 2, 0, 1, 0LL);
    goto LAB12;

LAB16:    xsi_set_current_line(212, ng0);

LAB25:    xsi_set_current_line(213, ng0);
    t5 = ((char*)((ng3)));
    t6 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    xsi_set_current_line(214, ng0);
    t2 = ((char*)((ng4)));
    t5 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(215, ng0);
    t2 = ((char*)((ng5)));
    t5 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 1, 0LL);
    t6 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t6, t2, 1, 0, 1, 0LL);
    t12 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t12, t2, 2, 0, 1, 0LL);
    goto LAB24;

LAB18:    xsi_set_current_line(217, ng0);

LAB26:    xsi_set_current_line(218, ng0);
    t5 = ((char*)((ng6)));
    t6 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    xsi_set_current_line(219, ng0);
    t2 = ((char*)((ng7)));
    t5 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(220, ng0);
    t2 = ((char*)((ng8)));
    t5 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 1, 0LL);
    t6 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t6, t2, 1, 0, 1, 0LL);
    t12 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t12, t2, 2, 0, 1, 0LL);
    goto LAB24;

LAB20:    xsi_set_current_line(222, ng0);

LAB27:    xsi_set_current_line(223, ng0);
    t5 = ((char*)((ng9)));
    t6 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t6, t5, 0, 0, 8, 0LL);
    xsi_set_current_line(224, ng0);
    t2 = ((char*)((ng10)));
    t5 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 4, 0LL);
    xsi_set_current_line(225, ng0);
    t2 = ((char*)((ng4)));
    t5 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t5, t2, 0, 0, 1, 0LL);
    t6 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t6, t2, 1, 0, 1, 0LL);
    t12 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t12, t2, 2, 0, 1, 0LL);
    goto LAB24;

}


extern void work_m_00000000000025833235_3611338428_init()
{
	static char *pe[] = {(void *)Always_206_0};
	xsi_register_didat("work_m_00000000000025833235_3611338428", "isim/tb_freq_controller_isim_beh.exe.sim/work/m_00000000000025833235_3611338428.didat");
	xsi_register_executes(pe);
}
