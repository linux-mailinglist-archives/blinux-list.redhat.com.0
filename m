Return-Path: <blinux-list+bncBCV3N6GOXMCRBBFMYGWQMGQEA5NE2WA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8CE839D88
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jan 2024 01:12:54 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6800714a149sf85807296d6.0
        for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 16:12:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706055173; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZpDeMBYoGR7QPuDKEWQ6IeatGleVP9k9qYZvi10uKzjoXjpBntqDifNQfgUQ4Uuej0
         IQTc7vDpX+aMFd+V1pgYF9c5w/lXYpVQTQOf5OVzbdlX2GFtrfQwc8A4qFZYm5R1JuN6
         D+atoqnmhQtai30rSmv87dcCcIUHHO/poojR99ZexnXBlaf+Jw90T+XAXaiT6flhkFDZ
         0y+f9j7hg4I394uelY9Yr/PodOqK+TKh1QrgFsnRMPVfGqQYkWmu7YQvpMepFwOWHw4p
         JM2jw32WqwcP1X+1tXeStOVC/sKNCzOv8kFfVZe6o9Jm+w/B8gTx5ASGxIlz/sA1JX+j
         0/6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id:delivered-to;
        bh=srI4PBGffLoDtoVphDNPTtouIiHfAqZWT7Y9ZxDS5Kk=;
        fh=QOBj9Qi1gUpVnXFXcN8LLhufhUMGfkiVSKib0rucMxI=;
        b=Pj3YtUlQOwRnnNNaMn1gDiT28h7rwFrjL0nCjywck/wFXMzWkqvYkhUKEzo/AU/dQr
         P3IuZWbogZMS1V6pY8L4pj7PMq5fxYYKHB8XsirieJB0JPXfaJDxwsdmqw7n9LnZDN0B
         oRq7igHC3Q3MZRaWfFBryy8RaWFuZZAuyUBrFiPPvD7iQOXqBv12MK5U9VRc/J0mB6RB
         N0RumvaYcwZq1brC6nFkHqw6U4hDdGf9sjEmzdmAoV6KogqZfgkvKdy6lv5juBPDKl56
         tA6dGNWZKg+obmNox6uTQBHRXy3dtzIM+yU0REcyitEn4FYv1vxskdhyF5IC+zm16WAv
         DtzA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706055173; x=1706659973;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:cc
         :to:subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=srI4PBGffLoDtoVphDNPTtouIiHfAqZWT7Y9ZxDS5Kk=;
        b=oA5WQUOpN1nbUF7rgdyLX0REozJdfndfb5seX7ze5d+EFnpkb+7Gkg4MnNHwGQqa4k
         WU/Xi4785sWkdZTiK9FN28+3my2wsL9U3pWilb04JE/iIgv+G0XQPng/l78TUo2Z+cUf
         5u4KLIBmqcFaE8c4/k7EWhDTnG6wDzoDC8KTgF5CDVihYN2+vB3HaeNw4sU0zMitnapo
         BqCzQbKB+LfMuFzlJypGkMe5BeRHHzz9VQpPbPVhzliHcTBkzUC0JbWfZIiKYdhkjOzp
         2A0gPKpYLFhC9S5g0zo9rxUZWqiM/wMXdXfJfRAPvsQ+nepo27oVEHAs0U0wZGh6o1+O
         irAQ==
X-Gm-Message-State: AOJu0Yyq0JeK7wdbWn9MXUSH/XX1vAGEBMdkokVCzitgFrLLprH5yf8R
	+zqQ6K+4HPiItlSiPA/U4ywhNLy5k2QTQbiGlOKO5pKZgZwCoQtp/4J6LJSdGFM=
X-Google-Smtp-Source: AGHT+IHVk7Ya1casISm38IM77549Gbe0kpOWmBonLvuTdmIz4trloaCuye0kjPgTaSntDg1xtA32YQ==
X-Received: by 2002:a05:6214:234e:b0:686:9deb:8db5 with SMTP id hu14-20020a056214234e00b006869deb8db5mr2242673qvb.116.1706055173147;
        Tue, 23 Jan 2024 16:12:53 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:b3d2:0:b0:681:993a:b34 with SMTP id b18-20020a0cb3d2000000b00681993a0b34ls3362350qvf.0.-pod-prod-09-us;
 Tue, 23 Jan 2024 16:12:52 -0800 (PST)
