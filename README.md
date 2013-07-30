Description
=========================
 Main aim of this cookbook to handle any chef "features" workarounds which we can't add directly to any existent recipes.
 This version contain simple recipe only, but soon i'll add some cool libraries which you can call in any step of your current cookbooks.

Requirements
------------
At this moment doesn't have it. Or no. You need at least one. You need chef. :)

Attributes
----------
TODO: List you cookbook attributes here.

e.g.
#### chef-node-helper::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chef-node-helper']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----
#### chef-node-helper::common

Best option to add this recipe to existent role.

-or-

Just include `chef-node-helper` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[chef-node-helper::common]"
  ]
}
```

Contributing
------------
Feel free to contribute.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------

|                      |                                                    |
|:---------------------|:---------------------------------------------------|
| **Authors**          |  Alex Khalkuziev (<master.alff@gmail.com>)         |
|                      |                                                    |
| **Copyright**        |  Copyright (c) 2013, Mirantis, IT.                 |

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
