Return-Path: <blinux-list+bncBCNLZ3P6ZIDRBK5D4W5QMGQEHV3KYSQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com [209.85.166.70])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B8EA0157B
	for <lists+blinux-list@lfdr.de>; Sat,  4 Jan 2025 16:20:13 +0100 (CET)
Received: by mail-io1-f70.google.com with SMTP id ca18e2360f4ac-844d54c3e62sf2126014739f.2
        for <lists+blinux-list@lfdr.de>; Sat, 04 Jan 2025 07:20:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736004012; cv=pass;
        d=google.com; s=arc-20240605;
        b=SNF6+aIQ9ZbYQFfcg6mTq3soFvNuSBBbKJycXN2pvRYyx700bqYvKgfJvmqmKxphip
         yOtkw5/ZG6oilGl9thH8yRuinuQtqi6dO9NXoTL5ggDjs5V8Z/D3/nhVZ2bKSphGVbr3
         MQUTC8sqyERZ1X6icz2I6blqC1b7W/TpvNlzVOUfpZllFIhmyHZrTgFQcJ8n++cJNVi2
         Xcauku/35uHDUZoHjAOJNAHJMKUADGpW8Sn1ovPN+/4qV1xLj5DSo31naw2FkCRT6v6g
         cxVJCthfUd+xbDaPkkqYd9dufY3MPui3grfwfq+yLsZepwQWL+NWVb5eKwCVlqeClVk1
         T+eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:delivered-to;
        bh=j+j6RUmaxhnnpLRVI9IRVNxcPz5s+1qFR5gPzy1s7cM=;
        fh=wOfuLPh/eojCwGEZZ5bT/V6VpXhWcd9Uz3U2hsKgjdY=;
        b=au6rTS05sFNwjD4JxY21S8EumvPnmGVfEazOVKBt8/ys0HvhqKBRj2rJ/0nFp/bmyv
         vEkUvvuEoRbOyvYp3NzfZG6jHzlu53j8vwhG5R7BDbpiqaS2W/G1nAVAg5O1wKGRYv2s
         Ql8UHvsagO/mAn9ceWl4x/U9ohoNSIe3BoooXVNNuEBbb8YGDrAha8ib5YrlQnhaySoO
         HNE+90rimEK9ApikABH4id/dc1viXjhsPAZ4Q5bB+RbYDqbl0026cBTtQvloxq8tCsUw
         9R4KDvnvF8ksAQwBTcAZsSVs8NuYWmymMjfXHtDmpau/lQvcOevy+Q3WbpB0b0483y1m
         IWFQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.219.175 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736004012; x=1736608812;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j+j6RUmaxhnnpLRVI9IRVNxcPz5s+1qFR5gPzy1s7cM=;
        b=Q2rDIeBY9qw7VFMyQQ3tCVEXfYgIaCB1EFx96HDYm7ISD3Qt/Dxpb+DVQhgqHQkqzd
         RR1rpgSYiYX16X4B5K8QZw1P1XhtGkJymkG+uFtQP3Qw1w9l6QUbBWhZNYDdw9073ZUw
         iRcY3gz+0Qhjf+MPGbkstMwnOZOdqOG/gwOegARh6sVo53Y8dukXNQr/Kg54uAqEEUyb
         bnYOsLfjKSvGpjBHScG4GjKG+GMnhAlswuB9sAEoBxbOVUrT/iR1Kg5tMwzvGEEINa0o
         Onz8trfmufdHVtdvA7n4bC/7x4xx/RcU6rz+IrpwgPFVl2Mc2QgkOS2NgmAHgDfooOuW
         QwOA==
X-Forwarded-Encrypted: i=2; AJvYcCXgGfPR9wbDFjY2/ZXyZet4oV1gZSuvTg3gMEQt9q19vqq8vRA2hBvSVvUD561BkUxj5LR2yA==@lfdr.de
X-Gm-Message-State: AOJu0Yz/fTCx87GsmK4mldaUWCABVbny+0cssRZdfYG6zTm8RNGPPIWK
	gSZzSy72to+2A+5XQRc6Y7zqFbR5zxtPPOxcplL4qneQNhACoGZVIcWsMNlLF3o=
