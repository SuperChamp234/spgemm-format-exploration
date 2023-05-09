# 1 "processing_elements/src/matrix_multiplier.cpp"
# 1 "processing_elements/src/matrix_multiplier.cpp" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 155 "<built-in>" 3
# 1 "<command line>" 1






# 1 "/tools/Xilinx/Vivado/2018.3/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 157 "/tools/Xilinx/Vivado/2018.3/common/technology/autopilot/etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow));

    void _ssdm_op_Return(...) __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow));

    void _ssdm_Unroll(...) __attribute__ ((nothrow));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow));
    void _ssdm_Inline(...) __attribute__ ((nothrow));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow));

    void _ssdm_DataPack(...) __attribute__ ((nothrow));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow));

    void __xilinx_ip_top(...) __attribute__ ((nothrow));


}
# 8 "<command line>" 2
# 1 "<built-in>" 2
# 1 "processing_elements/src/matrix_multiplier.cpp" 2
# 1 "processing_elements/src/matrix_multiplier.h" 1



const int MATRIX_ROWS = 3;
const int MATRIX_COLS = 3;


int multiply(int a, int b);


void matrix_multiplier(int *matrix1, int *matrix2, int *output_matrix);
# 2 "processing_elements/src/matrix_multiplier.cpp" 2

int multiply(int a, int b)
{
_ssdm_InlineSelf(0, "");
 return a * b;
}

void matrix_multiplier(int *matrix1, int *matrix2, int *output_matrix)
{
_ssdm_op_SpecInterface(matrix1, "m_axi", 0, 0, "", 0, 0, "gmem", "slave", "", 16, 16, 16, 16, "", "");
_ssdm_op_SpecInterface(matrix2, "m_axi", 0, 0, "", 0, 0, "gmem", "slave", "", 16, 16, 16, 16, "", "");
_ssdm_op_SpecInterface(output_matrix, "m_axi", 0, 0, "", 0, 0, "gmem", "slave", "", 16, 16, 16, 16, "", "");
_ssdm_op_SpecInterface(matrix1, "s_axilite", 0, 0, "", 0, 0, "control", "", "", 0, 0, 0, 0, "", "");
_ssdm_op_SpecInterface(matrix2, "s_axilite", 0, 0, "", 0, 0, "control", "", "", 0, 0, 0, 0, "", "");
_ssdm_op_SpecInterface(output_matrix, "s_axilite", 0, 0, "", 0, 0, "control", "", "", 0, 0, 0, 0, "", "");
_ssdm_op_SpecInterface(0, "s_axilite", 0, 0, "", 0, 0, "control", "", "", 0, 0, 0, 0, "", "");

 int row1[MATRIX_COLS], col2[MATRIX_ROWS];

row_loop:
    for (int i = 0; i < MATRIX_ROWS; i++)
    {

    row1_loop:
        for (int j = 0; j < MATRIX_COLS; j++)
        {
_ssdm_op_SpecPipeline(1, 1, 1, 0, "");
 row1[j] = matrix1[i * MATRIX_COLS + j];
        }

    col_loop:
        for (int j = 0; j < MATRIX_COLS; j++)
        {

        col2_loop:
            for (int k = 0; k < MATRIX_ROWS; k++)
            {
_ssdm_op_SpecPipeline(1, 1, 1, 0, "");
 col2[k] = matrix2[k * MATRIX_COLS + j];
            }


            int accumulator = 0;
        mult_loop:
            for (int k = 0; k < MATRIX_COLS; k++)
            {
_ssdm_Unroll(1, 0, MATRIX_COLS, "");
 int result = multiply(row1[k], col2[k]);
                accumulator += result;
            }


_ssdm_op_SpecPipeline(1, 1, 1, 0, "");
 output_matrix[i * MATRIX_COLS + j] = accumulator;
        }
    }
}
