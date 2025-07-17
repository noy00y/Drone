#include "hls_signal_handler.h"
#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_directio.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
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
unsigned int ap_apatb_pix_in_cap_bc;
static AESL_RUNTIME_BC __xlx_pix_in_V_size_Reader("../tv/stream_size/stream_size_in_pix_in.dat");
unsigned int ap_apatb_fmap_out0_cap_bc;
static AESL_RUNTIME_BC __xlx_fmap_out0_V_size_Reader("../tv/stream_size/stream_size_out_fmap_out0.dat");
unsigned int ap_apatb_fmap_out1_cap_bc;
static AESL_RUNTIME_BC __xlx_fmap_out1_V_size_Reader("../tv/stream_size/stream_size_out_fmap_out1.dat");
using hls::sim::Byte;
extern "C" void cnn_accel(long long*, short*, short*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*, Byte<2>*);
extern "C" void apatb_cnn_accel_hw(volatile void * __xlx_apatb_param_pix_in, volatile void * __xlx_apatb_param_fmap_out0, volatile void * __xlx_apatb_param_fmap_out1, volatile void * __xlx_apatb_param_weights_0_0_0, volatile void * __xlx_apatb_param_weights_0_0_1, volatile void * __xlx_apatb_param_weights_0_0_2, volatile void * __xlx_apatb_param_weights_0_1_0, volatile void * __xlx_apatb_param_weights_0_1_1, volatile void * __xlx_apatb_param_weights_0_1_2, volatile void * __xlx_apatb_param_weights_0_2_0, volatile void * __xlx_apatb_param_weights_0_2_1, volatile void * __xlx_apatb_param_weights_0_2_2, volatile void * __xlx_apatb_param_weights_1_0_0, volatile void * __xlx_apatb_param_weights_1_0_1, volatile void * __xlx_apatb_param_weights_1_0_2, volatile void * __xlx_apatb_param_weights_1_1_0, volatile void * __xlx_apatb_param_weights_1_1_1, volatile void * __xlx_apatb_param_weights_1_1_2, volatile void * __xlx_apatb_param_weights_1_2_0, volatile void * __xlx_apatb_param_weights_1_2_1, volatile void * __xlx_apatb_param_weights_1_2_2, volatile void * __xlx_apatb_param_weights_2_0_0, volatile void * __xlx_apatb_param_weights_2_0_1, volatile void * __xlx_apatb_param_weights_2_0_2, volatile void * __xlx_apatb_param_weights_2_1_0, volatile void * __xlx_apatb_param_weights_2_1_1, volatile void * __xlx_apatb_param_weights_2_1_2, volatile void * __xlx_apatb_param_weights_2_2_0, volatile void * __xlx_apatb_param_weights_2_2_1, volatile void * __xlx_apatb_param_weights_2_2_2, volatile void * __xlx_apatb_param_bias) {
using hls::sim::createStream;
auto* spix_in = createStream((hls::stream<long long>*)__xlx_apatb_param_pix_in);
  //Create input buffer for fmap_out0
  ap_apatb_fmap_out0_cap_bc = __xlx_fmap_out0_V_size_Reader.read_size();
  short* __xlx_fmap_out0_input_buffer= new short[ap_apatb_fmap_out0_cap_bc];
auto* sfmap_out0 = createStream((hls::stream<short>*)__xlx_apatb_param_fmap_out0);
  //Create input buffer for fmap_out1
  ap_apatb_fmap_out1_cap_bc = __xlx_fmap_out1_V_size_Reader.read_size();
  short* __xlx_fmap_out1_input_buffer= new short[ap_apatb_fmap_out1_cap_bc];
auto* sfmap_out1 = createStream((hls::stream<short>*)__xlx_apatb_param_fmap_out1);
  // Collect __xlx_weights_0_0_0__tmp_vec
std::vector<Byte<2>> __xlx_weights_0_0_0__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_0_0_0__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_0_0_0)[i]);
}
  int __xlx_size_param_weights_0_0_0 = 8;
  int __xlx_offset_param_weights_0_0_0 = 0;
  int __xlx_offset_byte_param_weights_0_0_0 = 0*2;
  // Collect __xlx_weights_0_0_1__tmp_vec
