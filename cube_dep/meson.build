c1 = run_command('cubeparse.rb', 'headers')
cube_inc = c1.stdout().strip().split('\n')
c2 = run_command('cubeparse.rb', 'sources')
cube_src = c2.stdout().strip().split('\n')

cube_linker_flags = '-T' + meson.source_root() / meson.get_external_property('linker_script')
cube_startup_file = meson.source_root() / meson.get_external_property('startup_file')
cube_dep = declare_dependency(include_directories: cube_inc, 
                              sources: [cube_src,
                                        cube_startup_file],
                              link_args: cube_linker_flags)