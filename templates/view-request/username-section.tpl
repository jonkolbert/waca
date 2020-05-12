<h3>Username data for {$requestName|escape}:</h3>
{if $requestIsBlacklisted}
    {include file="alert.tpl" alertblock="1" alerttype="alert-danger" alertclosable="0" alertheader="Requested Username is Blacklisted"
    alertmessage="The requested username is currently blacklisted by the regular expression <code>{$requestBlacklist|escape}</code>."}
{/if}

<div class="linkWrapSection my-4">
    <a id="UsernameUserPage" class="btn btn-sm btn-outline-secondary" target="_blank"
       href="https://en.wikipedia.org/wiki/User:{$requestName|escape:'url'}"
       onMouseUp="$('#UsernameUserPage').addClass('btn-outline-visited');">
        User page
    </a>
    <a id="UsernameCreationLog" class="btn btn-sm btn-outline-secondary" target="_blank"
       href="https://en.wikipedia.org/w/index.php?title=Special:Log&amp;type=newusers&amp;user=&amp;page={$requestName|escape:'url'}"
       onMouseUp="$('#UsernameCreationLog').addClass('btn-outline-visited');">
        Creation log
    </a>
    <a id="UsernameSUL" class="btn btn-sm btn-outline-secondary" target="_blank"
       href="{$baseurl}/redir.php?tool=sulutil&amp;data={$requestName|escape:'url'}"
       onMouseUp="$('#UsernameSUL').addClass('btn-outline-visited');">
        SUL
    </a>
    <a id="UsernameCentralAuth" class="btn btn-sm btn-outline-secondary" target="_blank"
       href="https://en.wikipedia.org/wiki/Special:CentralAuth/{$requestName|escape:'url'}"
       onMouseUp="$('#UsernameCentralAuth').addClass('btn-outline-visited');">
        Special:CentralAuth
    </a>
    <a id="UsernameUsernameList" class="btn btn-sm btn-outline-secondary" target="_blank"
       href="https://en.wikipedia.org/w/index.php?title=Special%3AListUsers&amp;username={$requestName|escape:'url'}&amp;group=&amp;limit=1"
       onMouseUp="$('#UsernameUsernameList').addClass('btn-outline-visited');">
        Username list
    </a>
    <a id="UsernameMainspaceSearch" class="btn btn-sm btn-outline-secondary" target="_blank"
       href="https://en.wikipedia.org/w/index.php?title=Special%3ASearch&amp;profile=advanced&amp;search={$requestName|escape:'url'}&amp;fulltext=Search&amp;ns0=1&amp;redirs=1&amp;profile=advanced"
       onMouseUp="$('#UsernameMainspaceSearch').addClass('btn-outline-visited');">
        Wikipedia mainspace search
    </a>
    <a id="UsernameGoogleSearch" class="btn btn-sm btn-outline-secondary" target="_blank"
       href="{$baseurl}/redir.php?tool=google&amp;data={$requestName|escape:'url'}"
       onMouseUp="$('#UsernameGoogleSearch').addClass('btn-outline-visited');">
        Google search
    </a>
</div>

{include file="view-request/antispoof-results.tpl"}

<hr/>