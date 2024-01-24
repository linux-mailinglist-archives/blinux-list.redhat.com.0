Return-Path: <blinux-list+bncBCVPTHE7K4IPDUOBVUDBUBB56OXME@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C83839E4F
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jan 2024 02:33:38 +0100 (CET)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5982acaf281sf4589157eaf.0
        for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 17:33:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706060018; x=1706664818;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JZY8NVHYynEm3QbPUQx1YaRy8XkQ8d6dBjTvtH7S+oQ=;
        b=upjjyuw6vV73UA7MZCvCXHWn+NxI1SBH25qaXmJWDW774yf6fdLBGPeeySz6Yoyhml
         JunD31TyGyBkywk3vjy85TdsN4JcgbXCrVX7aN3lih5HXRWqhu7vEXXzD6vAtOy5jIOd
         jPb92OwAuHiPTucPxreEZOjt3gjLQFKi8aRNMtpKq+0fKSGKNDcJBDWi3CglIcbDJgzn
         88JxaBtI08DIbV4Dxeblffei//QJgQLAixrNg2cj1f6l1GqEuGmKlebyNhLXa4nVesbu
         jkLD6T98TkLt0Kv0ZfsU2VWbZBpATYQ3zqHmJkryPcVT53OXjvISzMGTlZA8w0V1vS7/
         Dmkw==
X-Gm-Message-State: AOJu0YxjavJxjVxQoheGNDaIGcJimFoz2nLjudC66Y6HYPpli/iPoX6U
	3ZwhrdrDxz0absE+4I34vuFdQWY2hU7uwLq+/yM4KmVCWDUXsjcGNN5BZjxEHns=
X-Google-Smtp-Source: AGHT+IGrmaudeJPOPkzkWq5lp5ZKpX50tgrEJhwEHScXQ76ktHv6JT/E7Cl/8nJtVwn+EpQ+2h1MNw==
X-Received: by 2002:a4a:ba04:0:b0:599:c1cf:eaaa with SMTP id b4-20020a4aba04000000b00599c1cfeaaamr111683oop.12.1706060017722;
        Tue, 23 Jan 2024 17:33:37 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a4a:5893:0:b0:598:e74f:626e with SMTP id f141-20020a4a5893000000b00598e74f626els2259273oob.1.-pod-prod-08-us;
 Tue, 23 Jan 2024 17:33:37 -0800 (PST)
X-Received: by 2002:a05:6808:30a9:b0:3bd:bc6c:5349 with SMTP id bl41-20020a05680830a900b003bdbc6c5349mr921648oib.101.1706060017000;
        Tue, 23 Jan 2024 17:33:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706060016; cv=none;
        d=google.com; s=arc-20160816;
        b=mhatnEs6xgK6ErfkigK/1SMgLIEsNvXEO3BkiKg8jKieih6lSZR/FXyqlcTABtofMu
         Msv2hwXWzLbeIO2/awCmKhTE+y7EVDERBBQ9g9vMrJfazTC6mEd05HThxbc7Y6duvdAA
         cxlEMXkVm0/gu65T2Z5g3wiIpu+lW4kKXq9r/E1CHiukmyoN6QDd4Mhp/KI4+dQx0nBh
         gf4JLxd5NrEfzKbfY7PCkE2E0mz7bzK7wb3WjR1o7Oix2s21ulyskfVCFR6yvTNDJYbB
         hCna+dggU2WmbP7g7KTsiQ/LYgXRAKLhAzO49QQ+/B+Mep7bxA2mG4um4x/aWbMnqPcP
         PE2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=JZY8NVHYynEm3QbPUQx1YaRy8XkQ8d6dBjTvtH7S+oQ=;
        fh=Z7cEUkx4kEbc8XULiG2w4dphWKeARu/AOPBpFDEz6/s=;
        b=aaNpzKOb+a+NQ1BH/chKXTrfjyCkiBq0oXiUjQYQ6h58hqUYEffaOGrSN0C3FEPAgI
         ULT8KDuHolgSwYuD3tshzezDbpzFVhUXlN5JTUQUOieFnb6VqRuq0NHDshBW2iTV8ibG
         A85RxoYkw8jszTcE1iiGWHDmUR5JDdfRGmQcKzn8yUoT1U6erJOwCRGig60Sg9Ba3noK
         UWwezCDFm3Ti/hM5qIWxL/ZKOu1HCxG9WauJ2Z3XWLMfiavhdZBashbYrvdhgHqbFgOB
         nJDqN4FCY2aIz7SCVmSI8wO8XjahY5X258RSGH5vKiwGBjz73J/ulptfeoUsB/nEz6Sx
         gQUA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id c15-20020a05622a024f00b0042a0b35c01esi9096183qtx.231.2024.01.23.17.33.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 17:33:36 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-136-A6e_EAitP9-WXJIukfEfoA-1; Tue,
 23 Jan 2024 20:33:35 -0500