std::vector<Byte<2>> __xlx_weights_0_0_1__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_0_0_1__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_0_0_1)[i]);
}
  int __xlx_size_param_weights_0_0_1 = 8;
  int __xlx_offset_param_weights_0_0_1 = 0;
  int __xlx_offset_byte_param_weights_0_0_1 = 0*2;
  // Collect __xlx_weights_0_0_2__tmp_vec
std::vector<Byte<2>> __xlx_weights_0_0_2__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_0_0_2__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_0_0_2)[i]);
}
  int __xlx_size_param_weights_0_0_2 = 8;
  int __xlx_offset_param_weights_0_0_2 = 0;
  int __xlx_offset_byte_param_weights_0_0_2 = 0*2;
  // Collect __xlx_weights_0_1_0__tmp_vec
std::vector<Byte<2>> __xlx_weights_0_1_0__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_0_1_0__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_0_1_0)[i]);
}
  int __xlx_size_param_weights_0_1_0 = 8;
  int __xlx_offset_param_weights_0_1_0 = 0;
  int __xlx_offset_byte_param_weights_0_1_0 = 0*2;
  // Collect __xlx_weights_0_1_1__tmp_vec
std::vector<Byte<2>> __xlx_weights_0_1_1__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_0_1_1__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_0_1_1)[i]);
}
  int __xlx_size_param_weights_0_1_1 = 8;
  int __xlx_offset_param_weights_0_1_1 = 0;
  int __xlx_offset_byte_param_weights_0_1_1 = 0*2;
  // Collect __xlx_weights_0_1_2__tmp_vec
std::vector<Byte<2>> __xlx_weights_0_1_2__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_0_1_2__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_0_1_2)[i]);
}
  int __xlx_size_param_weights_0_1_2 = 8;
  int __xlx_offset_param_weights_0_1_2 = 0;
  int __xlx_offset_byte_param_weights_0_1_2 = 0*2;
  // Collect __xlx_weights_0_2_0__tmp_vec
std::vector<Byte<2>> __xlx_weights_0_2_0__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_0_2_0__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_0_2_0)[i]);
}
  int __xlx_size_param_weights_0_2_0 = 8;
  int __xlx_offset_param_weights_0_2_0 = 0;
  int __xlx_offset_byte_param_weights_0_2_0 = 0*2;
  // Collect __xlx_weights_0_2_1__tmp_vec
std::vector<Byte<2>> __xlx_weights_0_2_1__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_0_2_1__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_0_2_1)[i]);
}
  int __xlx_size_param_weights_0_2_1 = 8;
  int __xlx_offset_param_weights_0_2_1 = 0;
  int __xlx_offset_byte_param_weights_0_2_1 = 0*2;
  // Collect __xlx_weights_0_2_2__tmp_vec
std::vector<Byte<2>> __xlx_weights_0_2_2__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_0_2_2__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_0_2_2)[i]);
}
  int __xlx_size_param_weights_0_2_2 = 8;
  int __xlx_offset_param_weights_0_2_2 = 0;
  int __xlx_offset_byte_param_weights_0_2_2 = 0*2;
  // Collect __xlx_weights_1_0_0__tmp_vec
std::vector<Byte<2>> __xlx_weights_1_0_0__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_1_0_0__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_1_0_0)[i]);
}
  int __xlx_size_param_weights_1_0_0 = 8;
  int __xlx_offset_param_weights_1_0_0 = 0;
  int __xlx_offset_byte_param_weights_1_0_0 = 0*2;
  // Collect __xlx_weights_1_0_1__tmp_vec
std::vector<Byte<2>> __xlx_weights_1_0_1__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_1_0_1__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_1_0_1)[i]);
}
  int __xlx_size_param_weights_1_0_1 = 8;
  int __xlx_offset_param_weights_1_0_1 = 0;
  int __xlx_offset_byte_param_weights_1_0_1 = 0*2;
  // Collect __xlx_weights_1_0_2__tmp_vec
