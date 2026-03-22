#define libfiledialogs_init
// move sdl3 to a common location so that it doesn't leave a copy behind every time you run the game
p = string_pos("\appdata\local\temp\gm_ttt_", string_lower(temp_directory));    
dir = string_copy(temp_directory, 1, p + 19) + "gm82 dll cache";
directory_create(dir);
file_delete(dir + "\SDL3.dll");
file_rename(temp_directory + "\gm82\SDL3.dll", dir + "\SDL3.dll");
// poke it so that libfiledialogs.dll can find it
// this is a valid function and will put sdl3 in the link list
// this means it can be anywhere and it'll be found for further function defs
external_define(dir + "\SDL3.dll", "SDL_GetError", dll_cdecl, ty_string, 0);
global.dll_ifd_load_fonts = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_load_fonts", 0, ty_real, 2, ty_string, ty_real);
global.dll_ifd_get_font_fnames = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_get_font_fnames", 0, ty_string, 0);
global.dll_ifd_get_font_size = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_get_font_size", 0, ty_real, 0);
global.dll_ifd_get_parent = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_get_parent", 0, ty_string, 0);
global.dll_ifd_set_parent = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_set_parent", 0, ty_real, 1, ty_string);
global.dll_ifd_get_showborder = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_get_showborder", 0, ty_real, 0);
global.dll_ifd_set_showborder = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_set_showborder", 0, ty_real, 1, ty_real);
global.dll_ifd_get_showinput = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_get_showinput", 0, ty_real, 0);
global.dll_ifd_set_showinput = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_set_showinput", 0, ty_real, 1, ty_real);
global.dll_ifd_get_caption = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_get_caption", 0, ty_string, 0);
global.dll_ifd_set_caption = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_set_caption", 0, ty_real, 1, ty_string);
global.dll_ifd_get_width = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_get_width", 0, ty_real, 0);
global.dll_ifd_set_width = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_set_width", 0, ty_real, 1, ty_real);
global.dll_ifd_get_height = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_get_height", 0, ty_real, 0);
global.dll_ifd_set_height = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_set_height", 0, ty_real, 1, ty_real)
global.dll_ifd_get_fullscreen = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_get_fullscreen", 0, ty_real, 0);
global.dll_ifd_set_fullscreen = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_set_fullscreen", 0, ty_real, 1, ty_real);
global.dll_ifd_get_embedded = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_get_embedded", 0, ty_real, 0);
global.dll_ifd_set_embedded = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_set_embedded", 0, ty_real, 1, ty_real);
global.dll_ifd_get_cancelable = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_get_cancelable", 0, ty_real, 0);
global.dll_ifd_set_cancelable = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_set_cancelable", 0, ty_real, 1, ty_real);
global.dll_ifd_get_theme = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_get_theme", 0, ty_string, 0);
global.dll_ifd_set_theme = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_set_theme", 0, ty_real, 1, ty_string);
global.dll_ifd_easy_theming_text_color = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_easy_theming_text_color", 0, ty_real, 3, ty_real, ty_real, ty_real);
global.dll_ifd_easy_theming_head_color = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_easy_theming_head_color", 0, ty_real, 3, ty_real, ty_real, ty_real);
global.dll_ifd_easy_theming_area_color = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_easy_theming_area_color", 0, ty_real, 3, ty_real, ty_real, ty_real);
global.dll_ifd_easy_theming_body_color = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_easy_theming_body_color", 0, ty_real, 3, ty_real, ty_real, ty_real);
global.dll_ifd_easy_theming_pops_color = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_easy_theming_pops_color", 0, ty_real, 3, ty_real, ty_real, ty_real);
global.dll_show_message = external_define(temp_directory + "\gm82\libfiledialogs.dll", "show_message", 0, ty_real, 1, ty_string);
global.dll_show_question = external_define(temp_directory + "\gm82\libfiledialogs.dll", "show_question", 0, ty_real, 1, ty_string);
global.dll_show_message_ext = external_define(temp_directory + "\gm82\libfiledialogs.dll", "show_message_ext", 0, ty_real, 4, ty_string, ty_string, ty_string, ty_string);
global.dll_get_string = external_define(temp_directory + "\gm82\libfiledialogs.dll", "get_string", 0, ty_string, 2, ty_string, ty_string);
global.dll_get_integer = external_define(temp_directory + "\gm82\libfiledialogs.dll", "get_integer", 0, ty_real, 2, ty_string, ty_real);
global.dll_get_open_filename = external_define(temp_directory + "\gm82\libfiledialogs.dll", "get_open_filename", 0, ty_string, 2, ty_string, ty_string);
global.dll_get_open_filename_ext = external_define(temp_directory + "\gm82\libfiledialogs.dll", "get_open_filename_ext", 0, ty_string, 4, ty_string, ty_string, ty_string, ty_string);
global.dll_get_open_filenames = external_define(temp_directory + "\gm82\libfiledialogs.dll", "get_open_filenames", 0, ty_string, 2, ty_string, ty_string);
global.dll_get_open_filenames_ext = external_define(temp_directory + "\gm82\libfiledialogs.dll", "get_open_filenames_ext", 0, ty_string, 4, ty_string, ty_string, ty_string, ty_string);
global.dll_get_save_filename = external_define(temp_directory + "\gm82\libfiledialogs.dll", "get_save_filename", 0, ty_string, 2, ty_string, ty_string);
global.dll_get_save_filename_ext = external_define(temp_directory + "\gm82\libfiledialogs.dll", "get_save_filename_ext", 0, ty_string, 4, ty_string, ty_string, ty_string, ty_string);
global.dll_get_directory = external_define(temp_directory + "\gm82\libfiledialogs.dll", "get_directory", 0, ty_string, 1, ty_string);
global.dll_get_directory_alt = external_define(temp_directory + "\gm82\libfiledialogs.dll", "get_directory_alt", 0, ty_string, 2, ty_string, ty_string);
global.dll_ifd_localization_quick_access = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_quick_access", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_this_pc = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_this_pc", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_all_files = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_all_files", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_name = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_name", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_date_modified = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_date_modified", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_size = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_size", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_new_file = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_new_file", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_new_directory = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_new_directory", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_delete = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_delete", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_are_you_sure = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_are_you_sure", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_overwrite_file = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_overwrite_file", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_enter_file_name = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_enter_file_name", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_enter_directory_name = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_enter_directory_name", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_are_you_sure_you_want_to_delete = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_are_you_sure_you_want_to_delete", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_are_you_sure_you_want_to_overwrite = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_are_you_sure_you_want_to_overwrite", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_yes = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_yes", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_no = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_no", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_ok = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_ok", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_cancel = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_cancel", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_search = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_search", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_file_name_with_colon = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_file_name_with_colon", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_file_name_without_colon = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_file_name_without_colon", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_directory_name_with_colon = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_directory_name_with_colon", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_directory_name_without_colon = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_directory_name_without_colon", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_save = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_save", 0, ty_real, 1, ty_string);
global.dll_ifd_localization_open = external_define(temp_directory + "\gm82\libfiledialogs.dll", "ifd_localization_open", 0, ty_real, 1, ty_string);
external_call(global.dll_ifd_load_fonts, "C:\Windows\Fonts\segoeui.ttf" + chr(10) + "C:\Windows\Fonts\msyh.ttc", 20);
external_call(global.dll_ifd_set_parent, string(window_handle()));

