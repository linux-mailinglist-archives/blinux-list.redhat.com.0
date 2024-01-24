Return-Path: <blinux-list+bncBCVPTHE7K4IJJTGBVUDBUBCWSGX7Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB9B839E2D
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jan 2024 02:21:25 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-429a8494838sf56177061cf.0
        for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 17:21:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706059285; x=1706664085;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1/3Mnt9pYbQXyyce2n/Wh4vNCpdeWAIHPeyZriDpWGU=;
        b=OnEns6vrIuiRFfRMD62zi4/7mpxEhYpH/TVRTAVQKvwypliE4ow7xEX2J0LM7R9FUm
         fbFSrH/FicoVwryYnnPAhOrtgG9zylg5TAAgtFO6GtsTbF2oEiBcWzY5t5ohChB6qUGZ
         Xwxjzef5BO+kFuaiK7DIUn/pRDLEmLHqJuWkFDHX/yVICbKOQquOCjSBU8bvniY1lVoT
         do8cvBUrjAf2vgO8eeNtFJqju+Ko5dRlVhljLP8E40OgClh0TNuL7l6RgQI5msdoY3hk
         EM42l14K8OkRNKo7Tn1Lp/gtUo5BxKx+YMQSeG53m8XIEVvYm/QWUWaZLR9gFRNfKw3h
         zTZg==
X-Gm-Message-State: AOJu0Yy1RyDfBIrFefzvbJu835TpJngx32amh+pGQD4iRR/CCoACLj98
	3Uv5bszbFHqPPdAlVedVrk2CSSt5v0/jwfiS2Ia2jbh33FvoUr3eh4ZRomnwcWI=
X-Google-Smtp-Source: AGHT+IFvQvQbF7oPRUZsyCNEkbBeDROd6Z+yq6iw8g2C5vtevOM9D+hXH7lOARl0BqINxl9VdAXCag==
X-Received: by 2002:a05:6214:e8c:b0:680:d265:6652 with SMTP id hf12-20020a0562140e8c00b00680d2656652mr1895648qvb.83.1706059284861;
        Tue, 23 Jan 2024 17:21:24 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:b3ce:0:b0:681:70c6:da2d with SMTP id b14-20020a0cb3ce000000b0068170c6da2dls2329039qvf.0.-pod-prod-08-us;
 Tue, 23 Jan 2024 17:21:24 -0800 (PST)
X-Received: by 2002:a0c:e14d:0:b0:686:5412:f6e with SMTP id c13-20020a0ce14d000000b0068654120f6emr1530235qvl.96.1706059284082;
        Tue, 23 Jan 2024 17:21:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706059284; cv=none;
        d=google.com; s=arc-20160816;
        b=M14BIp+hhjtK8q3FIrp3QKF2uDaT/Ube+ebgWMY75WOdV96wv1LqFCt4zNQBBFFkRc
         KBlnSbe8ZfvpVvwaSAhzBB3r6I1ZKpEum9ykMtXxu5Un15Lt/S7V2R7Vwbr2ts+Xxrv8
         aKutYS39q6chdo68oAaxy7tJX3ojP/9kTHAqI4afuSrcFt6swokzD1bpBQubYkyyoUyM
         gFpJxjRDTJB8D0Ugdv2DKLUtfTKxblU3YruX96oj3u2snZmo44D1jTt9H1lAlncUpCp/
         9Cq9g5s0aHKSadJf6rgpDOgKzYbdKr3e+ObuxIUOJyzHpMV+uFvpzjGBGG/VhHWaaZdY
         ZH1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=1/3Mnt9pYbQXyyce2n/Wh4vNCpdeWAIHPeyZriDpWGU=;
        fh=Z7cEUkx4kEbc8XULiG2w4dphWKeARu/AOPBpFDEz6/s=;
        b=QygVizt9fTpJYnBnDSW+UuScpHBnanz+nSKzjuYZODQcC7ltUQy3z2g9a3uOG2m03U
         9lG4x/w7jr5PmRu91XYcZ16S28fxEOQir87EOar7gJcs/496oBH4qs6SBMFAVeE8TIxn
         EcL8FQr5m3LVir0WbtoRMsdtiA0sohsrU8ZfXurEsBt7hW+XIKfydhQitA2S5LSk3h9i
         jP+bILqrICDEhVzRjfVPvVK3S3ckoHYmB0d+X0GL0xqgPPY6XIAO8nU4/CDriW3YkTXq
         nen3LPHq6QxGR7cEjIFLbzpXuZ7omur83q0FahhlN5r1M3FD9cuZqWDTWFBFPCXhBJiv
         oRyQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id y1-20020a0c9a81000000b0068059ec19b2si9128740qvd.73.2024.01.23.17.21.23
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 17:21:23 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-597-peIBnjhaM1SmnHtY67kuog-1; Tue, 23 Jan 2024 20:21:22 -0500
X-MC-Unique: peIBnjhaM1SmnHtY67kuog-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5F10C84AEA1
	for <blinux-list@gapps.redhat.com>; Wed, 24 Jan 2024 01:21:22 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 5C1CA927; Wed, 24 Jan 2024 01:21:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5506C3C2E
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 01:21:22 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3573510650E0
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 01:21:22 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-460-tIBhRinUORWALOT1gLQs6A-1; Tue,
 23 Jan 2024 20:21:20 -0500
