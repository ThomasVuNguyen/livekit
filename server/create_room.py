from livekit import api
import asyncio

async def main():
    lkapi = api.LiveKitAPI(
        'http://localhost:7880',
    )
    room_info = await lkapi.room.create_room(
        api.CreateRoomRequest(name="my-room"),
    )
    print(room_info)
    results = await lkapi.room.list_rooms(api.ListRoomsRequest())
    print(results)
    await lkapi.aclose()

asyncio.get_event_loop().run_until_complete(main())