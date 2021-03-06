{extends file="base.tpl"}
{block name="content"}
    <div class="row">
        <div class="col-12">
            <h1>Oops...</h1>
            <p>Something went wrong with your last action.</p>
            {include file="alert.tpl" alertblock=true alertclosable=false alerttype="alert-danger"
            alertheader="" alertmessage=$message }
            <p>Please use your browser's back button to go back to where you were and attempt to fix the error.</p>
        </div>
    </div>
{/block}
