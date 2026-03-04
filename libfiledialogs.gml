#define libfiledialogs_init
file_copy(temp_directory + "\libfiledialogs\SDL3.dll", working_directory + "\SDL3.dll");
global.dll_ifd_load_fonts = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "ifd_load_fonts", 0, ty_real, 1, ty_string);
global.dll_ifd_get_parent = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "ifd_get_parent", 0, ty_string, 0);
global.dll_ifd_set_parent = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "ifd_set_parent", 0, ty_real, 1, ty_string);
global.dll_ifd_get_theme = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "ifd_get_theme", 0, ty_string, 0);
global.dll_ifd_set_theme = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "ifd_set_theme", 0, ty_real, 1, ty_string);
global.dll_ifd_easy_theming_text_color = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "ifd_easy_theming_text_color", 0, ty_real, 3, ty_real, ty_real, ty_real);
global.dll_ifd_easy_theming_head_color = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "ifd_easy_theming_head_color", 0, ty_real, 3, ty_real, ty_real, ty_real);
global.dll_ifd_easy_theming_area_color = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "ifd_easy_theming_area_color", 0, ty_real, 3, ty_real, ty_real, ty_real);
global.dll_ifd_easy_theming_body_color = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "ifd_easy_theming_body_color", 0, ty_real, 3, ty_real, ty_real, ty_real);
global.dll_ifd_easy_theming_pops_color = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "ifd_easy_theming_pops_color", 0, ty_real, 3, ty_real, ty_real, ty_real);
global.dll_show_message = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "show_message", 0, ty_real, 1, ty_string);
global.dll_show_question = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "show_question", 0, ty_real, 1, ty_string);
global.dll_show_message_ext = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "show_message_ext", 0, ty_real, 4, ty_string, ty_string, ty_string, ty_string);
global.dll_get_string = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "get_string", 0, ty_string, 2, ty_string, ty_string);
global.dll_get_integer = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "get_integer", 0, ty_real, 2, ty_string, ty_real);
global.dll_get_open_filename = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "get_open_filename", 0, ty_string, 2, ty_string, ty_string);
global.dll_get_open_filename_ext = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "get_open_filename_ext", 0, ty_string, 4, ty_string, ty_string, ty_string, ty_string);
global.dll_get_open_filenames = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "get_open_filenames", 0, ty_string, 2, ty_string, ty_string);
global.dll_get_open_filenames_ext = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "get_open_filenames_ext", 0, ty_string, 4, ty_string, ty_string, ty_string, ty_string);
global.dll_get_save_filename = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "get_save_filename", 0, ty_string, 2, ty_string, ty_string);
global.dll_get_save_filename_ext = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "get_save_filename_ext", 0, ty_string, 4, ty_string, ty_string, ty_string, ty_string);
global.dll_get_directory = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "get_directory", 0, ty_string, 1, ty_string);
global.dll_get_directory_alt = external_define(temp_directory + "\libfiledialogs\libfiledialogs.dll", "get_directory_alt", 0, ty_string, 2, ty_string, ty_string);
external_call(global.dll_ifd_load_fonts, "C:\Windows\Fonts\segoeui.ttf");
external_call(global.dll_ifd_set_parent, string(window_handle()));

#define ifd_get_theme
return external_call(global.dll_ifd_get_theme);

#define ifd_set_theme
return external_call(global.dll_ifd_set_theme, string(argument0));

#define ifd_easy_theming_text_color
return external_call(global.dll_ifd_easy_theming_text_color, real(argument0), real(argument1), real(argument2));

#define ifd_easy_theming_head_color
return external_call(global.dll_ifd_easy_theming_head_color, real(argument0), real(argument1), real(argument2));

#define ifd_easy_theming_area_color
return external_call(global.dll_ifd_easy_theming_area_color, real(argument0), real(argument1), real(argument2));

#define ifd_easy_theming_body_color
return external_call(global.dll_ifd_easy_theming_body_color, real(argument0), real(argument1), real(argument2));

#define ifd_easy_theming_pops_color
return external_call(global.dll_ifd_easy_theming_pops_color, real(argument0), real(argument1), real(argument2));

#define show_message
return external_call(global.dll_show_message, string(argument0));

#define show_question
return external_call(global.dll_show_question, string(argument0));

#define show_message_ext
return external_call(global.dll_show_message_ext, string(argument0), string(argument1), string(argument2), string(argument3));

#define get_string
return external_call(global.dll_get_string, string(argument0), string(argument1));

#define get_integer
return external_call(global.dll_get_integer, string(argument0), real(argument1));

#define get_open_filename
return external_call(global.dll_get_open_filename, string(argument0), string(argument1));

#define get_open_filename_ext
return external_call(global.dll_get_open_filename_ext, string(argument0), string(argument1), string(argument2), string(argument3));

#define get_open_filenames
return external_call(global.dll_get_open_filenames, string(argument0), string(argument1));

#define get_open_filenames_ext
return external_call(global.dll_get_open_filenames_ext, string(argument0), string(argument1), string(argument2), string(argument3));

#define get_save_filename
return external_call(global.dll_get_save_filename, string(argument0), string(argument1));

#define get_save_filename_ext
return external_call(global.dll_get_save_filename_ext, string(argument0), string(argument1), string(argument2), string(argument3));

#define get_directory
return external_call(global.dll_get_directory, string(argument0));

#define get_directory_alt
return external_call(global.dll_get_directory_alt, string(argument0), string(argument1));