X-MC-Unique: tIBhRinUORWALOT1gLQs6A-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id F32FE44FC6;
	Tue, 23 Jan 2024 20:21:19 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id B10021001DC; Tue, 23 Jan 2024 20:21:19 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id AF5D110008A;
	Tue, 23 Jan 2024 20:21:19 -0500 (EST)
Date: Tue, 23 Jan 2024 20:21:19 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Nimer Jaber <nimerjaber1@gmail.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Linux e-readers do they exist?
In-Reply-To: <CAF2O2Cw+6FZ-UyeB8BcfVr6Gyj30kdvXbsPJv1Hm9sBnYGYs=Q@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2401232018370.339927@users.shellworld.net>
References: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
 <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com>
 <Pine.LNX.4.64.2401231429500.336098@users.shellworld.net>
 <CAF2O2CxQbdG-ORf2weztvUF3LESbe=9cdVnXTuF4hrvaXFUQZA@mail.gmail.com>
 <Pine.LNX.4.64.2401231826010.338658@users.shellworld.net>
 <CAF2O2Cw+6FZ-UyeB8BcfVr6Gyj30kdvXbsPJv1Hm9sBnYGYs=Q@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-237894750-1706059279=:339927"
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--1949452079-237894750-1706059279=:339927
Content-Type: TEXT/PLAIN; charset=X-UNKNOWN; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

We are talking about the experience of blindness, not another disability.
braille is not used by 90% of those experiencing blindness.
Your suggestion would be solid, dectalk is referenced, but the input=20
method is one not used by 90% of those experiencing blindness.



On Tue, 23 Jan 2024, Nimer Jaber wrote:

