project('stm', 'c', 'cpp',
    version : '0.1',
    default_options : ['warning_level=3', 'cpp_std=c++17'])

subdir('cube_dep')

elf = executable('stm.elf',
                  dependencies: cube_dep,
                  install : false)

hex = custom_target('stm.hex',
                     depends : elf,
                     input : elf,
                     output : 'stm.hex',
                     command : find_program('objcopy'),
                     build_by_default : true)

run_target('flash', depends: hex,
                    command: [find_program('flash.sh', dirs: meson.source_root() / 'scripts'),
                              hex.full_path()])
