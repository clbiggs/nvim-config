return {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    --- other configuration items ...
    opts = {
        provider = "openrouter_gemini_3_flash",
        providers = {
            biggs_openai = {
                __inherited_from = 'openai',
                endpoint = "https://api.openai.com/v1",
                model = "gpt-5", -- your desired model (or use gpt-4o, etc.)
                timeout = 30000, -- Timeout in milliseconds, increase this for reasoning models
                extra_request_body = {
                    temperature = 1,
                    max_completion_tokens = 8192, -- Increase this to include reasoning tokens (for reasoning models)
                    reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
                },
            },
            openrouter_gemini_3_flash = {
                __inherited_from = 'openai',
                endpoint = 'https://openrouter.ai/api/v1',
                api_key_name = 'OPENROUTER_API_KEY',
                model = 'google/gemini-3-flash-preview',
            },
            openrouter_gemini_3_flash_reasoning = {
                __inherited_from = 'openai',
                endpoint = 'https://openrouter.ai/api/v1',
                api_key_name = 'OPENROUTER_API_KEY',
                model = 'google/gemini-3-flash-preview',
                timeout = 60000,
                extra_request_body = {
                    resoning_effort = "medium",
                }
            },
            openrouter_opus_4_6 = {
                __inherited_from = 'openai',
                endpoint = 'https://openrouter.ai/api/v1',
                api_key_name = 'OPENROUTER_API_KEY',
                model = 'anthropic/claude-opus-4.6',
            },
            openrouter_opus_4_6_reasoning = {
                __inherited_from = 'openai',
                endpoint = 'https://openrouter.ai/api/v1',
                api_key_name = 'OPENROUTER_API_KEY',
                model = 'anthropic/claude-opus-4.6',
                timeout = 60000,
                extra_request_body = {
                    resoning_effort = "medium",
                }
            },
            openrouter_gpt_5_2_codex = {
                __inherited_from = 'openai',
                endpoint = 'https://openrouter.ai/api/v1',
                api_key_name = 'OPENROUTER_API_KEY',
                model = 'openai/gpt-5.2-codex',
            },
            openrouter_kimi_k2_5 = {
                __inherited_from = 'openai',
                endpoint = 'https://openrouter.ai/api/v1',
                api_key_name = 'OPENROUTER_API_KEY',
                model = 'moonshotai/kimi-k2.5',
            },
            openrouter_kimi_k2_5_reasoning = {
                __inherited_from = 'openai',
                endpoint = 'https://openrouter.ai/api/v1',
                api_key_name = 'OPENROUTER_API_KEY',
                model = 'moonshotai/kimi-k2.5',
                timeout = 60000,
                extra_request_body = {
                    resoning_effort = "medium",
                }
            },
            openrouter_glm_5 = {
                __inherited_from = 'openai',
                endpoint = 'https://openrouter.ai/api/v1',
                api_key_name = 'OPENROUTER_API_KEY',
                model = 'z-ai/glm-5',
            },
            openrouter_glm_5_reasoning = {
                __inherited_from = 'openai',
                endpoint = 'https://openrouter.ai/api/v1',
                api_key_name = 'OPENROUTER_API_KEY',
                model = 'z-ai/glm-5',
                timeout = 60000,
                extra_request_body = {
                    resoning_effort = "medium",
                }
            },
        },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "stevearc/dressing.nvim",
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        --- The below dependencies are optional,
        "echasnovski/mini.pick",     -- for file_selector provider mini.pick
        "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
        "hrsh7th/nvim-cmp",          -- autocompletion for avante commands and mentions
        "ibhagwan/fzf-lua",          -- for file_selector provider fzf
        "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
        "zbirenbaum/copilot.lua",    -- for providers='copilot'
        {
            -- support for image pasting
            "HakonHarnes/img-clip.nvim",
            event = "VeryLazy",
            opts = {
                -- recommended settings
                default = {
                    embed_image_as_base64 = false,
                    prompt_for_file_name = false,
                    drag_and_drop = {
                        insert_mode = true,
                    },
                    -- required for Windows users
                    use_absolute_path = true,
                },
            },
        },
        {
            -- Make sure to set this up properly if you have lazy=true
            'MeanderingProgrammer/render-markdown.nvim',
            opts = {
                file_types = { "markdown", "Avante" },
            },
            ft = { "markdown", "Avante" },
        },
    },
}

