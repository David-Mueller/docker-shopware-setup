<h2>Subrequest</h2>

<table class="">
    <thead>
    <tr>
        <th scope="col" class="key">Url</th>
        <th scope="col">Controller</th>
        <th scope="col">Action</th>
        <th scope="col">Time</th>
        <th scope="col"></th>
    </tr>
    </thead>
    <tbody>
        {foreach from=$sDetail.subrequest key=key item=sSubrequest}
            <tr>
                <td>{$sSubrequest.request.url}</td>
                <td>{$sSubrequest.request.controllerName|ucfirst}</td>
                <td>{$sSubrequest.request.actionName|ucfirst}</td>
                <td>
                    <a href="{url controller=profiler action=detail id=$sId|cat:'|':$key}" class="btn">Open Subprofile</a>
                </td>
            </tr>
        {/foreach}
    </tbody>
</table>
