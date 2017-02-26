{extends file="pagebase.tpl"}
{block name="content"}
    <div class="page-header">
        <h1>Enable Multi-factor credentials</h1>
    </div>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span4 offset4 well">
                <form class="container-fluid" style="margin-top:20px;" method="post">
                    {include file="security/csrf.tpl"}
                    {include file="alert.tpl" alertblock="true" alerttype="alert-info" alertclosable=false alertheader="Re-generate scratch tokens" alertmessage="To regenerate your emergency scratch tokens, please prove you are who you say you are by providing the information below. Note that continuing will invalidate all remaining scratch tokens, and provide a set of new ones."}
                    <div class="row-fluid">
                        <input type="password" id="password" name="password" placeholder="Password" class="span12"
                               required tabindex="2">
                    </div>

                    <div class="row-fluid">
                        <button type="submit" class="btn btn-primary btn-block span12" tabindex="3">Regenerate Scratch
                            Tokens
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
{/block}