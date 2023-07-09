#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
struct __cosim_s108__ { char data[264]; };
struct __cosim_s148__ { char data[328]; };
extern "C" __cosim_s108__ row_product(__cosim_s108__*, __cosim_s148__*);
extern "C" __cosim_s108__ apatb_row_product_hw(__cosim_s108__ __xlx_apatb_param_x, __cosim_s148__ __xlx_apatb_param_y) {
  // DUT call
  __cosim_s108__ ap_return = row_product(&__xlx_apatb_param_x, &__xlx_apatb_param_y);
return ap_return;
}
