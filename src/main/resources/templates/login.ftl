<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <b>
        <div class="mb-5">Login page</div>
    </b>
    <#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
        <div class="alert alert-primary" role="alert">
            ${SPRING_SECURITY_LAST_EXCEPTION.message}
        </div>
    </#if>
    <#if message??>
        <div class="alert alert-${messageType}" role="alert">
            ${message}
        </div>
    </#if>
    <@l.login "/login" false/>
</@c.page>