std::vector<Byte<2>> __xlx_weights_1_0_2__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_1_0_2__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_1_0_2)[i]);
}
  int __xlx_size_param_weights_1_0_2 = 8;
  int __xlx_offset_param_weights_1_0_2 = 0;
  int __xlx_offset_byte_param_weights_1_0_2 = 0*2;
  // Collect __xlx_weights_1_1_0__tmp_vec
std::vector<Byte<2>> __xlx_weights_1_1_0__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_1_1_0__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_1_1_0)[i]);
}
  int __xlx_size_param_weights_1_1_0 = 8;
  int __xlx_offset_param_weights_1_1_0 = 0;
  int __xlx_offset_byte_param_weights_1_1_0 = 0*2;
  // Collect __xlx_weights_1_1_1__tmp_vec
std::vector<Byte<2>> __xlx_weights_1_1_1__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_1_1_1__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_1_1_1)[i]);
}
  int __xlx_size_param_weights_1_1_1 = 8;
  int __xlx_offset_param_weights_1_1_1 = 0;
  int __xlx_offset_byte_param_weights_1_1_1 = 0*2;
  // Collect __xlx_weights_1_1_2__tmp_vec
std::vector<Byte<2>> __xlx_weights_1_1_2__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_1_1_2__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_1_1_2)[i]);
}
  int __xlx_size_param_weights_1_1_2 = 8;
  int __xlx_offset_param_weights_1_1_2 = 0;
  int __xlx_offset_byte_param_weights_1_1_2 = 0*2;
  // Collect __xlx_weights_1_2_0__tmp_vec
std::vector<Byte<2>> __xlx_weights_1_2_0__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_1_2_0__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_1_2_0)[i]);
}
  int __xlx_size_param_weights_1_2_0 = 8;
  int __xlx_offset_param_weights_1_2_0 = 0;
  int __xlx_offset_byte_param_weights_1_2_0 = 0*2;
  // Collect __xlx_weights_1_2_1__tmp_vec
std::vector<Byte<2>> __xlx_weights_1_2_1__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_1_2_1__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_1_2_1)[i]);
}
  int __xlx_size_param_weights_1_2_1 = 8;
  int __xlx_offset_param_weights_1_2_1 = 0;
  int __xlx_offset_byte_param_weights_1_2_1 = 0*2;
  // Collect __xlx_weights_1_2_2__tmp_vec
std::vector<Byte<2>> __xlx_weights_1_2_2__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_1_2_2__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_1_2_2)[i]);
}
  int __xlx_size_param_weights_1_2_2 = 8;
  int __xlx_offset_param_weights_1_2_2 = 0;
  int __xlx_offset_byte_param_weights_1_2_2 = 0*2;
  // Collect __xlx_weights_2_0_0__tmp_vec
std::vector<Byte<2>> __xlx_weights_2_0_0__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_2_0_0__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_2_0_0)[i]);
}
  int __xlx_size_param_weights_2_0_0 = 8;
  int __xlx_offset_param_weights_2_0_0 = 0;
  int __xlx_offset_byte_param_weights_2_0_0 = 0*2;
  // Collect __xlx_weights_2_0_1__tmp_vec
std::vector<Byte<2>> __xlx_weights_2_0_1__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_2_0_1__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_2_0_1)[i]);
}
  int __xlx_size_param_weights_2_0_1 = 8;
  int __xlx_offset_param_weights_2_0_1 = 0;
  int __xlx_offset_byte_param_weights_2_0_1 = 0*2;
  // Collect __xlx_weights_2_0_2__tmp_vec
std::vector<Byte<2>> __xlx_weights_2_0_2__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_2_0_2__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_2_0_2)[i]);
}
  int __xlx_size_param_weights_2_0_2 = 8;
  int __xlx_offset_param_weights_2_0_2 = 0;
  int __xlx_offset_byte_param_weights_2_0_2 = 0*2;
  // Collect __xlx_weights_2_1_0__tmp_vec
std::vector<Byte<2>> __xlx_weights_2_1_0__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_2_1_0__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_2_1_0)[i]);
}
  int __xlx_size_param_weights_2_1_0 = 8;
  int __xlx_offset_param_weights_2_1_0 = 0;
  int __xlx_offset_byte_param_weights_2_1_0 = 0*2;
  // Collect __xlx_weights_2_1_1__tmp_vec
