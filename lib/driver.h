// Library for the driver program.
#ifndef DRIVER_H
#define DRIVER_H

namespace dlib {
	/**
	 *  Constants.
	 */
	extern const char *LOAD;
	extern const char *RUN;
	extern const char *UNLOAD;

	/**
	 * Prompts.
	 */
	extern const char *ERR_PROMPT;


	/**
	 * Function Headers.
	 */
	void load_programs();
	void run_programs();
	void unload_programs();
} // namespace dlib.

#endif // DRIVER_H

