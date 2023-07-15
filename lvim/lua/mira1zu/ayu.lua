local colors = require("ayu.colors")

colors.generate(true) -- pass `true` to enable mirage

require("ayu").setup({
    mirage = true,
    overrides = {
        -- VertSplit = { bg = "None" },
    },
})
-- lua print(vim.inspect(require('ayu.colors'))) all colors
-- source $VIMRUNTIME/syntax/hitest.vim see all highlight groups
--
-- accent = "#FFCC66",                                                                                                                                                                                                                                           
-- bg = "#1F2430",                                                                                                                                                                                                                                               
-- black = "#000000",                                                                                                                                                                                                                                            
-- comment = "#5C6773",                                                                                                                                                                                                                                          
-- constant = "#D4BFFF",                                                                                                                                                                                                                                         
-- entity = "#73D0FF",                                                                                                                                                                                                                                           
-- error = "#FF3333",                                                                                                                                                                                                                                            
-- fg = "#CBCCC6",                                                                                                                                                                                                                                               
-- fg_idle = "#607080",                                                                                                                                                                                                                                          
-- func = "#FFD580",                                                                                                                                                                                                                                             
-- generate = <function 1>,                                                                                                                                                                                                                                      
-- guide_active = "#576070",                                                                                                                                                                                                                                     
-- guide_normal = "#383E4C",                                                                                                                                                                                                                                     
-- gutter_active = "#5F687A",                                                                                                                                                                                                                                    
-- gutter_normal = "#404755",                                                                                                                                                                                                                                    
-- keyword = "#FFA759",                                                                                                                                                                                                                                          
-- line = "#191E2A",                                                                                                                                                                                                                                             
-- lsp_parameter = "#D3B8F9",                                                                                                                                                                                                                                    
-- markup = "#F28779",                                                                                                                                                                                                                                           
-- operator = "#F29E74",                                                                                                                                                                                                                                         
-- panel_bg = "#232834",                                                                                                                                                                                                                                         
-- panel_border = "#101521",                                                                                                                                                                                                                                     
-- panel_shadow = "#141925",                                                                                                                                                                                                                                     
-- regexp = "#95E6CB",                                                                                                                                                                                                                                           
-- selection_bg = "#33415E",                                                                                                                                                                                                                                     
-- selection_border = "#232A4C",                                                                                                                                                                                                                                 
-- selection_inactive = "#323A4C",                                                                                                                                                                                                                               
-- special = "#FFE6B3",                                                                                                                                                                                                                                          
-- string = "#BAE67E",                                                                                                                                                                                                                                           
-- tag = "#5CCFE6",                                                                                                                                                                                                                                              
-- ui = "#707A8C",                                                                                                                                                                                                                                               
-- vcs_added = "#A6CC70",                                                                                                                                                                                                                                        
-- vcs_added_bg = "#313D37",                                                                                                                                                                                                                                     
-- vcs_modified = "#77A8D9",                                                                                                                                                                                                                                     
-- vcs_removed = "#F27983",                                                                                                                                                                                                                                      
-- vcs_removed_bg = "#3E373A",                                                                                                                                                                                                                                   
-- warning = "#FFA759",                                                                                                                                                                                                                                          
-- white = "#FFFFFF"                                                                                                                                                                                                                                             
