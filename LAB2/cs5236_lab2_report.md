# EL6463 Advanced Hardware Design

## Lab #2

Name: Chen Shen

netID: cs5236

----

## Block diagram

![block_diagram](image/block_diagram.png)

In the above shows the block diagrams of a down counter and an up counter.

Notice that this diagram only includes the IO of a counter. We can use D flip-flop or JK flip-flop to implement a counter in gate level.

## Functional and timing simulation

### Down Counter

![down_sim](image/down_sim.png)

### Up Counter

![up_sim](image/up_sim.png)

Notice that in my test bench, I have already initialized signal `reset` to `0`. Thus, I can set the signal `reset` to `1` at the very beginning.

From the figures above, we can see that the two counter keep counting up/down at each positive edge of clock signal `clk`. Each counter counts from one pre-set value to the other pre-set value (in this lab, from `52` to `36` or from `36` to `52`). Besides, when the signal `reset` is set to `0`, the output `counter` will be reset to the intial value (`52` or `36`).

## Resource utilization

Since the down counter shares a common basic architecture with the up counter, they have the same resource utilization.

|                              | Synthesis stage | Place and Route stage |
| :--------------------------- | :-------------- | :-------------------: |
| LUT and FF pairs usage       | 11              | 6                     |
| IOB usage                    | 8               | 8                     |
| RAM/DSP blocks used (if any) | 0               | 0                     |

## Speed of the design

### Down counter

| Setup                        |           | Hold                         |          | Pulse Width                              |          |
| :--------------------------- | :-------- | :--------------------------- | :------- | :--------------------------------------- | :------- |
| Worst Negative Slack (WNS):  | 19.018 ns | Worst Hold Slack (WHS):      | 0.187 ns | Worst Pulse Width Slack (WPWS):          | 9.650 ns |
| Total Negative Slack (TNS):  | 0.000 ns  | Total Hold Slack (THS):      | 0.000 ns | Total Pulse Width Negative Slack (TPWS): | 0.000 ns |
| Number of Falling Endpoints: | 0         | Number of Falling Endpoints: | 0        | Number of Falling Endpoints:             | 0        |
| Total Number of Endpoints    | 6         | Total Number of Endpoints    | 6        | Total Number of Endpoints                | 6        |

### Up counter

| Setup                        |           | Hold                         |          | Pulse Width                              |          |
| :--------------------------- | :-------- | :--------------------------- | :------- | :--------------------------------------- | :------- |
| Worst Negative Slack (WNS):  | 18.392 ns | Worst Hold Slack (WHS):      | 0.219 ns | Worst Pulse Width Slack (WPWS):          | 9.500 ns |
| Total Negative Slack (TNS):  | 0.000 ns  | Total Hold Slack (THS):      | 0.000 ns | Total Pulse Width Negative Slack (TPWS): | 0.000 ns |
| Number of Falling Endpoints: | 0         | Number of Falling Endpoints: | 0        | Number of Falling Endpoints:             | 0        |
| Total Number of Endpoints    | 6         | Total Number of Endpoints    | 6        | Total Number of Endpoints                | 6        |

## Demo video

<https://youtu.be/5N9O-4sxTKQ>