X-Google-Smtp-Source: AGHT+IEs0LHj8Hh1s2p4X9eU6pO3ulhv+ZeMjeRyaeK4YB3tes1opX2TZIpE9jWK264DeWJmusc22Q==
X-Received: by 2002:a92:cda6:0:b0:3a7:8720:9ea4 with SMTP id e9e14a558f8ab-3c2d1aa33f3mr442370615ab.5.1736004012074;
        Sat, 04 Jan 2025 07:20:12 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6e02:3dc1:b0:3cd:583a:b120 with SMTP id
 e9e14a558f8ab-3cd583ab4aels21134475ab.2.-pod-prod-01-us; Sat, 04 Jan 2025
 07:20:10 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV8xSegufCsrTQcFAGIir29sngrBr3e55bmGwztOZ5G9OdinQdDJwmUTmVhV1uXLXP559C/JH0tV+rGaw==@gapps.redhat.com
X-Received: by 2002:a05:6602:4086:b0:849:c82e:c039 with SMTP id ca18e2360f4ac-849c82ec0cbmr4708139339f.6.1736004010710;
        Sat, 04 Jan 2025 07:20:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736004010; cv=none;
        d=google.com; s=arc-20240605;
        b=es99B1A0qxqn0VNa43SEFxZJPT7jZMcmFXDCm+Vsido2WrZ4SoaL2uvRoWOCUvBDl1
         6cwf7hDLUoZXBLXfAyqXT/VKZQRxLyjh/h1A4DeDQCXvBiLhoL0KApA9LuZv1bIYOZsp
         6hHXPe/T+7XshtqxjaaSsSnINY6ac1udPaQJlxDNLm5NpYOOXNULMRpgzFO4dw9QQruk
         YfZ17coUf7eA7mW4AQFw//TOqGiil66EreBBIW98t7YNsNE4xaWCJlQbVLfZQRY1sOwG
         UJtDV34hmO1unlUHqXbpd9SCa9DJxkOjBoXnt/XMRWMVpOib1SvUkvEE2px6RVEE5nCZ
         hSTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :delivered-to;
        bh=W6d9cPE9nF83iAGRoIURHVjGtKmxy0P1U1bQDiwxT+g=;
        fh=YNEPnuIcoM5xcnymKB6piL8VZaqHvgjCyOsZhb52DSE=;
        b=R1HesQM0kTiblBrLc0lUWclqqSxU9Fes0q8m97HXhp57lAH1DLaQKPKnPnmKdvF4Ng
         wQpCXECWSn7hnnudDHu647w1mAahBpK7D1e+Xp6arrGf1LLM86TVqLPvjwSe7siWprWb
         3pjgpRy1knXIeeBmTntVEmvmC7nNZFXvloNfmij3kYovY30OPPUVBu4K2vKr9qvFuY0Z
         yD/bduW+KQfILUOYE/yLIfuXYemTZZXTUoGXApgbzW/Y18Ii+DJ7W2qktfZoNC/OZmOh
         eRM9FFstCmJm+alhD52cKMoEfCmADXJJqvlAIpihoNpjf+S218Mmj3ZI6wKKGs+pptn1
         wn6Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.219.175 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id ca18e2360f4ac-8498d802b45si1446981739f.44.2025.01.04.07.20.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Jan 2025 07:20:10 -0800 (PST)
Received-SPF: pass (google.com: domain of khalfang1366@gmail.com designates 209.85.219.175 as permitted sender) client-ip=209.85.219.175;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-177-FGkccQSQOH2K2Q6C7_AEdA-1; Sat,
 04 Jan 2025 10:20:08 -0500
X-MC-Unique: FGkccQSQOH2K2Q6C7_AEdA-1
X-Mimecast-MFC-AGG-ID: FGkccQSQOH2K2Q6C7_AEdA
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1977219560B1
	for <blinux-list@gapps.redhat.com>; Sat,  4 Jan 2025 15:20:08 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 139AD1955F43; Sat,  4 Jan 2025 15:20:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 10C4A1956056
	for <blinux-list@redhat.com>; Sat,  4 Jan 2025 15:20:07 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7FB6119560B1
	for <blinux-list@redhat.com>; Sat,  4 Jan 2025 15:20:07 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com
 [209.85.219.175]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-618-rtWmkXEkNuCLYI4c19ZkEg-1; Sat, 04 Jan 2025 10:20:04 -0500
