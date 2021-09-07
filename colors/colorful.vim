lua << EOF
package.loaded['colorful'] = nil
package.loaded['colorful.util'] = nil
package.loaded['colorful.colors'] = nil
package.loaded['colorful.theme'] = nil

require('colorful').set()
EOF