std::vector<Byte<2>> __xlx_weights_2_1_1__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_2_1_1__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_2_1_1)[i]);
}
  int __xlx_size_param_weights_2_1_1 = 8;
  int __xlx_offset_param_weights_2_1_1 = 0;
  int __xlx_offset_byte_param_weights_2_1_1 = 0*2;
  // Collect __xlx_weights_2_1_2__tmp_vec
std::vector<Byte<2>> __xlx_weights_2_1_2__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_2_1_2__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_2_1_2)[i]);
}
  int __xlx_size_param_weights_2_1_2 = 8;
  int __xlx_offset_param_weights_2_1_2 = 0;
  int __xlx_offset_byte_param_weights_2_1_2 = 0*2;
  // Collect __xlx_weights_2_2_0__tmp_vec
std::vector<Byte<2>> __xlx_weights_2_2_0__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_2_2_0__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_2_2_0)[i]);
}
  int __xlx_size_param_weights_2_2_0 = 8;
  int __xlx_offset_param_weights_2_2_0 = 0;
  int __xlx_offset_byte_param_weights_2_2_0 = 0*2;
  // Collect __xlx_weights_2_2_1__tmp_vec
std::vector<Byte<2>> __xlx_weights_2_2_1__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_2_2_1__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_2_2_1)[i]);
}
  int __xlx_size_param_weights_2_2_1 = 8;
  int __xlx_offset_param_weights_2_2_1 = 0;
  int __xlx_offset_byte_param_weights_2_2_1 = 0*2;
  // Collect __xlx_weights_2_2_2__tmp_vec
std::vector<Byte<2>> __xlx_weights_2_2_2__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_weights_2_2_2__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_weights_2_2_2)[i]);
}
  int __xlx_size_param_weights_2_2_2 = 8;
  int __xlx_offset_param_weights_2_2_2 = 0;
  int __xlx_offset_byte_param_weights_2_2_2 = 0*2;
  // Collect __xlx_bias__tmp_vec
std::vector<Byte<2>> __xlx_bias__tmp_vec;
for (size_t i = 0; i < 8; ++i){
__xlx_bias__tmp_vec.push_back(((Byte<2>*)__xlx_apatb_param_bias)[i]);
}
  int __xlx_size_param_bias = 8;
  int __xlx_offset_param_bias = 0;
  int __xlx_offset_byte_param_bias = 0*2;
  // DUT call
  cnn_accel(spix_in->data<long long>(), sfmap_out0->data<short>(), sfmap_out1->data<short>(), __xlx_weights_0_0_0__tmp_vec.data(), __xlx_weights_0_0_1__tmp_vec.data(), __xlx_weights_0_0_2__tmp_vec.data(), __xlx_weights_0_1_0__tmp_vec.data(), __xlx_weights_0_1_1__tmp_vec.data(), __xlx_weights_0_1_2__tmp_vec.data(), __xlx_weights_0_2_0__tmp_vec.data(), __xlx_weights_0_2_1__tmp_vec.data(), __xlx_weights_0_2_2__tmp_vec.data(), __xlx_weights_1_0_0__tmp_vec.data(), __xlx_weights_1_0_1__tmp_vec.data(), __xlx_weights_1_0_2__tmp_vec.data(), __xlx_weights_1_1_0__tmp_vec.data(), __xlx_weights_1_1_1__tmp_vec.data(), __xlx_weights_1_1_2__tmp_vec.data(), __xlx_weights_1_2_0__tmp_vec.data(), __xlx_weights_1_2_1__tmp_vec.data(), __xlx_weights_1_2_2__tmp_vec.data(), __xlx_weights_2_0_0__tmp_vec.data(), __xlx_weights_2_0_1__tmp_vec.data(), __xlx_weights_2_0_2__tmp_vec.data(), __xlx_weights_2_1_0__tmp_vec.data(), __xlx_weights_2_1_1__tmp_vec.data(), __xlx_weights_2_1_2__tmp_vec.data(), __xlx_weights_2_2_0__tmp_vec.data(), __xlx_weights_2_2_1__tmp_vec.data(), __xlx_weights_2_2_2__tmp_vec.data(), __xlx_bias__tmp_vec.data());