> Hello Karen,
>
> I believe your synth can be installed on any machine, including a Pi,
> though only you will know whether a Pi will meet your physical needs.
>
> I don't pretend to keep up with what every disability any given person ha=
s
> before I respond to queries. If something will work for you, great, if it
> won't, well... this is not an inclusive world.
>
> I do actually find myself agreeing with your comments about Braille and
> Braille keyboards. I've been saying for a while now that the system that =
is
> so heavily promoted by Blindness entities has failed the majority of the
> population it is supposed to serve. There are many reasons for this, of
> course, not all those reasons are the fault of Braille. Nevertheless, it =
is
> difficult to make any headway on a literacy system for the Blind when the
> majority cannot make use of that system. Nevertheless, it is the best tha=
t
> exists today that doesn't rely on audio speech, so it is what it is. I
> think this about Braille, white canes, and so many solutions that many
> Blind people are stuck using because someone somewhere decided it was the
> best they could come up with, and nobody has come along and created bette=
r
> solutions that scale. That's my personal rant, for whatever it's worth,
> about how people who are blind, and indeed, many disabilities, have been
> and continue to be left behind in so many ways.
>
> I also would love to see some higher-quality keyboard options and choice =
of
> input methods, but I don't have millions in funding, a group of engineers=
,
> UX researchers, investors, etc., to make an ideal solution for people, an=
d
> the fact that it hasn't really been done well to this point tells me that
> the problem is a tough nut to crack. We are, after all, a minority, and
> achieving scale at a minority level in order to bring down costs and
> provide user choice is quite difficult when any investor wants to see a
> return on their investments and a profitable company.
>
> On Tue, Jan 23, 2024 at 3:32=E2=80=AFPM Karen Lewellen <klewellen@shellwo=
rld.net>
> wrote:
>
>> let me see if I follow.
>> A portable device that raves about working for the blind.  Mandates an
>> input method used by less than 10% of the blindness population?
>> I did stress dectalk, hacking into a Raspberry pi would not create my
>> goal..never mind the absolute lack of an inclusive method for me
>> personally pi wise. I might add that needing to Cary around a USB keyboa=
rd
>> reduces its portability.
>> Speaking personally of course, limiting input methods limits  sales  and
>> market share.
>> Just my thoughts,
>>
>>
>>
>> On Tue, 23 Jan 2024, Nimer Jaber wrote:
>>
>>> I believe this device is using a Braille keyboard, though you can likel=
y
>>> connect a USB keyboard to it. Another solution that was proposed is to
>> set
>>> up a note-taker of sorts using a Raspberry Pi.
>>>
>>> On Tue, Jan 23, 2024 at 11:32=E2=80=AFAM Karen Lewellen <
>> klewellen@shellworld.net>
>>> wrote:
>>>
>>>> While that seems to be far more than I need, I am confused by somethin=
g?
>>>> It references a braille keyboard, but I am in the majority of the sigh=
t
>>>> loss population, I do not use braille for input.
>>>> Does this device have an actual  button based input method?
>>>> Karen
>>>>
>>>>
>>>>
>>>> On Mon, 22 Jan 2024, Nimer Jaber wrote:
>>>>
>>>>> Hello,
>>>>>
>>>>> Yes, check out the BT Speak. https://www.blazietech.com/products
>>>>>
>>>>> On Mon, Jan 22, 2024 at 8:39=E2=80=AFPM Karen Lewellen <
>> klewellen@shellworld.net
>>>>>
>>>>> wrote:
>>>>>
>>>>>> Hi all,
>>>>>> Let me spell out what I mean.
>>>>>> a portable Linux based in terms of being  open source device that ca=
n
>>>>>> manage at the very least text files.  Something easy to load files
>> into,
>>>>>> as well as if possible add an open source edition of speech synthesi=
s?
>>>>>> Some work  being done  on dectalk if that resonates.
>>>>>> Does such a device exist?
>>>>>> Karen
>>>>>>
>>>>>>
>>>>>>
>>>>>
>>>>> --
>>>>> Best,
>>>>>
>>>>> Nimer Jaber
>>>>>
>>>>> Check out and subscribe to BlindTechAdventures
>>>>> <https://www.youtube.com/blindtechadventures> in podcast audio form o=
n
>>>>> YouTube for the latest happenings in tech.
>>>>>
>>>>> You can follow @nimerjaber on Twitter <
>>>> https://www.twitter.com/nimerjaber>
>>>>> for the latest technology news.
>>>>>
>>>>> Thank you, and have a great day!
>>>>>
>>>
>>>
>>>
>>> --
>>> Best,
>>>
>>> Nimer Jaber
>>>
>>> Check out and subscribe to BlindTechAdventures
>>> <https://www.youtube.com/blindtechadventures> in podcast audio form on
>>> YouTube for the latest happenings in tech.
>>>
>>> You can follow @nimerjaber on Twitter <
>> https://www.twitter.com/nimerjaber>
>>> for the latest technology news.
>>>
>>> Thank you, and have a great day!
>>>
>
>
>
> --=20
> Best,
>
> Nimer Jaber
>
> Check out and subscribe to BlindTechAdventures
> <https://www.youtube.com/blindtechadventures> in podcast audio form on
> YouTube for the latest happenings in tech.
>
> You can follow @nimerjaber on Twitter <https://www.twitter.com/nimerjaber=
>
> for the latest technology news.
>
> Thank you, and have a great day!
>
--1949452079-237894750-1706059279=:339927--

