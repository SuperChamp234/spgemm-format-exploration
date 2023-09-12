<project xmlns="com.autoesl.autopilot.project" name="row_product" top="row_product">
    <includePaths/>
    <libraryPaths/>
    <Simulation argv="">
        <SimFlow name="csim" ldflags="" mflags="" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../src/row_product_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="row_product/src/row_product.hpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="row_product/src/row_product.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="row_product_test" status="active"/>
    </solutions>
</project>

