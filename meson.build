project('discoled', 'c', 'cpp',
    version : '0.1',
    default_options : ['warning_level=3', 'cpp_std=c++17'])

subdir('cube_dep')

elf = executable('stm.elf',
                  dependencies: cube_dep,
                  install : false)

bin = custom_target('stm.bin',
                     depends : elf,
                     input : elf,
                     output : 'stm.bin',
                     command : find_program('objcopy'),
                     build_by_default : true)

run_target('flash', depends: bin,
                    command: ['scripts/flash.sh',
                               bin.full_path()])
