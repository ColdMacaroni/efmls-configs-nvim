-- Metadata
-- languages: misc
-- url: https://github.com/codespell-project/codespell

local fs = require('efmls-configs.fs')

local linter = 'codespell'

local command = string.format('%s --disable-colors ${INPUT}', fs.executable(linter))

return {
  prefix = linter,
  lintSource = linter,
  lintCommand = command,
  lintIgnoreExitCode = true,
  lintStdin = false,
  lintFormats = { '%f:%l:%m' },
  -- Min severity should start from warning
  lintSeverity = 2,
}
