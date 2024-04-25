-- quitar espacios
vim.cmd([[autocmd BufWritePre * :%s/\s\+$//e]])

-- runner
function Build()
	-- execute cpp
	if vim.bo.filetype == "cpp" then
		if vim.fn.isdirectory("build") == 0 then
			vim.cmd("terminal meson setup build && cd build && ninja && ./exe")
		else
			vim.cmd("terminal meson compile -C build && ./build/exe")
		end
	end

	-- execute java
	if vim.bo.filetype == "java" then
		vim.cmd("terminal gradle run")
	end

	-- execute python
	if vim.bo.filetype == "python" then
		vim.cmd("terminal python %")
	end

	-- execute rust
	if vim.bo.filetype == "rust" then
		vim.cmd("terminal cargo run")
	end
end

-- actualizar el pom.xml
vim.cmd([[
function! SaveAndRunMaven()
    write
    if expand('%:t') ==# 'pom.xml'
        silent !mvn clean install -U &
        echom 'Actualizando pom.xml'
    endif
endfunction

" Función para verificar si el archivo es un pom.xml
function! SaveAndRunMavenIfPom()
    " Verifica si el archivo actual es un pom.xml
    if expand('%:t') ==# 'pom.xml'
        " Llama a la función SaveAndRunMaven
        call SaveAndRunMaven()
    else
        " Guarda el archivo sin ejecutar el comando Maven
        write
    endif
endfunction

" Mapeo de teclas para C-s
nnoremap <C-s> :call SaveAndRunMavenIfPom()<CR>
inoremap <C-s> <Esc>:call SaveAndRunMavenIfPom()<CR>i
]])
