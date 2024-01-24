Return-Path: <blinux-list+bncBCVPTHE7K4IMVM6CVUDBUBD4OVDBC@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id A822E83A0D6
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jan 2024 06:02:03 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-429a1d383c3sf75044121cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 21:02:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706072522; x=1706677322;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=czwxYIReuc/pozKOh/lFz5nbxXln+8OYDPCcil+a3bc=;
        b=eHGJ4q82W6BvqPZHATxMATMCPNOWlYGzpRx6OAIK63QuagSZx2fMDrIHH7vQLzVCKC
         gOpBfV+yOzXIv65GbduLu3rWar50ByjUMwRep/dNjOXmDJ3+JYE//xTbRKhiU841w1vd
         FXpS2fPo8I7PPWKkwEO0FM/v48tXhQTdJiyojAzuNG2g1hrqd7t93ASRHb3RdP5r36Pb
         7EvqDP4UBADXlq/Evy15HvVG71DqUfDiQF0qwIVOSHr25EhWlJpFeB1UIcLZ56wcbx44
         y1/e7GyMDoXHN4LP8kN8jKGLGM/qOhL+OhGon/vwohvswEXf9W0nRVFjzAqrMeJ51U5q
         04EA==
X-Gm-Message-State: AOJu0Yx+l0XS79xbWsSIR/6I2wdAdCb/YrJTxmw0N31kHQlDsvezpOET
	OQ8+T9raxsr3OijMUqkNNCzA8ekSpAUubAAJhBjjGCNDj6mcbM0HRMzVc1OXZe4=
X-Google-Smtp-Source: AGHT+IEnvnhsKZatvKXN3gZeoxpVd5znjwHSX8W1HlXa6DGbnU2/4Zxeeq82ACv3u/+Dk3X68Y/QwQ==
X-Received: by 2002:ac8:5c95:0:b0:42a:5917:beb8 with SMTP id r21-20020ac85c95000000b0042a5917beb8mr1140633qta.36.1706072522404;
        Tue, 23 Jan 2024 21:02:02 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7fcf:0:b0:42a:3abc:b49f with SMTP id b15-20020ac87fcf000000b0042a3abcb49fls4469992qtk.2.-pod-prod-05-us;
 Tue, 23 Jan 2024 21:02:01 -0800 (PST)
X-Received: by 2002:ac8:5909:0:b0:429:cab0:c741 with SMTP id 9-20020ac85909000000b00429cab0c741mr2122659qty.77.1706072521651;
        Tue, 23 Jan 2024 21:02:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706072521; cv=none;
        d=google.com; s=arc-20160816;
        b=sgLnnDWVWU1yD/n6LdSoE28f9lacnhS+qHcraL+peELK6TsGMVaWK76oAFrctgF9qa
         rekV52zKUMr6a0jMFquhTSBVNdDtO7gD0e+M9j7Sh0lfLBZhjOY/8UQ+x9a6ifsOxUlw
         V9LEdq91KUC5oEDThohmrsJGpFTuS1P1kgn547opFkKwfE9uiHxZS/ArQ/JlAnYTuXao
         8ResLCU/fP6CnZdyMDBDTCOaS2a5TgyDuXCUE1NpzSqoPh1RNV/twy+1jLBJWyreOv2e
         EL5ajUlHZOmD7NOlbb/uznrg77oW/uZE8wiUJW6+nmRDVsdE70mjJP0RZLivQ520FNlE
         yrnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=czwxYIReuc/pozKOh/lFz5nbxXln+8OYDPCcil+a3bc=;
        fh=Z7cEUkx4kEbc8XULiG2w4dphWKeARu/AOPBpFDEz6/s=;
        b=f+cc4L9YUBurBqH9HR8MXqa+GBXmUVlYr7AyOyMmvLm4rRenoRfLr/xkzoPl7hh1Vf
         7hRS2gjLJt+tTuElbczuD9xYl7hRGlmCpNyTBuwdQleilsCDqrUGpaSmQVUmQWO5+o1e
         83XrTpPZk6r+q318AxOH+nIGX7frmUiizrMnAKMGktJAvFq0LmiR0d6cLto12DRYQtYE
         KfjKd6yQeygSg2U8ZENMH1tAtIpQY3KwNoe0mCb382RAq+WCJJCVylUzi8fZouQadLo6
         fFqljwsrNMvlxDs2yzN0pRuH45rCwgW5tWKhy7IGi1De3N9TYsC0PPs311JKHitobl+Z
         R0gA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 12-20020ac8590c000000b004299892f32asi9491273qty.502.2024.01.23.21.02.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 21:02:01 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-308-nAiVA6U1PUG2pUIu9hAoow-1; Wed, 24 Jan 2024 00:02:00 -0500
