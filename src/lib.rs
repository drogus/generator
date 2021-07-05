#[macro_use]
extern crate rutie;

use rutie::{Module, Object, RString, VM, Array, Fixnum, AnyObject};

use std::time::{Duration, Instant};
use rand::{thread_rng, Rng};
use rand::distributions::Alphanumeric;

module!(RustGenerator);

methods!(
    RustGenerator,
    _itself,
    fn generate(count: Fixnum) -> AnyObject {
        let count = count.map_err(|e| VM::raise_ex(e)).unwrap().to_i64() as usize;
        let mut strings = Vec::new();
        let mut i = 0usize;
        while i < count {
            let rand_string: String = thread_rng()
                .sample_iter(&Alphanumeric)
                .take(255)
                .map(char::from)
                .collect();

            strings.push(rand_string);
            i+=1;
        }

        let start = Instant::now();
        let mut array = Array::new();
        let mut i = 0;
        while i < count {
            let obj: AnyObject = RString::new_utf8(&strings[i]).into();
            array.push(obj);
            i+=1;
        }

        println!("rust: {}ms", start.elapsed().as_millis());
        array.into()
    }
);

#[allow(non_snake_case)]
#[no_mangle]
pub extern "C" fn Init_rust_generator() {
    Module::from_existing("RustGenerator").define(|itself| {
        itself.def_self("generate", generate);
    });
}

