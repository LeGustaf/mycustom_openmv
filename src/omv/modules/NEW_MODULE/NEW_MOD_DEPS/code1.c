// Include MicroPython API.
#include "py/runtime.h"
#include "newmodule.h"
// This is the function which will be called from Python as cexample.add_ints(a, b).
STATIC mp_obj_t example_add_ints1(mp_obj_t a_obj, mp_obj_t b_obj) {
    // Extract the ints from the micropython input objects.
    int a = mp_obj_get_int(a_obj);
    int b = mp_obj_get_int(b_obj);

    // Calculate the addition and convert to MicroPython object.
    return mp_obj_new_int(a + b);
}