X-MC-Unique: nAiVA6U1PUG2pUIu9hAoow-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B71AC101A526
	for <blinux-list@gapps.redhat.com>; Wed, 24 Jan 2024 05:01:59 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id B464D492BCA; Wed, 24 Jan 2024 05:01:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD0D1492BC6
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 05:01:59 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 871F13C23FC5
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 05:01:59 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-515-YJULRdZJPI-lrlyTsmgnPQ-1; Wed,
 24 Jan 2024 00:01:48 -0500
X-MC-Unique: YJULRdZJPI-lrlyTsmgnPQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 9BC5644FC8;
	Wed, 24 Jan 2024 00:01:47 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 62CE21001C2; Wed, 24 Jan 2024 00:01:47 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 621791001BE;
	Wed, 24 Jan 2024 00:01:47 -0500 (EST)
Date: Wed, 24 Jan 2024 00:01:47 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Nimer Jaber <nimerjaber1@gmail.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Linux e-readers do they exist?
In-Reply-To: <CAF2O2Cz=JVPJPXC4JLYJKaC=fhnpCQpg_o_bHrRCGNnt=EOyxg@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2401232359030.342017@users.shellworld.net>
References: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
 <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com>
 <Pine.LNX.4.64.2401231429500.336098@users.shellworld.net>
 <CAF2O2CxQbdG-ORf2weztvUF3LESbe=9cdVnXTuF4hrvaXFUQZA@mail.gmail.com>
 <Pine.LNX.4.64.2401231826010.338658@users.shellworld.net>
 <CAF2O2Cw+6FZ-UyeB8BcfVr6Gyj30kdvXbsPJv1Hm9sBnYGYs=Q@mail.gmail.com>
 <Pine.LNX.4.64.2401232018370.339927@users.shellworld.net>
 <CAF2O2CzM57KztRTkiJDP_u8V2zVZqYptTB8JyUaRyrx99MYNGQ@mail.gmail.com>
 <Pine.LNX.4.64.2401232031110.340238@users.shellworld.net>
 <CAF2O2Cz=JVPJPXC4JLYJKaC=fhnpCQpg_o_bHrRCGNnt=EOyxg@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-119194720-1706072507=:342017"
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
--1949452079-119194720-1706072507=:342017
Content-Type: TEXT/PLAIN; charset=X-UNKNOWN; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Nimer,
I hope you discover that inclusion is an individual experience.  Learning=
=20
to ask instead of projecting that all those sharing a label are the same, f=
it=20
your stereotype and are just like you, even if you share a label with them.



On Tue, 23 Jan 2024, Nimer Jaber wrote:

> Karen,
>
> I hope you find a solution that meets your needs. Whether you do so by
> accident or otherwise. Be well.
>
> On Tue, Jan 23, 2024, 17:33 Karen Lewellen <klewellen@shellworld.net> wro=
te:
>
>> Respectfully, offering a solution  that does not take into account the
>> majority of the target market for that solution is concerning.
>> I said nothing about the price at all.
>> You did, perhaps by accident, find a solution claiming to incorporate
>> dectalk  voices.
>>
>>
>>
>> On Tue, 23 Jan 2024, Nimer Jaber wrote:
>>
>>> Respectfully, I offered a solution. If it doesn=E2=80=99t work for you,=
 or if you
>>> object to the cost, or whatever, fine. I never claimed the product work=
ed
>>> for a majority. I provided it as a possible answer to your question. Do
>>> what you want with that information or don=E2=80=99t, I really don=E2=
=80=99t care.
>>>
>>> On Tue, Jan 23, 2024, 17:21 Karen Lewellen <klewellen@shellworld.net>
>> wrote:
>>>
>>>> We are talking about the experience of blindness, not another
>> disability.
>>>> braille is not used by 90% of those experiencing blindness.
>>>> Your suggestion would be solid, dectalk is referenced, but the input
>>>> method is one not used by 90% of those experiencing blindness.
>>>>
>>>>
>>>>
>>>> On Tue, 23 Jan 2024, Nimer Jaber wrote:
>>>>
>>>>> Hello Karen,
>>>>>
>>>>> I believe your synth can be installed on any machine, including a Pi,
>>>>> though only you will know whether a Pi will meet your physical needs.
>>>>>
>>>>> I don't pretend to keep up with what every disability any given perso=
n
>>>> has
>>>>> before I respond to queries. If something will work for you, great, i=
f
>> it
>>>>> won't, well... this is not an inclusive world.
>>>>>
>>>>> I do actually find myself agreeing with your comments about Braille a=
nd
>>>>> Braille keyboards. I've been saying for a while now that the system
>> that
>>>> is
>>>>> so heavily promoted by Blindness entities has failed the majority of
>> the
>>>>> population it is supposed to serve. There are many reasons for this, =
of
>>>>> course, not all those reasons are the fault of Braille. Nevertheless,
>> it
>>>> is
>>>>> difficult to make any headway on a literacy system for the Blind when
>> the
>>>>> majority cannot make use of that system. Nevertheless, it is the best
>>>> that
>>>>> exists today that doesn't rely on audio speech, so it is what it is. =
I
>>>>> think this about Braille, white canes, and so many solutions that man=
y
>>>>> Blind people are stuck using because someone somewhere decided it was
>> the
>>>>> best they could come up with, and nobody has come along and created
>>>> better
>>>>> solutions that scale. That's my personal rant, for whatever it's wort=
h,
>>>>> about how people who are blind, and indeed, many disabilities, have
>> been
>>>>> and continue to be left behind in so many ways.
>>>>>
>>>>> I also would love to see some higher-quality keyboard options and
>> choice
>>>> of
>>>>> input methods, but I don't have millions in funding, a group of
>>>> engineers,
>>>>> UX researchers, investors, etc., to make an ideal solution for people=
,
>>>> and
>>>>> the fact that it hasn't really been done well to this point tells me
>> that
>>>>> the problem is a tough nut to crack. We are, after all, a minority, a=
nd
>>>>> achieving scale at a minority level in order to bring down costs and
>>>>> provide user choice is quite difficult when any investor wants to see=
 a