X-Received: by 2002:a05:620a:909:b0:783:9000:a7b7 with SMTP id v9-20020a05620a090900b007839000a7b7mr6994374qkv.156.1706055172408;
        Tue, 23 Jan 2024 16:12:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706055172; cv=none;
        d=google.com; s=arc-20160816;
        b=tiBtBfmBaOuZ/RQ+l8Y6RYzljAS3woev/lQluMnZ7wseeSRpYIBv8CT+iFile2TGhr
         XPCSKODKN+HFHuK+uiiMT9VHvGS5gXaa38gtfbDRN8p9oQSRCJs6TGjQvdMBHgAsNJei
         SQL9OutlGKbE9iuwwzk889zVlayRPxpULz2k2+LkjksoNtWJWyObvCydBr6dTd1Xf3Wd
         GHAog4Z0o9+BeFR23xC09sz01j2csIt299GUm/Gy2YsezBVshxPXyD3CEbm8qc+QS7MU
         GtpgMdjNxTQgTgw1S5ZgyuVV9kED2FcS9ZbFpTbnvOOHGpmRJa+pfuFQPF9L9sJ4EMI5
         MO7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id:delivered-to;
        bh=ECReqIUf1Dbw5552hFiu9OcUSS6IXMRBUAosSveZZLA=;
        fh=QOBj9Qi1gUpVnXFXcN8LLhufhUMGfkiVSKib0rucMxI=;
        b=kF0YcntnmRLaXtrNztS4Zp747ICBMPj8BG5WHWqNT4jC5JN46jJ0EdXpmDdWomppRW
         VN/PTSmmVaBl6iEBGtLsyrtBgLe0nJhlx2WUwdMC8oRqlVAFkSNTZJoBhrC2j+4hzUgg
         ud3yz5u/zLXBdxN+iw0wyw2r22SrdN59WroK2rpYSxDLd0B3rjadsPf0w72JBgN8QqUE
         tVkdZW/mWaRND67GldHDqoi0v/ZBuFvflWPXPvyCzXyyubrrI3Qe8tz6Hzu6rL3PoRAA
         2zlcps1y4FBFFVFxLl5LakI4RYJXrjRIR66R1mHlY7hnynRAHf8IeccXxsKHRVlZJwJ5
         vdtw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id bn11-20020a05620a2acb00b0078347a0ebd2si8726209qkb.97.2024.01.23.16.12.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 16:12:52 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-499-0b6TcsxGOQWt77Xdq8D_GA-1; Tue,
 23 Jan 2024 19:12:50 -0500
X-MC-Unique: 0b6TcsxGOQWt77Xdq8D_GA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A1AAB3804509
	for <blinux-list@gapps.redhat.com>; Wed, 24 Jan 2024 00:12:50 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 9E7D7111E411; Wed, 24 Jan 2024 00:12:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97D55111E408
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 00:12:50 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 76BDC83106D
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 00:12:50 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-369-52sM9A4GOhexAbAqx1E3_Q-1; Tue,
 23 Jan 2024 19:12:48 -0500
