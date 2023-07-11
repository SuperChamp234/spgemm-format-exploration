<project xmlns="com.autoesl.autopilot.project" name="outer_product" top="outer_product">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" clean="true" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../src/outer_product_tb.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="outer_product/src/outer_product.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="mmio.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="mmio.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="outer_product.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