X-MC-Unique: rtWmkXEkNuCLYI4c19ZkEg-1
X-Mimecast-MFC-AGG-ID: rtWmkXEkNuCLYI4c19ZkEg
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e53537d8feeso16666386276.0
        for <blinux-list@redhat.com>; Sat, 04 Jan 2025 07:20:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVN4ySiDmrc+PyIyyS7XSjm3t8ohLYy1edB7Pw2QgHtm7DGHIfUs4Bh3muLPlOHW/sPGjz6F1QVt3X12g==@redhat.com
X-Gm-Gg: ASbGncsprIG5VVAFpDdWhNafp5km7koqZl99xY04CHAzBmGyhKnlRfbOqAkXLcRp2jo
	F3XHdr+p/1BrsKt7a2Ko96ASp/DXq0M651jmJLw==
X-Received: by 2002:a05:690c:f84:b0:6ef:4ed2:7df4 with SMTP id
 00721157ae682-6f3f821a9cemr367782977b3.33.1736004002590; Sat, 04 Jan 2025
 07:20:02 -0800 (PST)
MIME-Version: 1.0
References: <7C381AEC-6E41-40CE-B939-087D307EC20B@gmail.com>
 <CAC9uDhYm8i9jbDOGFgviCWbVB+ovZuiPTK9eDTjVUFHKYy3+jQ@mail.gmail.com>
 <28A3646F-4398-4016-A6D2-1D8C7C589129@gmail.com> <CAC9uDhbebJpEcHigN3cTT5ESKaGmOLArYoAx3ihovKO+kyU58w@mail.gmail.com>
 <FF812D55-46D2-4D85-922F-3A5449DA9E89@gmail.com> <CAC9uDhagY=TbOfWmzQR=s3Fn9wvWTYn-w-QfU5HzGTbgqrLm4w@mail.gmail.com>
 <12B91EBD-C1A4-4C87-812B-9859DB7351CF@gmail.com> <CAC9uDhb_FgawxLmca10XD-WesPvNYK7CL_33S=bKCzCFX40wQA@mail.gmail.com>
 <2A5C3156-3A6D-477E-8DD5-32F09CAE62A6@gmail.com>
In-Reply-To: <2A5C3156-3A6D-477E-8DD5-32F09CAE62A6@gmail.com>
From: jace Kattalakis <khalfang1366@gmail.com>
Date: Sat, 4 Jan 2025 15:19:51 +0000
Message-ID: <CAC9uDhYrQeMQ8B0UvrXL8YP-Q5W77c8fa1FaMvEObGyKWUw5uA@mail.gmail.com>
Subject: Re: k d e desktops and accessibility
To: Daniel Crone <dcrone215@gmail.com>, 
	Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: fWf_zssOF1PPqWTgQ0m7geQd5S-M1KZIbUfXtim5178_1736004004
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: HXmYHeluRKWvQ5i0HEC6xoFbVw4fZ9yX5s7Y1RyuCu8_1736004008
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="000000000000e73a89062ae2ed0f"
X-Original-Sender: KhalFang1366@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of khalfang1366@gmail.com designates 209.85.219.175 as permitted
 sender) smtp.mailfrom=khalfang1366@gmail.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

--000000000000e73a89062ae2ed0f
Content-Type: text/plain; charset="UTF-8"

For guides, I tend to just go by a distro's wiki, Arch, NixOS, I'm not sure
if Ubuntu and their various flavors have an official wiki, or if fedora or
anything does though, but that's where I tend to start looking, and Stack
Overflow can have some good resources too at times. You need to just know
what to look for and in time, you'll figure out what guides are good or not

Curious if anyone's used the Budgie desktop recently, and how accessible it
is? I did try it a while ago and it wsn't that bad, it was kind of middle
of the road however, and has it improved at all? I know they were going to
shift it over to QT and be a Plasma-lite thing if I remember it right
however


