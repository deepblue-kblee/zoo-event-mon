# zoo-event-mon
zookeeper event monitor

### interesting events
handling only 2 cases.

#### beacon-event
happens when the specified znode path data is changed.

#### value-changed-event
happens when the specified znode path data is changed with data value.

### configuration example
```
[beacon]
zoo-path=/zoo-root/test/trigger
script=/home/someone/scripts/foo.sh arg1 arg2
 
[value-changed]
zoo-path=/zoo-root/test/trigger
script=/home/someone/scripts/foo.sh arg1
```