#define ifd_load_fonts
return external_call(global.dll_ifd_load_fonts, string(argument0), real(argument1));

#define ifd_get_font_fnames
return external_call(global.dll_ifd_get_font_fnames);

#define ifd_get_font_size
return external_call(global.dll_ifd_get_font_size);

#define ifd_get_showborder
return external_call(global.dll_ifd_get_showborder);

#define ifd_set_showborder
return external_call(global.dll_ifd_set_showborder, real(argument0));

#define ifd_get_showinput
return external_call(global.dll_ifd_get_showinput);

#define ifd_set_showinput
return external_call(global.dll_ifd_set_showinput, real(argument0));

#define ifd_get_caption
return external_call(global.dll_ifd_get_caption);

#define ifd_set_caption
return external_call(global.dll_ifd_set_caption, string(argument0));

#define ifd_get_width
return external_call(global.dll_ifd_get_width);

#define ifd_set_width
return external_call(global.dll_ifd_set_width, real(argument0));

#define ifd_get_height
return external_call(global.dll_ifd_get_height);

#define ifd_set_height
return external_call(global.dll_ifd_set_height, real(argument0));

#define ifd_get_fullscreen
return external_call(global.dll_ifd_get_fullscreen, real(argument0));

#define ifd_set_fullscreen
return external_call(global.dll_ifd_set_fullscreen, real(argument0));

