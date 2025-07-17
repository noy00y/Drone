# 2025-07-12T16:03:38.172252700
import vitis

client = vitis.create_client()
client.set_workspace(path="Drone")

comp = client.get_component(name="hls_component")
comp.run(operation="SYNTHESIS")

vitis.dispose()

