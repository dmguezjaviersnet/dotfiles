-- local session_name = require('tools')

local status_ok, feline = pcall(require, "feline")
if not status_ok then
	return
end

local function file_osinfo()
    local os = vim.bo.fileformat:upper()
    local icon
    if os == 'UNIX' then
        icon = ' '
    elseif os == 'MAC' then
        icon = ' '
    else
        icon = ' '
    end
    return icon
end

local tokyonight = {
	fg = "#AFAFD7",
	bg = "#262626",
	green = "#AFDF5F",
	dark_gray = "#262626",
	charcoal_gray = "#4E4E4E",
	yellow = "#D7AF5F",
	purple = "#AF87FF",
	orange = "#D7AF5F",
	peanut = "#f6d5a4",
	blue = "#86AFFF",
	red = "#e06c75",
	aqua = "#61afef",
	darkblue = "#282c34",
	dark_red = "#f75f5f",
	silver = "#D9D7D6"
}

local vi_mode_colors = {
	NORMAL = "blue",
	OP = "green",
	INSERT = "green",
	VISUAL = "purple",
	LINES = "purple",
	BLOCK = "purple",
	REPLACE = "red",
	COMMAND = "orange",
}

local seps = {
	left_spaced = " ",
	right_spaced = " ",
	right_filled_block = "█",
	right_filled_spaced = " ",
	left_filled_block = "█",
	block_spaced = "█ ",
	slant_left_spaced = " ",
	slant_right_upsdown = "█ ",
}

local c = {
	vim_mode = {
		provider = {
			name = "vi_mode",
			opts = {
				show_mode_name = true,
				-- padding = "center", -- Uncomment for extra padding.
			},
		},
		hl = function()
			return {
				fg = require("feline.providers.vi_mode").get_mode_color(),
				bg = "bg",
				style = "bold",
				name = "NeovimModeHLColor",
			}
		end,
		left_sep = {
			str = "block_spaced",
			hl = function()
				return {
					fg = require("feline.providers.vi_mode").get_mode_color(),
					name = "NeovimModeHLColor",
				}
			end,
		},
		right_sep = " ",
	},
	gitBranch = {
		provider = "git_branch",
		hl = function()
			return {
				fg = "peanut",
				bg = "bg",
				style = "bold",
				name = "NeovimModeHLColor",
			}
		end,
		left_sep = "block",
		right_sep = {
			str = "right_filled_spaced",
			hl = function()
				return {
					fg = "charcoal_gray",
					bg = "bg",
					style = "bold",
					name = "NeovimModeHLColor",
				}
			end,
		},
	},
	gitDiffAdded = {
		provider = "git_diff_added",
		hl = {
			fg = "green",
			bg = "bg",
		},
		left_sep = "",
		right_sep = "",
	},
	gitDiffRemoved = {
		provider = "git_diff_removed",
		hl = {
			fg = "red",
			bg = "bg",
		},
		left_sep = "",
		right_sep = "",
	},
	gitDiffChanged = {
		provider = "git_diff_changed",
		hl = {
			fg = "fg",
			bg = "bg",
		},
		left_sep = "",
		right_sep = "right_filled",
	},
	fileinfo = {
		provider = {
			name = "file_info",
			opts = {
				file_modified_icon = "",
				type = "base-only",
			},
		},
		hl = {
			bg = "charcoal_gray",
			fg = "fg",
			style = "bold",
		},

		left_sep = {
			str = "slant_left_spaced",
			hl = {
				fg = "charcoal_gray",
				bg = "bg",
				name = "NeovimModeHLColor",
			},
		},
		right_sep = {
			str = "slant_right_upsdown",
			hl = function()
				return {
					fg = "charcoal_gray",
					bg = "bg",
					name = "NeovimModeHLColor",
				}
			end,
		},
	},
	diagnostic_errors = {
		provider = "diagnostic_errors",
		hl = {
			fg = "red",
		},
	},
	diagnostic_warnings = {
		provider = "diagnostic_warnings",
		hl = {
			fg = "yellow",
		},
	},
	diagnostic_hints = {
		provider = "diagnostic_hints",
		hl = {
			fg = "aqua",
		},
	},
	diagnostic_info = {
		provider = "diagnostic_info",
	},
	lsp_client_names = {
		provider = "lsp_client_names",
		hl = {
			fg = "silver",
			bg = "charcoal_gray",
			style = "bold",
		},
		left_sep = {
			str = "left_filled_block",
			hl = function()
				return {
					fg = "charcoal_gray",
					bg = "bg",
					name = "NeovimModeHLColor",
				}
			end,
		},
		right_sep = {
			str = "right_filled_block",
			hl = function()
				return {
					fg = "charcoal_gray",
					bg = "bg",
					name = "NeovimModeHLColor",
				}
			end,
		},
	},
	file_type = {
		provider = {
			name = "file_type",
			opts = {
				case = "titlecase",
			},
		},
		hl = {
			fg = "fg",
			bg = "bg",
			style = "bold",
		},
		left_sep = {
			str = seps.left_spaced,
			hl = {
				fg = "fg"
			}
		},
		right_sep = "block",
	},
	file_encoding = {
		provider = "file_encoding",
		hl = {
			fg = "fg",
			bg = "bg",
			style = "italic"
		},

		left_sep = {
			str = seps.left_spaced,
			hl = {
				fg = "fg"
			}
		},
		right_sep = "block",
	},
	file_format = {
		provider = file_osinfo,
		hl = function()
			return {
				fg = require("feline.providers.vi_mode").get_mode_color(),
				bg = "bg",
				name = "NeovimModeHLColor",
			}
		end,
		left_sep = {
			str = seps.left_spaced,
			hl = {
				fg = "fg"
			}
		},
		right_sep = "",
	},
	position = {
		provider = "position",
		hl = function()
			return {
				fg = "dark_gray",
				bg = require("feline.providers.vi_mode").get_mode_color(),
				style = "bold",
				name = "NeovimModeHLColor",
			}
		end,
		left_sep = {
			str = seps.left_filled_block,
			hl = function()
				return {
					fg = require("feline.providers.vi_mode").get_mode_color(),
					bg = "charcoal_gray",
					name = "NeovimModeHLColor",
				}
			end,
		},
		right_sep = "block",
	},
	line_percentage = {
		provider = "line_percentage",
		hl = function()
			return {
				fg = require("feline.providers.vi_mode").get_mode_color(),
				bg ="charcoal_gray",
				style = "bold",
				name = "NeovimModeHLColor",
			}
		end,
		left_sep = {
			str = seps.left_filled_block,
			hl = {
				fg = "charcoal_gray"
			}
		},
		right_sep = "block",
	},
	-- scroll_bar = {
	-- 	provider = "scroll_bar",
	-- 	hl = {
	-- 		fg = "yellow",
	-- 		style = "bold",
	-- 	},
	-- },
}

local left = {
	c.vim_mode,
	c.fileinfo,
	c.gitBranch,
	c.gitDiffAdded,
	c.gitDiffRemoved,
	c.gitDiffChanged,
}

local middle = {
	-- c.lsp_client_names,
	c.diagnostic_errors,
	c.diagnostic_warnings,
	c.diagnostic_info,
	c.diagnostic_hints,
}

local right = {
	c.file_type,
	c.file_encoding,
	c.file_format,
	c.line_percentage,
	c.position,
}

local components = {
	active = {
		left,
		middle,
		right,
	},
	inactive = {
		left,
		middle,
		right,
	},
}

feline.setup({
	components = components,
	theme = tokyonight,
	vi_mode_colors = vi_mode_colors,
	separators = seps
})
