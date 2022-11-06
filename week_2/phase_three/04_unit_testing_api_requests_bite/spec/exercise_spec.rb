require 'net/http'
require_relative "../lib/exercise"

describe TimeError do
  it "returns time difference" do
    fake_requester = double :requester
    fake_time = double :time_now
    expect(fake_requester).to receive(:get).with(
      URI("https://worldtimeapi.org/api/ip")
    ).and_return('{"abbreviation":"BST","client_ip":"86.15.194.174","datetime":"2022-09-22T17:48:0+01:00","day_of_week":4,"day_of_year":265,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1663864930,"utc_datetime":"2022-09-22T17:48:01+00:00","utc_offset":"+01:00","week_number":38}')
    time_now = Time.new(2022, 9, 22, 17, 48, 0)
    time_error = TimeError.new(fake_requester)
    expect(time_error.error(time_now)).to eq (3601.0)
  end  
end

#Net::HTTP

#time_now = 2022-09-22 17:48:30.573620029 +0100

#{"abbreviation":"BST","client_ip":"86.15.194.174","datetime":"2022-09-22T17:42:10.399901+01:00","day_of_week":4,"day_of_year":265,"dst":true,"dst_from":"2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":"2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1663864930,"utc_datetime":"2022-09-22T16:42:10.399901+00:00","utc_offset":"+01:00","week_number":38}