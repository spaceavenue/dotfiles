# --- Core Text & Environment ---
set -g fish_color_normal $palette_text # Base text color
set -g fish_color_cancel $palette_muted # Color for the ^C indicator

# --- Comments ---
set -g fish_color_comment $palette_haze --italics     # Muted purple-grey for comments

# --- Functions / Methods / Commands ---
set -g fish_color_command $palette_red # Core commands
set -g fish_color_keyword $palette_red # Shell keywords
set -g fish_color_quote $palette_mauve   # Strings and quoted arguments

# --- Arguments, Options, and Variables ---
set -g fish_color_param $palette_text   # Regular command parameters
set -g fish_color_option $palette_text  # Flags/options 
set -g fish_color_keyword $palette_red # Redundant definition safety fallback

# --- Variable Assignments ---
set -g fish_color_assignment $palette_green # Variable assignments
set -g fish_color_user $palette_green       # Usernames in standard contexts
set -g fish_color_host $palette_mauve       # Hostnames in standard contexts

# --- Punctuation, Delimiters, Operators ---
set -g fish_color_redirection $palette_blue # >, <, 2>&1, etc.
set -g fish_color_end $palette_blue         # Command separators
set -g fish_color_operator $palette_blue    # Parameter expansion/operators
set -g fish_color_escape $palette_mauve      # Escape characters

# --- Paths ---
set -g fish_color_valid_path $palette_text --underline # Valid system paths

# --- UI Feedback & In-line Selection ---
set -g fish_color_error $palette_muted                     # Unknown commands or syntax errors
set -g fish_color_autosuggestion $palette_haze            # Inline history autocomplete suggestions
set -g fish_color_selection --background=$palette_haze    # Selected text in the command line
set -g fish_color_search_match --background=$palette_haze # Matched text during history search

# --- Interactive Tab-Completion Menu  ---
set -g fish_pager_color_progress $palette_muted    # The bottom progress bar for long lists
set -g fish_pager_color_prefix $palette_blue      # The part of the string you already typed
set -g fish_pager_color_completion $palette_mauve  # The rest of the string suggested by Fish
set -g fish_pager_color_description $palette_muted # The command description text on the right

# --- Selected Completion Items ---
set -g fish_pager_color_selected_background --background=$palette_muted # Highlighted row
set -g fish_pager_color_selected_prefix $palette_base                  # Prefix color on the highlighted row
set -g fish_pager_color_selected_completion $palette_base              # Completion color on the highlighted row
set -g fish_pager_color_selected_description $palette_base             # Description color on the highlighted row

# --- Secondary/Alternating Completion Rows ---
set -g fish_pager_color_secondary_background normal
set -g fish_pager_color_prefix $palette_blue          # The part of the string you already typed
set -g fish_pager_color_completion $palette_mauve      # The rest of the string suggested by Fish
set -g fish_pager_color_description $palette_muted     # The command description text on the right
