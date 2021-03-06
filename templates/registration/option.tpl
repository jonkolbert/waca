{extends file="pagebase.tpl"}
{block name="content"}
    <div class="row">
        <div class="col-md-12">
            <h1>Register for tool access</h1>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-12">
            <div class="alert alert-block alert-info">
                <h3>Signing up for Wikipedia?</h3>
                <p class="lead">You're not in the right place! Sorry about that.</p>
                <p>Click the button directly below to go to the right place.</p>
                <p><a class="btn btn-primary btn-large" href="{$baseurl}/index.php">Register for Wikipedia</a></p>
            </div>

            <div class="alert alert-block alert-success">
                <h3>Standard tool user</h3>
                <p>
                    Standard tool access allows you to process all account requests, but requires a lot of experience on
                    Wikipedia, along with making your identity known to the Wikimedia Foundation. Please make sure you refer to
                    the Guide to understand the full requirements.
                </p>
                {if $allowRegistration}
                    <p><a class="btn btn-large btn-success" href="{$baseurl}/internal.php/register/standard">Register for tool access</a></p>
                {else}
                    <p>Registration for this tool is currently disabled. Please check back later.</p>
                {/if}
            </div>
        </div>
    </div>
{/block}
