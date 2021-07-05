#include <time.h>
#include "ruby.h"

static char *rand_string(char *str, size_t size)
{
    const char charset[] = "abcdef0123456789";
    for (size_t n = 0; n < size; n++) {
        int key = rand() % (int) (sizeof charset - 1);
        str[n] = charset[key];
    }
    return str;
}

char* rand_string_alloc(size_t size)
{
     char *s = (char *)malloc(size);
     if (s) {
         rand_string(s, size);
     }
     return s;
}

static VALUE rb_generate(VALUE self, VALUE r_count)
{
    Check_Type(r_count, T_FIXNUM);
    int count = FIX2INT(r_count);
    char **strings_array = (char **)malloc(count * sizeof(char*));

    for (int i; i < count; i++) 
    {
        strings_array[i] = rand_string_alloc(255);
    }

    clock_t begin = clock();
    VALUE ary = rb_ary_new();
    for (int i; i < count; i++)
    {
        VALUE s = rb_str_new(strings_array[i], 255);
        rb_ary_push(ary, s);
    }

    clock_t end = clock();
    double time_spent = (double)(end - begin) / (CLOCKS_PER_SEC / 1000);
    printf("cpp: %dms", (int)time_spent);

    for (int i; i < count; i++)
    {
        free(strings_array[i]);
    }
    free(strings_array);

    return ary;
}

extern "C"
{

    void Init_generator(void)
    {
        VALUE rb_mGenerator = rb_const_get(rb_cObject, rb_intern("Generator"));
        VALUE rb_cGeneratorNative = rb_const_get(rb_mGenerator, rb_intern("Native"));

        rb_define_method(rb_cGeneratorNative, "_generate", reinterpret_cast<VALUE (*)(...)>(rb_generate), 1);
    }
}
