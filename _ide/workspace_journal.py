# 2025-07-04T15:05:54.207118200
import vitis

client = vitis.create_client()
client.set_workspace(path="Drone")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="SYNTHESIS")

