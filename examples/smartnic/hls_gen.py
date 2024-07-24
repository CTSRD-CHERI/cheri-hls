import os

def hls_gen():
    """
    This script generates an HLS function that takes a set of buffers and 
    performs matrix multiplication selectively.
    """   

    buffer_count = 18
    buffer_size = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 170, 180]
    buffer_set_size = 3

    # JC: Can we just move around buffers after allocation?

    hls_buff = """
void vect_mult(int size, int *a, int *b, int *c) {
  for (int i = 0; i < size; i++)
#pragma HLS PIPELINE II=1
    c[i] = a[i] * b[i];
}

void hls_top(int size, int op_code, 
"""

    for i in range(buffer_count):
        hls_buff += f"int b{i}[{buffer_size[i]}],"
 
    hls_buff = hls_buff[:-1]

    hls_buff += """
) {
#pragma HLS INTERFACE s_axilite port = size
#pragma HLS INTERFACE s_axilite port = return 
"""

    for i in range(buffer_count):
        hls_buff += f"#pragma HLS INTERFACE m_axi port = b{i}\n"

    hls_buff += """
switch (op_code){
"""

    for i in range(int(buffer_count/buffer_set_size)):
        hls_buff += f"""
case {i} : {{vect_mult(size, """
        for j in range(buffer_set_size):
            hls_buff += f"b_{i*int(buffer_count/buffer_set_size) +j},"
        hls_buff = hls_buff[:-1]
        hls_buff += "); break;}"

    hls_buff += """default : break;}}"""

    print(hls_buff)

if __name__ == "__main__":
    hls_gen()