>>>>> return on their investments and a profitable company.
>>>>>
>>>>> On Tue, Jan 23, 2024 at 3:32=E2=80=AFPM Karen Lewellen <
>> klewellen@shellworld.net
>>>>>
>>>>> wrote:
>>>>>
>>>>>> let me see if I follow.
>>>>>> A portable device that raves about working for the blind.  Mandates =
an
>>>>>> input method used by less than 10% of the blindness population?
>>>>>> I did stress dectalk, hacking into a Raspberry pi would not create m=
y
>>>>>> goal..never mind the absolute lack of an inclusive method for me
>>>>>> personally pi wise. I might add that needing to Cary around a USB
>>>> keyboard
>>>>>> reduces its portability.
>>>>>> Speaking personally of course, limiting input methods limits  sales
>> and
>>>>>> market share.
>>>>>> Just my thoughts,
>>>>>>
>>>>>>
>>>>>>
>>>>>> On Tue, 23 Jan 2024, Nimer Jaber wrote:
>>>>>>
>>>>>>> I believe this device is using a Braille keyboard, though you can
>>>> likely
>>>>>>> connect a USB keyboard to it. Another solution that was proposed is
>> to
>>>>>> set
>>>>>>> up a note-taker of sorts using a Raspberry Pi.
>>>>>>>
>>>>>>> On Tue, Jan 23, 2024 at 11:32=E2=80=AFAM Karen Lewellen <
>>>>>> klewellen@shellworld.net>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> While that seems to be far more than I need, I am confused by
>>>> something?
>>>>>>>> It references a braille keyboard, but I am in the majority of the
>>>> sight
>>>>>>>> loss population, I do not use braille for input.
>>>>>>>> Does this device have an actual  button based input method?
>>>>>>>> Karen
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> On Mon, 22 Jan 2024, Nimer Jaber wrote:
>>>>>>>>
>>>>>>>>> Hello,
>>>>>>>>>
>>>>>>>>> Yes, check out the BT Speak. https://www.blazietech.com/products
>>>>>>>>>
>>>>>>>>> On Mon, Jan 22, 2024 at 8:39=E2=80=AFPM Karen Lewellen <
>>>>>> klewellen@shellworld.net
>>>>>>>>>
>>>>>>>>> wrote:
>>>>>>>>>
>>>>>>>>>> Hi all,
>>>>>>>>>> Let me spell out what I mean.
>>>>>>>>>> a portable Linux based in terms of being  open source device tha=
t
>>>> can
>>>>>>>>>> manage at the very least text files.  Something easy to load fil=
es
>>>>>> into,
>>>>>>>>>> as well as if possible add an open source edition of speech
>>>> synthesis?
>>>>>>>>>> Some work  being done  on dectalk if that resonates.
>>>>>>>>>> Does such a device exist?
>>>>>>>>>> Karen
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>> --
>>>>>>>>> Best,
>>>>>>>>>
>>>>>>>>> Nimer Jaber
>>>>>>>>>
>>>>>>>>> Check out and subscribe to BlindTechAdventures
>>>>>>>>> <https://www.youtube.com/blindtechadventures> in podcast audio
>> form
>>>> on
>>>>>>>>> YouTube for the latest happenings in tech.
>>>>>>>>>
>>>>>>>>> You can follow @nimerjaber on Twitter <
>>>>>>>> https://www.twitter.com/nimerjaber>
>>>>>>>>> for the latest technology news.
>>>>>>>>>
>>>>>>>>> Thank you, and have a great day!
>>>>>>>>>
>>>>>>>
>>>>>>>
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
>
--1949452079-119194720-1706072507=:342017--

