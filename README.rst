.. _nsenter_module:

Ansible nsenter plugin
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Run tasks in process namespace via nsenter

.. contents::
   :local:
   :depth: 1


Synopsis
--------
- Run commands or put/fetch files to an existing process namespace using nsenter on the Ansible controller.


Parameters
----------

.. raw:: html

    <table border=0 cellpadding=0 class="documentation-table">
        <tr>
            <th colspan="1">Parameter</th>
            <th>Choices/<font color="blue">Defaults</font></th>
            <th width="100%">Comments</th>
        </tr>
        <tr>
            <td colspan="1">
                <b>executable</b>
                <div style="font-size: small">
                    <span style="color: purple">-</span>
                </div>
            </td>
            <td>
                <b>Default:</b>
                <br/>
                <div style="color: blue">"/bin/sh"</div>
            </td>
            <td>
                <div>User specified executable shell</div>
            </td>
        </tr>
        <tr>
            <td colspan="1">
                <b>nsenter_gid</b>
                <div style="font-size: small">
                    <span style="color: purple">integer</span>
                </div>
            </td>
            <td>
            </td>
            <td>
                <div>Set the group ID which will be used in the entered namespace and drop supplementary groups.</div>
                <div>If no group ID is supplied, Ansible will let the nsenter binary choose the group ID as it normally</div>
            </td>
        </tr>
        <tr>
            <td colspan="1">
                <b>nsenter_ipc</b>
                <div style="font-size: small">
                    <span style="color: purple">boolean</span>
                </div>
            </td>
            <td>
                <b>Default:</b>
                <br/>
                <div style="color: blue">"yes"</div>
            </td>
            <td>
                <div>Enter the IPC namespace.</div>
            </td>
        </tr>
        <tr>
            <td colspan="1">
                <b>nsenter_mount</b>
                <div style="font-size: small">
                    <span style="color: purple">boolean</span>
                </div>
            </td>
            <td>
                <b>Default:</b>
                <br/>
                <div style="color: blue">"yes"</div>
            </td>
            <td>
                <div>Enter the mount namespace.</div>
            </td>
        </tr>
        <tr>
            <td colspan="1">
                <b>nsenter_net</b>
                <div style="font-size: small">
                    <span style="color: purple">boolean</span>
                </div>
            </td>
            <td>
                <b>Default:</b>
                <br/>
                <div style="color: blue">"yes"</div>
            </td>
            <td>
                <div>Enter the network namespace.</div>
            </td>
        </tr>
        <tr>
            <td colspan="1">
                <b>nsenter_pid</b>
                <div style="font-size: small">
                    <span style="color: purple">boolean</span>
                </div>
            </td>
            <td>
                <b>Default:</b>
                <br/>
                <div style="color: blue">"yes"</div>
            </td>
            <td>
                <div>Enter the PID namespace.</div>
            </td>
        </tr>
        <tr>
            <td colspan="1">
                <b>nsenter_uid</b>
                <div style="font-size: small">
                    <span style="color: purple">integer</span>
                </div>
            </td>
            <td>
            </td>
            <td>
                <div>Set the user ID which will be used in the entered namespace.</div>
                <div>If no user ID is supplied, Ansible will let the nsenter binary choose the user ID as it normally</div>
            </td>
        </tr>
        <tr>
            <td colspan="1">
                <b>nsenter_user</b>
                <div style="font-size: small">
                    <span style="color: purple">boolean</span>
                </div>
            </td>
            <td>
                <b>Default:</b>
                <br/>
                <div style="color: blue">"no"</div>
            </td>
            <td>
                <div>Enter the user namespace.</div>
            </td>
        </tr>
        <tr>
            <td colspan="1">
                <b>nsenter_utc</b>
                <div style="font-size: small">
                    <span style="color: purple">boolean</span>
                </div>
            </td>
            <td>
                <b>Default:</b>
                <br/>
                <div style="color: blue">"yes"</div>
            </td>
            <td>
                <div>Enter the UTC namespace.</div>
            </td>
        </tr>
        <tr>
            <td colspan="1">
                <b>remote_addr</b>
                <div style="font-size: small">
                    <span style="color: purple">integer</span>
                </div>
            </td>
            <td>
                <b>Default:</b>
                <br/>
                <div style="color: blue">1</div>
            </td>
            <td>
                <div>Target process id which namespaces you want to access</div>
            </td>
        </tr>
    </table>

Status
------

- This module is not guaranteed to have a backwards compatible interface.

- This module is maintained by kvaps <kvapss@gmail.com>

- This module is awaiting include to Ansible code base
  (https://github.com/ansible/ansible/pull/66551)

Authors
~~~~~~~

- kvaps <kvapss@gmail.com>