spix_in->transfer((hls::stream<long long>*)__xlx_apatb_param_pix_in);
sfmap_out0->transfer((hls::stream<short>*)__xlx_apatb_param_fmap_out0);
sfmap_out1->transfer((hls::stream<short>*)__xlx_apatb_param_fmap_out1);
// print __xlx_apatb_param_weights_0_0_0
for (size_t i = 0; i < __xlx_size_param_weights_0_0_0; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_0_0_0)[i] = __xlx_weights_0_0_0__tmp_vec[__xlx_offset_param_weights_0_0_0+i];
}
// print __xlx_apatb_param_weights_0_0_1
for (size_t i = 0; i < __xlx_size_param_weights_0_0_1; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_0_0_1)[i] = __xlx_weights_0_0_1__tmp_vec[__xlx_offset_param_weights_0_0_1+i];
}
// print __xlx_apatb_param_weights_0_0_2
for (size_t i = 0; i < __xlx_size_param_weights_0_0_2; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_0_0_2)[i] = __xlx_weights_0_0_2__tmp_vec[__xlx_offset_param_weights_0_0_2+i];
}
// print __xlx_apatb_param_weights_0_1_0
for (size_t i = 0; i < __xlx_size_param_weights_0_1_0; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_0_1_0)[i] = __xlx_weights_0_1_0__tmp_vec[__xlx_offset_param_weights_0_1_0+i];
}
// print __xlx_apatb_param_weights_0_1_1
for (size_t i = 0; i < __xlx_size_param_weights_0_1_1; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_0_1_1)[i] = __xlx_weights_0_1_1__tmp_vec[__xlx_offset_param_weights_0_1_1+i];
}
// print __xlx_apatb_param_weights_0_1_2
for (size_t i = 0; i < __xlx_size_param_weights_0_1_2; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_0_1_2)[i] = __xlx_weights_0_1_2__tmp_vec[__xlx_offset_param_weights_0_1_2+i];
}
// print __xlx_apatb_param_weights_0_2_0
for (size_t i = 0; i < __xlx_size_param_weights_0_2_0; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_0_2_0)[i] = __xlx_weights_0_2_0__tmp_vec[__xlx_offset_param_weights_0_2_0+i];
}
// print __xlx_apatb_param_weights_0_2_1
for (size_t i = 0; i < __xlx_size_param_weights_0_2_1; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_0_2_1)[i] = __xlx_weights_0_2_1__tmp_vec[__xlx_offset_param_weights_0_2_1+i];
}
// print __xlx_apatb_param_weights_0_2_2
for (size_t i = 0; i < __xlx_size_param_weights_0_2_2; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_0_2_2)[i] = __xlx_weights_0_2_2__tmp_vec[__xlx_offset_param_weights_0_2_2+i];
}
// print __xlx_apatb_param_weights_1_0_0
for (size_t i = 0; i < __xlx_size_param_weights_1_0_0; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_1_0_0)[i] = __xlx_weights_1_0_0__tmp_vec[__xlx_offset_param_weights_1_0_0+i];
}
// print __xlx_apatb_param_weights_1_0_1
for (size_t i = 0; i < __xlx_size_param_weights_1_0_1; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_1_0_1)[i] = __xlx_weights_1_0_1__tmp_vec[__xlx_offset_param_weights_1_0_1+i];
}
// print __xlx_apatb_param_weights_1_0_2
for (size_t i = 0; i < __xlx_size_param_weights_1_0_2; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_1_0_2)[i] = __xlx_weights_1_0_2__tmp_vec[__xlx_offset_param_weights_1_0_2+i];
}
// print __xlx_apatb_param_weights_1_1_0
for (size_t i = 0; i < __xlx_size_param_weights_1_1_0; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_1_1_0)[i] = __xlx_weights_1_1_0__tmp_vec[__xlx_offset_param_weights_1_1_0+i];
}
// print __xlx_apatb_param_weights_1_1_1
for (size_t i = 0; i < __xlx_size_param_weights_1_1_1; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_1_1_1)[i] = __xlx_weights_1_1_1__tmp_vec[__xlx_offset_param_weights_1_1_1+i];
}
// print __xlx_apatb_param_weights_1_1_2
for (size_t i = 0; i < __xlx_size_param_weights_1_1_2; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_1_1_2)[i] = __xlx_weights_1_1_2__tmp_vec[__xlx_offset_param_weights_1_1_2+i];
}
// print __xlx_apatb_param_weights_1_2_0
for (size_t i = 0; i < __xlx_size_param_weights_1_2_0; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_1_2_0)[i] = __xlx_weights_1_2_0__tmp_vec[__xlx_offset_param_weights_1_2_0+i];
}
// print __xlx_apatb_param_weights_1_2_1
for (size_t i = 0; i < __xlx_size_param_weights_1_2_1; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_1_2_1)[i] = __xlx_weights_1_2_1__tmp_vec[__xlx_offset_param_weights_1_2_1+i];
}
// print __xlx_apatb_param_weights_1_2_2
for (size_t i = 0; i < __xlx_size_param_weights_1_2_2; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_1_2_2)[i] = __xlx_weights_1_2_2__tmp_vec[__xlx_offset_param_weights_1_2_2+i];
}
// print __xlx_apatb_param_weights_2_0_0
for (size_t i = 0; i < __xlx_size_param_weights_2_0_0; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_2_0_0)[i] = __xlx_weights_2_0_0__tmp_vec[__xlx_offset_param_weights_2_0_0+i];
}
// print __xlx_apatb_param_weights_2_0_1
for (size_t i = 0; i < __xlx_size_param_weights_2_0_1; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_2_0_1)[i] = __xlx_weights_2_0_1__tmp_vec[__xlx_offset_param_weights_2_0_1+i];
}
// print __xlx_apatb_param_weights_2_0_2
for (size_t i = 0; i < __xlx_size_param_weights_2_0_2; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_2_0_2)[i] = __xlx_weights_2_0_2__tmp_vec[__xlx_offset_param_weights_2_0_2+i];
}
// print __xlx_apatb_param_weights_2_1_0
for (size_t i = 0; i < __xlx_size_param_weights_2_1_0; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_2_1_0)[i] = __xlx_weights_2_1_0__tmp_vec[__xlx_offset_param_weights_2_1_0+i];
}
// print __xlx_apatb_param_weights_2_1_1
for (size_t i = 0; i < __xlx_size_param_weights_2_1_1; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_2_1_1)[i] = __xlx_weights_2_1_1__tmp_vec[__xlx_offset_param_weights_2_1_1+i];
}
// print __xlx_apatb_param_weights_2_1_2
for (size_t i = 0; i < __xlx_size_param_weights_2_1_2; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_2_1_2)[i] = __xlx_weights_2_1_2__tmp_vec[__xlx_offset_param_weights_2_1_2+i];
}
// print __xlx_apatb_param_weights_2_2_0
for (size_t i = 0; i < __xlx_size_param_weights_2_2_0; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_2_2_0)[i] = __xlx_weights_2_2_0__tmp_vec[__xlx_offset_param_weights_2_2_0+i];
}
// print __xlx_apatb_param_weights_2_2_1
for (size_t i = 0; i < __xlx_size_param_weights_2_2_1; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_2_2_1)[i] = __xlx_weights_2_2_1__tmp_vec[__xlx_offset_param_weights_2_2_1+i];
}
// print __xlx_apatb_param_weights_2_2_2
for (size_t i = 0; i < __xlx_size_param_weights_2_2_2; ++i) {
((Byte<2>*)__xlx_apatb_param_weights_2_2_2)[i] = __xlx_weights_2_2_2__tmp_vec[__xlx_offset_param_weights_2_2_2+i];
}
// print __xlx_apatb_param_bias
for (size_t i = 0; i < __xlx_size_param_bias; ++i) {
((Byte<2>*)__xlx_apatb_param_bias)[i] = __xlx_bias__tmp_vec[__xlx_offset_param_bias+i];
}
}
