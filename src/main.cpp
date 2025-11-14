// Executes programs from dlib.
#include "../lib/driver.h"

/**
 *  Executable Entry.
 */
int main(int argc, char** argv) {
	dlib::load_programs();
	dlib::run_programs();
	dlib::unload_programs();

	return 0;
}

