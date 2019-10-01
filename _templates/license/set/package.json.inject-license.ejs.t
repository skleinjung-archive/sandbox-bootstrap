---
inject: true
to: "<%= h.getProjectDir() %>/package.json"
before: dependencies
eof_last: "false"
---
<%_ if (locals.license) { %>  "license": "<%= license %>",<% } -%>