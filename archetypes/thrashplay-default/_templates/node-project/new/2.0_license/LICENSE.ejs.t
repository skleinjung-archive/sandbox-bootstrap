---
sh: "<% if (locals.license) { %>node <%= scriptsDir %>/fetch-license.js <%= locals.license %> > <%= projectDir %>/LICENSE <% } else { %>echo No license specified, skipping LICENSE generation.<% } %>"
---
