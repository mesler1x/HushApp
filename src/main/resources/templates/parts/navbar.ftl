<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">HushApp</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/">Home</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="/main">Main Page</a>
            </li>
            <#if user??>
                <li class="nav-item active">
                    <a class="nav-link" href="/user-messages/${currentUserId}">My Messages</a>
                </li>
            </#if>
            <#if isAdmin>
                <li class="nav-item active">
                <a class="nav-link" href="/user">Users</a>
            </li>

            </#if>
            <#if user??>
                <li class="nav-item active">
                    <b>
                        <a class="nav-link" href="/user/profile">Profile Edit</a>
                    </b>
                </li>

            </#if>

        </ul>
        <div class="navbar-text mr-3">${name}</div>
        <@l.logout />
    </div>
</nav>