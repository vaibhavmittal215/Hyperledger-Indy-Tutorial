import sys

from indy_node.utils.node_runner import run_node
from indy_common.config_util import getConfig

if __name__ == "__main__":
    if len(sys.argv) < 6:
        raise Exception("Provide name and two pairs of IP/port for running the node "
                        "and client stacks in form 'node_name node_ip node_port client_ip client_port'")

    config = getConfig()
    self_name = sys.argv[1]
    run_node(config, self_name, 
            node_ip=sys.argv[2], node_port=int(sys.argv[3]),
            client_ip=sys.argv[4], client_port=int(sys.argv[5]))