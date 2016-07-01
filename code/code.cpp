// Simple C++ syntax highlight code
#include <cmath>
#include <iostream>

namespace objektraum
{
  class square_klasse
  {
  public:
    explicit square_klasse(float value)
      : value_in(value)
    {
    }
    float squared_funktion() const
    {
      return value_in * value_in;
    }
  private:
    const float value_in;
  };
} // namespace objektraum

int calculate_funktion(int x_param, float y_param)
{
  int v_nice = static_cast<int>(exp(y_param));
  int v_out  = static_cast<int>(y_param);
  int v_top  = v_nice - (v_out + x_param);
  while (v_out < v_top) {
    v_out += 3;
  }
  objektraum::square_klasse v_objekt(v_out);
  return static_cast<int>(v_objekt.squared_funktion()) + v_nice + x_param;
}

static const int   bar_konst = 1;
static const float baz_konst = 3.7;

int main() {
  int result_var = calculate_funktion(bar_konst, baz_konst);
  std::cout << "The result is: " << result_var << std::endl;
  std::cout << "Are you sure " << result_var << " is the correct number?" << std::endl;

  return 0;
}
