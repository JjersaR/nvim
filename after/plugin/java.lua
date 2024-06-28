local config = {
  cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls") },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw', 'gradle.build', 'pom.xml', 'meson.build' },
    { upward = true })[1]),
  java = {
    project = {
      referencedLibraries = {
        '/home/jersa/.config/lombok.jar'
      }
    }
  }
}
-- require('jdtls').start_or_attach(config)
