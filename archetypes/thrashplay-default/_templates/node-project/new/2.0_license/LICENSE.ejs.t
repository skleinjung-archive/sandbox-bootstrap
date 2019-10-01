---
sh: "<% if (locals.license) { %>node <%= h.getScriptsDir() %>/fetch-license.js <%= locals.license %> > <%= h.getProjectDir(name) %>/LICENSE <% } else { %>echo No license specified, skipping LICENSE generation.<% } %>"
---