X-MC-Unique: 52sM9A4GOhexAbAqx1E3_Q-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.20] ([136.54.145.217]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1Mlw3X-1qlQxG3Au3-00iybF; Wed, 24
 Jan 2024 01:07:38 +0100
Message-ID: <db5491a9-20ad-424b-8faa-7b5e69ca1a28@gmx.it>
Date: Tue, 23 Jan 2024 19:07:35 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Linux e-readers do they exist?
To: Karen Lewellen <klewellen@shellworld.net>,
 Nimer Jaber <nimerjaber1@gmail.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
 <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com>
 <Pine.LNX.4.64.2401231429500.336098@users.shellworld.net>
 <CAF2O2CxQbdG-ORf2weztvUF3LESbe=9cdVnXTuF4hrvaXFUQZA@mail.gmail.com>
 <Pine.LNX.4.64.2401231826010.338658@users.shellworld.net>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <Pine.LNX.4.64.2401231826010.338658@users.shellworld.net>
X-Provags-ID: V03:K1:W4kFkleKFZTHwVOCDOhorRSWKuMqbpGVt50SvQiKmAD6Gs+1k4S
 bwYLkxtfFfN493tKzmYpv9m0ArOjY4d+aMmPf1LN2li2Vzh+xGd10NoAaQnlpcanUExSrt8
 F3wOnTtfa/Tj2QCXlBWAHWt0BERIq6D45kXSr91zgv6ZEqkj2MnLTlv53zSt3iXBgFE5bRm
 HjjM9bPPmI/jmvqSHkOFw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:guQG57gTLwA=;pJKXhGTTHGwv15JknCQGNXexJBr
 AD70Q3qFfLdQiderEnSqKnZDRom12gjUXQ8kNi9OS68SnDDQxon94XrwxP6y5M1lyP3Jecmke
 V4RqHwiAws9yea4mZyK1Pprd06d8oFMjHO7VFKt7ahCIQTkf3fw1bMdDMCgpBw3x98ZoE+ZIp
 4bd+bC1nfKO9GNBUsHeR3UCKN4xF2pbeJS08LX0xiUqnL0g5stiP8Z4XH9AXawLk0kPLiOcg8
 7FgwKzhel9MOxviG536o9MN1/GMiHYT0LYfevLg33meA3WbliAdT0Zq8CeylbPIcawV1smCqk
 aihUnmRGrsV9MOWqEQegZqA6OxCPbfMJEE1JHGolajKCKJg7bL/D1aQqvUMRXUgsvVU280cpV
 pHzfBeJTNmtP7Lu4CKf1YdQYnW+FRZpp6Xa70Wht3KlFQaWcDtbBQ3PO6ZlrACp2amELkikCg
 XyifVRBtWswEQUgY5rWM8bfNLpndo9Q7fkqebUq8Q/8EKlg0os0dsZKjT0zTjBCMbc8WYFwa1
 33aZotsA7i5D7wvKNfLZFbL/gskBbnuUAXo1UQGSJcRR7QB+Qg2ggfKEnkFTckXdeifNqOpX4
 V7Wx+QvTiSwh4t5CFFl0Qo8L5syzqpKsOVrSMsZSgdLqI6szjcpOHYMRQhlvP74CgdhEQA4My
 cQTNLREh0z2qKYeGV17AT68PSVJiGR2UXyyMVLFMWc93viCDYzh5dlybrip37Noa7Da35Ee3V
 aXGaPqp5gtW3s5qQQ54DdsmfYh3bqV1w17WE2IGyhRj5IAznG3O9LOgH8MW44cY1tV+ePQePt
 oyP3N5ONK73WTjBIYh+3vtLsLkRRSIuhzg12FCOw1AT6NtlwtiDg/ef/gPsEGyhUfnBblfSaU
 T6MnsKhsNUSaB3aJ7T5xBrkLHZnSlbRLRBc0GYRns82nM5WOVsbdOJKvCmEZeJB3blMF1CHoK
 4ardag==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

The Raspberry Pi 400 I mention doesn't need to be hacked into anything.
The board is inside of a regular keyboard. It's not the full 101-key
keyboard like I use on most machines, but it has 78 keys and has an fn
key that when held down turns the right side of the keyboard into a
number pad. Yes, I do use an external battery pack that connects to the
power, but I carry the whole thing in a very small case that has a
pocket on the outside for the battery, the very small USB sound device
and a pair of small speakers or headphones. It is far less cumbersome to
carry around than a laptop, and is even smaller than a tablet. And just
to be clear, this is no "note taker" or e-reader, it is rather a fully
functional computer with a standard input interface that is easy for
anyone to use.


Stormux isn't a hack either. I use the MATE desktop on it, but you can
also use GNOME, a window manager like I3 or a regular shell if you like.
It's completely up to you, and the interface that makes all this work is
menu driven using arrow keys and the like. Yes, it does come up talking
so that anyone can use it without seeing it, and that makes it highly
configurable with little stress. It also took little time or effort to
get DECTalk speaking on this machine, though I believe it comes with
RHVoice out of the box, which some people feel sounds a little better,
especially at high speeds. I personally have come to love DECTalk over
the years though, and find that its rather newly available source code
and lack of licence file serial number stuff is a great thing whose time
should have come long ago, so I took the time to get it working, which
is actually a fairly simple and fast build process.


I hesitate slightly to say too much about this in public forums, but I
think charging a ridiculous price like $800 or more for something based
on a $75 Raspberry Pi that has a braille keyboard with only 7 keys on it
because it says "blind" on it is criminally insane, and I personally
won't even give such a device a second look. I nearly died of sticker
shock when I saw that price, especially since I made a Raspberry Pi 400
that is built into its own keyboard do more stuff than the base version
of that thing can do for less than a tenth of the price of the pro
version. I'm sure someone will pay that much for something like that,
but it most certainly would never be me, and I do know how to read and
write braille.

~Kyle

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

