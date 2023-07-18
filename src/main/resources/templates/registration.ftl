<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <b>
        <div class="mb-5">Registration page</div>
    </b>
${message?ifExists}
<@l.login "/registration" true/>
</@c.page>
