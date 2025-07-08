# 2025-07-05T16:56:17.544107800
import vitis

client = vitis.create_client()
client.set_workspace(path="Drone")

comp = client.get_component(name="hls_component")
comp.run(operation="SYNTHESIS")

vitis.dispose()

vitis.dispose()