On Sat, 4 Jan 2025 at 13:28, Daniel Crone <dcrone215@gmail.com> wrote:

> Thanks.  In a guide I read, why might spaces have been in what I ought to
> type if one typing should not use them?
>
> On Jan 4, 2025, at 05:12, jace Kattalakis <khalfang1366@gmail.com> wrote:
>
> For that, Daniel, you just remove the spaces and it works, there are no
> spaces in the package name. It's just dashes between the words.
>
> Kyle,that's a fair point, and I'll just point out my point about sane
> defaults, and how some desktops are better than others at it though as well
>
> On Fri, 3 Jan 2025 at 20:22, Daniel Crone <dcrone215@gmail.com> wrote:
>
>> After typing
>> sudo apt install xfce4 - whiskermenu -plugin
>> I got the message that package could not be located, and plugin could not
>> be located.
>> What might account for this?
>>
>> On Jan 3, 2025, at 11:40, jace Kattalakis <khalfang1366@gmail.com> wrote:
>>
>> I'm using XFCE from NixOS, so I'm on version 4.20 right now and I've set
>> it up so I can hit the Windows key and get XFCE@s version of a start
>> menu, which they call the Whisker menu. Honestly, for slow, underpowered
>> and old machines, I'd say XFCE is a lot more intuitive to use if you are
>> coming from Windows or Mac. it's a lot easier to tell someone once you got
>> the Whisker menu set up, to hit the Windows key and start typing. FOr
>> context,t the Whisker menu is like the old Windows start menu. You got the
>> programs, then you can search and so on, and hit enter to launch stuff. FOr
>> instance, if I hit Windows, it brings up my favorites by default, so I can
>> just type in fire and it'll find Firefox, and I hit enter on that, or I can
>> type mouse and it'll launch he Mousepad text editor, and so on
>>
>> I'm on NixOS so my way of doing things is different to ,say, Ubuntu or
>> Arch or something though, and this is where Googling your distro and how to
>> do stuff is going to come in handy. I wouldn't recommend NixOS for absolute
>> beginners unless you get a pre made configuration. Instead I'd say stick
>> with your distro and get XFCE how you like and go from there. If you mess
>> up yes you can reinstall, and take notes. Take lots, and lots, of notesa
>>
>> On Fri, 3 Jan 2025 at 17:28, Daniel Crone <dcrone215@gmail.com> wrote:
>>
>>> I am in Tennessee.  Where are you?
>>>
>>> On Jan 3, 2025, at 11:16, jace Kattalakis <khalfang1366@gmail.com>
>>> wrote:
>>>
>>> For Discord, I use the website with Orca and it works well for me. I'll
>>> see how well Zoom works, and yes,but the majority of the Linux communities
>>> I'm in are on Discord though.
>>>
>>> I've not used Zoom since the pandemic actually, and forgot how well it
>>> works with Firefox, but yes, I'd be up for chatting and actually know quite
>>> a few blind Linux people who are far smarter than me about Linux-y things.
>>> I just use NixOS because it works for what I want, I can install, pull down
>>> my config and then just go from there and everything is in one file.
>>> Caveat: It's not the most beginner friendly distro though
>>>
>>> On Fri, 3 Jan 2025 at 17:00, Daniel Crone <dcrone215@gmail.com> wrote:
>>>
>>>> Hello, Daniel Crone writing to you.
>>>> I thank you for your writing about these matters.
>>>> I think it would be good to meet with anyone interested in linux with
>>>> zoom or by telephone, or how you like.
>>>> I had tried discord, but could not figure out how to work it.
>>>> Might you like to chat about linux with me or with anyone?
>>>>
>>>> > On Jan 3, 2025, at 09:27, jace Kattalakis <khalfang1366@gmail.com>
>>>> wrote:
>>>> >
>>>> > Alright here's my thoughts.
>>>> >
>>>> > KDE is good, but, I'm on an underpowered laptop right now so KDE
>>>> sadly isn't an option. They have come a long,long way from 5.2X to 6.2X and
>>>> have made strides. The big one is Konsole is not accessible, and there can
>>>> be too many settings. The other big one is, at least on both my systems,
>>>> KDE Plasma 6.2 has a noticeable lag. has anyone else noticed that, or is it
>>>> just my system being somewhat older?
>>>> >
>>>> > As for desktops I'm using? On my main desktop, KDE, even with the
>>>> lag.It's still good even if I have to use a different terminal
>>>> >
>>>> > On my underpowered laptop, XFCE is blazingly quick, and the thing I
>>>> like about it is, it doesn't use a ton of RAM like KDE or other desktops
>>>> can. I'm running a VM, I've got FF and Discord open and am sitting at 4.8
>>>> of 8 GB RAM used, so just about 5GB.If I had KDE going I'd run out of RAN
>>>> on my cheap laptop. XFCE has similarish Windows defaults. (as does KDE
>>>> Plasma with the exception of alt+Space for the app launcher, something I've
>>>> shamelessly stolen for my XFCE setup because I like alt space for my app
>>>> launchers tyvm.
>>>> >
>>>> > Caveat: I'm running NixOS so YMMV on this, but...here's my
>>>> experience. If you use other distros,your mileage will vary so...get the
>>>> grains of salt ready
>>>> >
>>>> > Mate: Feels clunky after using Plasma and XFCE and gnome. No, I can't
>>>> get the Brisk menu on NixOS, but when I tried it on Arch, it felt okay, not
>>>> amazing and felt slower than XFCE however and had a system tray Orca didn't
>>>> care to read.
>>>> >
>>>> > Gnome 47: It's good but tends to crash a lot on my system and if I'm
>>>> running wayland I need to log out and back in when that happens. Total KB
>>>> freeze and it's a 50/50 shot if hammering Esc wil bring the shell back, and
>>>> I've had Gnome-Terminal alt+f4 on me when Orca is running, and only when,
>>>> Orca is running.
>>>> >
>>>> > KDE Plasma: On Wayland, it works great, just a little laggy and some
>>>> A11Y issues. On X11, it dodsn't pick up my declared keyboard layout and
>>>> reverts to US English but that's likely a NixOS issue so YMMV on that.
>>>> Oddly the lag seemed to start with 6.2 however as far as Orca announcing
>>>> stuff so I'm not sure it's Orca 47.2, Plasma 6.2 or something else.
>>>> Konsole, the default terminal, is not accessible last I checked though, has
>>>> this changed at all? I was told Frameworks 5.9 did a bunch of A11y stuff
>>>> but I can't test that right now.
>>>> >
>>>> >
>>>> > XFCE: Current desktop on my underpowered laptop. It's horrific
>>>> looking, but blind people don't care about that. it's quick but modular but
>>>> has no accessible system tray, but needs you to set things up initially
>>>> (such as the Whisker menu), and needs some tweaks to be decent
>>>>
>>>>
>>>
>>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--000000000000e73a89062ae2ed0f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>For guides, I tend to just go by a distro&#39;s wiki,=
 Arch, NixOS, I&#39;m not sure if Ubuntu and their various flavors have an =
official wiki, or if fedora or anything does though, but that&#39;s where I=
 tend to start looking, and Stack Overflow can have some good resources too=
 at times. You need to just know what to look for and in time, you&#39;ll f=
igure out what guides are good or not<br><br></div>Curious if anyone&#39;s =
used the Budgie desktop recently, and how accessible it is? I did try it a =
while ago and it wsn&#39;t that bad, it was kind of middle of the road howe=
ver, and has it improved at all? I know they were going to shift it over to=
 QT and be a Plasma-lite thing if I remember it right however<br></div><div=
 dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Sat, 4 Jan 2025 at 13:28, Daniel Crone &lt;<a href=3D"m=
ailto:dcrone215@gmail.com" target=3D"_blank">dcrone215@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>Thanks=
.=C2=A0 In a guide I read, why might spaces have been in what I ought to ty=
pe if one typing should not use them?<br id=3D"m_2516317200008636402m_85155=
75942500718027lineBreakAtBeginningOfMessage"><div><br><blockquote type=3D"c=
ite"><div>On Jan 4, 2025, at 05:12, jace Kattalakis &lt;<a href=3D"mailto:k=
halfang1366@gmail.com" target=3D"_blank">khalfang1366@gmail.com</a>&gt; wro=
te:</div><br><div><div dir=3D"ltr"><div>For that, Daniel, you just remove t=
he spaces and it works, there are no spaces in the package name. It&#39;s j=
ust dashes between the words.<br><br></div>Kyle,that&#39;s a fair point, an=
d I&#39;ll just point out my point about sane defaults, and how some deskto=
ps are better than others at it though as well<br></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 3 Jan 2025 at 20:=
22, Daniel Crone &lt;<a href=3D"mailto:dcrone215@gmail.com" target=3D"_blan=
k">dcrone215@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div>After typing<div>sudo apt install xfce4 - whiske=
rmenu -plugin</div><div>I got the message that package could not be located=
, and plugin could not be located.</div><div>What might account for this?<b=
r id=3D"m_2516317200008636402m_8515575942500718027m_2114177480094120293m_-1=
662388187125742030lineBreakAtBeginningOfMessage"><div><br><blockquote type=
=3D"cite"><div>On Jan 3, 2025, at 11:40, jace Kattalakis &lt;<a href=3D"mai=
lto:khalfang1366@gmail.com" target=3D"_blank">khalfang1366@gmail.com</a>&gt=
; wrote:</div><br><div><div dir=3D"ltr">I&#39;m using XFCE from NixOS, so I=
&#39;m on version 4.20 right now and I&#39;ve set it up so I can hit the Wi=
ndows key and get XFCE@s version of a start menu, which they call the Whisk=
er menu. Honestly, for slow, underpowered and old machines, I&#39;d say XFC=
E is a lot more intuitive to use if you are coming from Windows or Mac. it&=
#39;s a lot easier to tell someone once you got the Whisker menu set up, to=
 hit the Windows key and start typing. FOr context,t the Whisker menu is li=
ke the old Windows start menu. You got the programs, then you can search an=
d so on, and hit enter to launch stuff. FOr instance, if I hit Windows, it =
brings up my favorites by default, so I can just type in fire and it&#39;ll=
 find Firefox, and I hit enter on that, or I can type mouse and it&#39;ll l=
aunch he Mousepad text editor, and so on<br><br>I&#39;m on NixOS so my way =
of doing things is different to ,say, Ubuntu or Arch or something though, a=
nd this is where Googling your distro and how to do stuff is going to come =
in handy. I wouldn&#39;t recommend NixOS for absolute beginners unless you =
get a pre made configuration. Instead I&#39;d say stick with your distro an=
d get XFCE how you like and go from there. If you mess up yes you can reins=
tall, and take notes. Take lots, and lots, of notesa<br></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 3 Jan 2025 =
at 17:28, Daniel Crone &lt;<a href=3D"mailto:dcrone215@gmail.com" target=3D=
"_blank">dcrone215@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div>I am in Tennessee.=C2=A0 Where are you?<br=
 id=3D"m_2516317200008636402m_8515575942500718027m_2114177480094120293m_-16=
62388187125742030m_-6946480201738105104lineBreakAtBeginningOfMessage"><div>=
<br><blockquote type=3D"cite"><div>On Jan 3, 2025, at 11:16, jace Kattalaki=
s &lt;<a href=3D"mailto:khalfang1366@gmail.com" target=3D"_blank">khalfang1=
366@gmail.com</a>&gt; wrote:</div><br><div><div dir=3D"ltr"><div>For Discor=
d, I use the website with Orca and it works well for me. I&#39;ll see how w=
ell Zoom works, and yes,but the majority of the Linux communities I&#39;m i=
n are on Discord though.<br><br></div>I&#39;ve not used Zoom since the pand=
emic actually, and forgot how well it works with Firefox, but yes, I&#39;d =
be up for chatting and actually know quite a few blind Linux people who are=
 far smarter than me about Linux-y things. I just use NixOS because it work=
s for what I want, I can install, pull down my config and then just go from=
 there and everything is in one file. Caveat: It&#39;s not the most beginne=
r friendly distro though<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, 3 Jan 2025 at 17:00, Daniel Crone &lt=
;<a href=3D"mailto:dcrone215@gmail.com" target=3D"_blank">dcrone215@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">Hello, Daniel Crone writing to you.<br>
I thank you for your writing about these matters.<br>
I think it would be good to meet with anyone interested in linux with zoom =
or by telephone, or how you like.<br>
I had tried discord, but could not figure out how to work it.<br>
Might you like to chat about linux with me or with anyone?<br>
<br>
&gt; On Jan 3, 2025, at 09:27, jace Kattalakis &lt;<a href=3D"mailto:khalfa=
ng1366@gmail.com" target=3D"_blank">khalfang1366@gmail.com</a>&gt; wrote:<b=
r>
&gt; <br>
&gt; Alright here&#39;s my thoughts.<br>
&gt; <br>
&gt; KDE is good, but, I&#39;m on an underpowered laptop right now so KDE s=
adly isn&#39;t an option. They have come a long,long way from 5.2X to 6.2X =
and have made strides. The big one is Konsole is not accessible, and there =
can be too many settings. The other big one is, at least on both my systems=
, KDE Plasma 6.2 has a noticeable lag. has anyone else noticed that, or is =
it just my system being somewhat older?<br>
&gt; <br>
&gt; As for desktops I&#39;m using? On my main desktop, KDE, even with the =
lag.It&#39;s still good even if I have to use a different terminal<br>
&gt; <br>
&gt; On my underpowered laptop, XFCE is blazingly quick, and the thing I li=
ke about it is, it doesn&#39;t use a ton of RAM like KDE or other desktops =
can. I&#39;m running a VM, I&#39;ve got FF and Discord open and am sitting =
at 4.8 of 8 GB RAM used, so just about 5GB.If I had KDE going I&#39;d run o=
ut of RAN on my cheap laptop. XFCE has similarish Windows defaults. (as doe=
s KDE Plasma with the exception of alt+Space for the app launcher, somethin=
g I&#39;ve shamelessly stolen for my XFCE setup because I like alt space fo=
r my app launchers tyvm.<br>
&gt; <br>
&gt; Caveat: I&#39;m running NixOS so YMMV on this, but...here&#39;s my exp=
erience. If you use other distros,your mileage will vary so...get the grain=
s of salt ready<br>
&gt; <br>
&gt; Mate: Feels clunky after using Plasma and XFCE and gnome. No, I can&#3=
9;t get the Brisk menu on NixOS, but when I tried it on Arch, it felt okay,=
 not amazing and felt slower than XFCE however and had a system tray Orca d=
idn&#39;t care to read.<br>
&gt; <br>
&gt; Gnome 47: It&#39;s good but tends to crash a lot on my system and if I=
&#39;m running wayland I need to log out and back in when that happens. Tot=
al KB freeze and it&#39;s a 50/50 shot if hammering Esc wil bring the shell=
 back, and I&#39;ve had Gnome-Terminal alt+f4 on me when Orca is running, a=
nd only when, Orca is running.<br>
&gt; <br>
&gt; KDE Plasma: On Wayland, it works great, just a little laggy and some A=
11Y issues. On X11, it dodsn&#39;t pick up my declared keyboard layout and =
reverts to US English but that&#39;s likely a NixOS issue so YMMV on that. =
Oddly the lag seemed to start with 6.2 however as far as Orca announcing st=
uff so I&#39;m not sure it&#39;s Orca 47.2, Plasma 6.2 or something else. K=
onsole, the default terminal, is not accessible last I checked though, has =
this changed at all? I was told Frameworks 5.9 did a bunch of A11y stuff bu=
t I can&#39;t test that right now.<br>
&gt; <br>
&gt; <br>
&gt; XFCE: Current desktop on my underpowered laptop. It&#39;s horrific loo=
king, but blind people don&#39;t care about that. it&#39;s quick but modula=
r but has no accessible system tray, but needs you to set things up initial=
ly (such as the Whisker menu), and needs some tweaks to be decent<br>
<br>
</blockquote></div>
</div></blockquote></div><br></div></blockquote></div>
</div></blockquote></div><br></div></div></blockquote></div>
</div></blockquote></div><br></div></blockquote></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--000000000000e73a89062ae2ed0f--

