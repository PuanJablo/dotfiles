lua << EOF
package.loaded['themes.cyberpunk'] = nil
package.loaded("themes.cyberpunk.highlights") = nil
package.loaded("themes.cyberpunk.integrations.treesitter") = nil
package.loaded("themes.cyberpunk.integrations.markdown") = nil
package.loaded("themes.cyberpunk.integrations.which_key") = nil
package.loaded("themes.cyberpunk.integrations.git") = nil
package.loaded("themes.cyberpunk.integrations.lsp") = nil
package.loaded("themes.cyberpunk.integrations.quickscope") = nil
package.loaded("themes.cyberpunk.integrations.telescope") = nil
package.loaded("themes.cyberpunk.integrations.n_tree") = nil
package.loaded("themes.cyberpunk.integrations.lir") = nil
package.loaded("themes.cyberpunk.integrations.buffer") = nil
package.loaded("themes.cyberpunk.integrations.status_line") = nil
package.loaded("themes.cyberpunk.integrations.indent_blankline") = nil
package.loaded("themes.cyberpunk.integrations.dashboard") = nil
package.loaded("themes.cyberpunk.integrations.diff_view") = nil
package.loaded("themes.cyberpunk.integrations.bqf") = nil
package.loaded("themes.cyberpunk.integrations.cmp") = nil
package.loaded("themes.cyberpunk.integrations.symbol_outline") = nil
package.loaded("themes.cyberpunk.integrations.misc") = inl

require("themes.cyberpunk")

EOF