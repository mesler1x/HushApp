<div class="card-columns">
    <#list messages as message>
        <div class="card my-3" >
            <#if message.filename??>
                <img class="card-img-top" src="/img/${message.filename}">
            </#if>
            <div class="my-2">
                <span>${message.text}</span>
                <i>${message.tag}</i>
            </div>
            <div class="card-footer text-muted">
                ${message.authorName}
            </div>
        </div>
    <#else>
        No message
    </#list>
</div>