resource local_file resource_name {
    filename = "${path.cwd}/.name"

    content = module.dev_watson_studio.name
}
