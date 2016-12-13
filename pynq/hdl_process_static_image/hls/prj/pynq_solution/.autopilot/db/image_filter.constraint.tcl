set clock_constraint { \
    name clk \
    module image_filter \
    port ap_clk \
    period 7 \
    uncertainty 0.875 \
}

set all_path {}

set false_path {}

set one_path { \
    name conx_path_0 \
    type single_source \
    source { \
            module image_filter \
            instance image_filter_CONTROL_BUS_s_axi_U/int_rows \
            bitWidth 32 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_0

set one_path { \
    name conx_path_1 \
    type single_source \
    source { \
            module image_filter \
            instance image_filter_CONTROL_BUS_s_axi_U/int_cols \
            bitWidth 32 \
            type register \
           } \
}
lappend all_path $one_path
lappend false_path conx_path_1

