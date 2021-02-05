#!/usr/bin/python3
"""
returns the number of subscribers
"""
import requests
import sys

def number_of_subscribers(subreddit):

    if r.status_code == 404:
        return 0
    url = 'https://www.reddit.com/r/{}/about.json'
                     headers={'User-Agent': 'Python/requests:APIproject:\
    sab = r.get("data", {}).get("subscribers", 0)
    return sab