X-MC-Unique: A6e_EAitP9-WXJIukfEfoA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 86F6628B6A17
	for <blinux-list@gapps.redhat.com>; Wed, 24 Jan 2024 01:33:35 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 83D6E111E417; Wed, 24 Jan 2024 01:33:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7C2D7111E411
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 01:33:35 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5B018827E57
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 01:33:35 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-1-hP7RitPyO_m5M5SvFgdIZg-1; Tue, 23
 Jan 2024 20:33:33 -0500
X-MC-Unique: hP7RitPyO_m5M5SvFgdIZg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 8873B44FC6;
	Tue, 23 Jan 2024 20:33:32 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 50C081001DC; Tue, 23 Jan 2024 20:33:32 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 4F3D810008A;
	Tue, 23 Jan 2024 20:33:32 -0500 (EST)
Date: Tue, 23 Jan 2024 20:33:32 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Nimer Jaber <nimerjaber1@gmail.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Linux e-readers do they exist?
In-Reply-To: <CAF2O2CzM57KztRTkiJDP_u8V2zVZqYptTB8JyUaRyrx99MYNGQ@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2401232031110.340238@users.shellworld.net>
References: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
 <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com>
 <Pine.LNX.4.64.2401231429500.336098@users.shellworld.net>
 <CAF2O2CxQbdG-ORf2weztvUF3LESbe=9cdVnXTuF4hrvaXFUQZA@mail.gmail.com>
 <Pine.LNX.4.64.2401231826010.338658@users.shellworld.net>
 <CAF2O2Cw+6FZ-UyeB8BcfVr6Gyj30kdvXbsPJv1Hm9sBnYGYs=Q@mail.gmail.com>
 <Pine.LNX.4.64.2401232018370.339927@users.shellworld.net>
 <CAF2O2CzM57KztRTkiJDP_u8V2zVZqYptTB8JyUaRyrx99MYNGQ@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-949932327-1706060012=:340238"
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
--1949452079-949932327-1706060012=:340238
Content-Type: TEXT/PLAIN; charset=X-UNKNOWN; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Respectfully, offering a solution  that does not take into account the=20
majority of the target market for that solution is concerning.
I said nothing about the price at all.
You did, perhaps by accident, find a solution claiming to incorporate=20
dectalk  voices.



On Tue, 23 Jan 2024, Nimer Jaber wrote:

> Respectfully, I offered a solution. If it doesn=E2=80=99t work for you, o=
r if you
> object to the cost, or whatever, fine. I never claimed the product worked
> for a majority. I provided it as a possible answer to your question. Do
> what you want with that information or don=E2=80=99t, I really don=E2=80=
=99t care.
>
> On Tue, Jan 23, 2024, 17:21 Karen Lewellen <klewellen@shellworld.net> wro=
te:
>
>> We are talking about the experience of blindness, not another disability=
.
>> braille is not used by 90% of those experiencing blindness.
>> Your suggestion would be solid, dectalk is referenced, but the input
>> method is one not used by 90% of those experiencing blindness.
>>
>>
>>
>> On Tue, 23 Jan 2024, Nimer Jaber wrote:
>>
>>> Hello Karen,
>>>
>>> I believe your synth can be installed on any machine, including a Pi,
>>> though only you will know whether a Pi will meet your physical needs.
>>>
>>> I don't pretend to keep up with what every disability any given person
>> has
>>> before I respond to queries. If something will work for you, great, if =
it
>>> won't, well... this is not an inclusive world.
>>>
>>> I do actually find myself agreeing with your comments about Braille and
>>> Braille keyboards. I've been saying for a while now that the system tha=
t
>> is
>>> so heavily promoted by Blindness entities has failed the majority of th=
e
>>> population it is supposed to serve. There are many reasons for this, of
>>> course, not all those reasons are the fault of Braille. Nevertheless, i=
t
>> is
>>> difficult to make any headway on a literacy system for the Blind when t=
he
>>> majority cannot make use of that system. Nevertheless, it is the best
>> that
>>> exists today that doesn't rely on audio speech, so it is what it is. I
>>> think this about Braille, white canes, and so many solutions that many
>>> Blind people are stuck using because someone somewhere decided it was t=
he
>>> best they could come up with, and nobody has come along and created
>> better
>>> solutions that scale. That's my personal rant, for whatever it's worth,
>>> about how people who are blind, and indeed, many disabilities, have bee=
n
>>> and continue to be left behind in so many ways.
>>>
>>> I also would love to see some higher-quality keyboard options and choic=
e
>> of
>>> input methods, but I don't have millions in funding, a group of
>> engineers,
>>> UX researchers, investors, etc., to make an ideal solution for people,
>> and
>>> the fact that it hasn't really been done well to this point tells me th=
at
>>> the problem is a tough nut to crack. We are, after all, a minority, and
>>> achieving scale at a minority level in order to bring down costs and
>>> provide user choice is quite difficult when any investor wants to see a
>>> return on their investments and a profitable company.
>>>
>>> On Tue, Jan 23, 2024 at 3:32=E2=80=AFPM Karen Lewellen <klewellen@shell=
world.net
>>>
>>> wrote:
>>>
>>>> let me see if I follow.
>>>> A portable device that raves about working for the blind.  Mandates an
>>>> input method used by less than 10% of the blindness population?
>>>> I did stress dectalk, hacking into a Raspberry pi would not create my
>>>> goal..never mind the absolute lack of an inclusive method for me
>>>> personally pi wise. I might add that needing to Cary around a USB
>> keyboard
>>>> reduces its portability.
>>>> Speaking personally of course, limiting input methods limits  sales  a=
nd
>>>> market share.
>>>> Just my thoughts,
>>>>
>>>>
>>>>
>>>> On Tue, 23 Jan 2024, Nimer Jaber wrote:
>>>>
>>>>> I believe this device is using a Braille keyboard, though you can
>> likely
>>>>> connect a USB keyboard to it. Another solution that was proposed is t=
o
>>>> set
>>>>> up a note-taker of sorts using a Raspberry Pi.
>>>>>
>>>>> On Tue, Jan 23, 2024 at 11:32=E2=80=AFAM Karen Lewellen <
>>>> klewellen@shellworld.net>
>>>>> wrote:
>>>>>
>>>>>> While that seems to be far more than I need, I am confused by
>> something?
>>>>>> It references a braille keyboard, but I am in the majority of the
>> sight
>>>>>> loss population, I do not use braille for input.
>>>>>> Does this device have an actual  button based input method?
>>>>>> Karen
>>>>>>
>>>>>>
>>>>>>
>>>>>> On Mon, 22 Jan 2024, Nimer Jaber wrote:
>>>>>>
>>>>>>> Hello,
>>>>>>>
>>>>>>> Yes, check out the BT Speak. https://www.blazietech.com/products
>>>>>>>
>>>>>>> On Mon, Jan 22, 2024 at 8:39=E2=80=AFPM Karen Lewellen <
>>>> klewellen@shellworld.net
>>>>>>>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Hi all,
>>>>>>>> Let me spell out what I mean.
>>>>>>>> a portable Linux based in terms of being  open source device that
>> can
>>>>>>>> manage at the very least text files.  Something easy to load files
>>>> into,
>>>>>>>> as well as if possible add an open source edition of speech
>> synthesis?
>>>>>>>> Some work  being done  on dectalk if that resonates.
>>>>>>>> Does such a device exist?
>>>>>>>> Karen
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>
>>>>>>> --
>>>>>>> Best,
>>>>>>>
>>>>>>> Nimer Jaber
>>>>>>>
>>>>>>> Check out and subscribe to BlindTechAdventures
>>>>>>> <https://www.youtube.com/blindtechadventures> in podcast audio form
>> on
>>>>>>> YouTube for the latest happenings in tech.
>>>>>>>
>>>>>>> You can follow @nimerjaber on Twitter <
>>>>>> https://www.twitter.com/nimerjaber>
>>>>>>> for the latest technology news.
>>>>>>>
>>>>>>> Thank you, and have a great day!
>>>>>>>
>>>>>
>>>>>
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
--1949452079-949932327-1706060012=:340238--