#define ifd_get_embedded
return external_call(global.dll_ifd_get_embedded, real(argument0));

#define ifd_set_embedded
return external_call(global.dll_ifd_set_embedded, real(argument0));

#define ifd_get_cancelable
return external_call(global.dll_ifd_get_cancelable, real(argument0));

#define ifd_set_cancelable
return external_call(global.dll_ifd_set_cancelable, real(argument0));

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

#define ifd_localization_quick_access
return external_call(global.dll_ifd_localization_quick_access, string(argument0));

#define ifd_localization_this_pc
return external_call(global.dll_ifd_localization_this_pc, string(argument0));

#define ifd_localization_all_files
return external_call(global.dll_ifd_localization_all_files, string(argument0));

#define ifd_localization_name
return external_call(global.dll_ifd_localization_name, string(argument0));

#define ifd_localization_date_modified
return external_call(global.dll_ifd_localization_date_modified, string(argument0));

#define ifd_localization_size
return external_call(global.dll_ifd_localization_size, string(argument0));

#define ifd_localization_new_file
return external_call(global.dll_ifd_localization_new_file, string(argument0));

#define ifd_localization_new_directory
return external_call(global.dll_ifd_localization_new_directory, string(argument0));

#define ifd_localization_delete
return external_call(global.dll_ifd_localization_delete, string(argument0));

#define ifd_localization_are_you_sure
return external_call(global.dll_ifd_localization_are_you_sure, string(argument0));

#define ifd_localization_overwrite_file
return external_call(global.dll_ifd_localization_overwrite_file, string(argument0));

#define ifd_localization_enter_file_name
return external_call(global.dll_ifd_localization_enter_file_name, string(argument0));

#define ifd_localization_enter_directory_name
return external_call(global.dll_ifd_localization_enter_directory_name, string(argument0));

#define ifd_localization_are_you_sure_you_want_to_delete
return external_call(global.dll_ifd_localization_are_you_sure_you_want_to_delete, string(argument0));

#define ifd_localization_are_you_sure_you_want_to_overwrite
return external_call(global.dll_ifd_localization_are_you_sure_you_want_to_overwrite, string(argument0));

#define ifd_localization_yes
return external_call(global.dll_ifd_localization_yes, string(argument0));

#define ifd_localization_no
return external_call(global.dll_ifd_localization_no, string(argument0));

#define ifd_localization_ok
return external_call(global.dll_ifd_localization_ok, string(argument0));

#define ifd_localization_cancel
return external_call(global.dll_ifd_localization_cancel, string(argument0));

#define ifd_localization_search
return external_call(global.dll_ifd_localization_search, string(argument0));

#define ifd_localization_file_name_with_colon
return external_call(global.dll_ifd_localization_file_name_with_colon, string(argument0));

#define ifd_localization_file_name_without_colon
return external_call(global.dll_ifd_localization_file_name_without_colon, string(argument0));

#define ifd_localization_directory_name_with_colon
return external_call(global.dll_ifd_localization_directory_name_with_colon, string(argument0));

#define ifd_localization_directory_name_without_colon
return external_call(global.dll_ifd_localization_directory_name_without_colon, string(argument0));

#define ifd_localization_save
return external_call(global.dll_ifd_localization_save, string(argument0));

#define ifd_localization_open
return external_call(global.dll_ifd_localization_open, string(argument0));
