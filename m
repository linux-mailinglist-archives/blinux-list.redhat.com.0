Return-Path: <blinux-list+bncBCVPTHE7K4IM5RWBVUDBUBF76VRC2@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2AD839DF7
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jan 2024 02:09:35 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6855c0719a8sf55687766d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 17:09:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706058575; x=1706663375;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AqCAJVR8QkP7xFJJyLOhTB8RzUfZcMerOcQ10TG84ZE=;
        b=WVky2mVWJcGSFLWc4cGRh7pt2sxFVXLxQlDstP8+ISSYxbaDpRwkUAH+U0Ds64q3y9
         zimQfPTTudLpNpCgQ1vh7XWydvaK0f5AzUIoR1AHaoyNnaxsbqlYlcZrTXl477QtQe9L
         EDLmE/auIIEVZX9fIVKd++55jte9lTs5eeTkgfZ9EqInY5sFsD04TQqa01fJQyCeINXY
         vxw+hKBWM1j03LXtUeEGSs1u/aL/wwvgXau9sx2S77R8trUr41M87oOGoclk3nDfM3dA
         z2oL5ZF39JNMzbgwLtUGAfSsvKMkrq5QpLYngLKBbIuKt0FYgLXcSiieGOgu9WyUuYKd
         7ukg==
X-Gm-Message-State: AOJu0YxNO9CeiKecyI+BCCW0f0lujgN1aWCVxCO9/3sf/FHnz7AqI+6A
	rF1PMfY4gubNVJpm9d19NM7OyB1hy1nVEWagk2rgn1eyLsx1TXE1x0ejhVuncX4=
X-Google-Smtp-Source: AGHT+IFfjrUoiVb8KT/04yp0/u8uoRIuvv6xcNVCMglaGmLQZDmrxQLsiFxiwdp6Lu0Cti3mJh5QMQ==
X-Received: by 2002:a05:6214:1d07:b0:67f:feeb:e034 with SMTP id e7-20020a0562141d0700b0067ffeebe034mr2126627qvd.129.1706058574562;
        Tue, 23 Jan 2024 17:09:34 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:b345:0:b0:681:55ad:8a34 with SMTP id a5-20020a0cb345000000b0068155ad8a34ls4951479qvf.1.-pod-prod-05-us;
 Tue, 23 Jan 2024 17:09:33 -0800 (PST)
X-Received: by 2002:a05:620a:c09:b0:783:9ec2:5746 with SMTP id l9-20020a05620a0c0900b007839ec25746mr3961229qki.24.1706058573355;
        Tue, 23 Jan 2024 17:09:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706058573; cv=none;
        d=google.com; s=arc-20160816;
        b=h3MadoCY7nTe7V64wEYR/R5JFbt5AlrF+Lx7CZICVs7zfqvmJsSOiqjF355m4afP/A
         xEWLtozcPIppLnZL0etdBrIFdSx25chUf1K1i83j0S80ir9uQKdLgp3gk8ygNf9nRSVY
         DNcIcudOWk2FE54bjyh+vabqKzeWeCawIWJc2KDbKkUpCxXVg5gJpR8datVau0ZuPS6s
         o6R0Bsjb6gcB2QesjycIAuAgYqdnrreBt0RJhWOKIHASFxokUPibGff32ykTMpWjaHVl
         JZ4nrMn0EncEhPGnTqps9JyJCSScoo7df4CDVG8/TnIPt/0lt22YYbeuwf6MMNq+tXb7
         W+Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=AqCAJVR8QkP7xFJJyLOhTB8RzUfZcMerOcQ10TG84ZE=;
        fh=Z7cEUkx4kEbc8XULiG2w4dphWKeARu/AOPBpFDEz6/s=;
        b=HMB+iC9uxEpuaJ+lUDsXTsUE6z7vsrnJV9rNDVLgVbMWY7Juo7RRI8yRK12m5lCPZo
         1iUXfM+qJEc5AOiVBrASD5GPWfgepg4myNWu/JblQFC2uWO4XbeIBzpvlQLAJhkAQNm2
         sa7wOd7KeP21UbF8eMkXkMZkdC4Vk6dr48YmLPo2LiSgegHMtKzvxlAZ2oKKr8SdYKd7
         oQ3N1Qqcw1xn05eqCiURhUa0Iv7YJB52NL4ppAUmXJ2o/LXYJ6UGf+IjoLrlVztwes9J
         fq3hsFboPJ4vHFIdyFbjeVB1ie+tBR8qIQusyVGDSxBgIceAQNh20dmSaaC1t0OjTWvk
         dk5Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id d16-20020a05620a167000b007833c8370fcsi9008326qko.636.2024.01.23.17.09.33
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 17:09:33 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-601-jIOkd99CNl6cIK1f2CrJFw-1; Tue, 23 Jan 2024 20:09:31 -0500
X-MC-Unique: jIOkd99CNl6cIK1f2CrJFw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A6FD184AEA2
	for <blinux-list@gapps.redhat.com>; Wed, 24 Jan 2024 01:09:31 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id A4106492BFD; Wed, 24 Jan 2024 01:09:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9A669492BFA
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 01:09:31 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 728903C14945
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 01:09:31 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-346-wNq4jV9IOzWX5QuMURTuVA-1; Tue,
 23 Jan 2024 20:09:29 -0500
X-MC-Unique: wNq4jV9IOzWX5QuMURTuVA-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id C350540508;
	Tue, 23 Jan 2024 20:09:28 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 8E87C1001DC; Tue, 23 Jan 2024 20:09:28 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 8E0E910008A;
	Tue, 23 Jan 2024 20:09:28 -0500 (EST)
Date: Tue, 23 Jan 2024 20:09:28 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Nimer Jaber <nimerjaber1@gmail.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Linux e-readers do they exist?
In-Reply-To: <CAF2O2Cw+6FZ-UyeB8BcfVr6Gyj30kdvXbsPJv1Hm9sBnYGYs=Q@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2401232006570.339927@users.shellworld.net>
References: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
 <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com>
 <Pine.LNX.4.64.2401231429500.336098@users.shellworld.net>
 <CAF2O2CxQbdG-ORf2weztvUF3LESbe=9cdVnXTuF4hrvaXFUQZA@mail.gmail.com>
 <Pine.LNX.4.64.2401231826010.338658@users.shellworld.net>
 <CAF2O2Cw+6FZ-UyeB8BcfVr6Gyj30kdvXbsPJv1Hm9sBnYGYs=Q@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-1643796755-1706058568=:339927"
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
--1949452079-1643796755-1706058568=:339927
Content-Type: TEXT/PLAIN; charset=X-UNKNOWN; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

I use  the reading edge.
additionally, percentages documenting a regular decrease in braille use=20
are commonly provided.
I cannot follow the logic of building a product for  less than 10% of the=
=20
blind, then falsely claiming it works for everyone.



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
> --=20
> You received this message because you are subscribed to the Google Groups=
 "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>
--1949452079-1643796755-1706058568=:339927--

