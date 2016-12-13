<project xmlns="com.autoesl.autopilot.project" name="prj" top="image_filter">
    <files>
        <file name="../../test.cpp" sc="0" tb="1" cflags=" "/>
        <file name="../../opencv_top.cpp" sc="0" tb="1" cflags=" "/>
        <file name="../../../common/images/test_1080p.bmp" sc="0" tb="1" cflags=" "/>
        <file name="top.cpp" sc="0" tb="false" cflags=""/>
    </files>
    <includePaths/>
    <libraryPaths/>
    <libraryFlag/>
    <Simulation argv="">
        <SimFlow name="csim" optimizeCompile="true" ldflags="" mflags="-j4" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <solutions xmlns="">
        <solution name="solution1" status="inactive"/>
        <solution name="pynq_solution" status="active"/>
    </solutions>
</project>

