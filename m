Return-Path: <blinux-list+bncBCVPTHE7K4IJ5GOBVUDBUBCK5U2LE@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DBD839D48
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jan 2024 00:32:48 +0100 (CET)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-5982acaf281sf4517827eaf.0
        for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 15:32:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706052767; x=1706657567;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sw4XupJEwEL++RAnSkb/9sg4hruVh+bVNgp9XKqtOM0=;
        b=gdcW7bJfLuyaHDwN+QL6HrCo39I+/oLkbuu9pfKKv+aGVSbXt3UFTe33ba/a3SWK34
         EseWp5eUpg7VPycnI4Gxqxfdls1cZkGuokUKzkekekGkE7Z85JaYEVMcAkVHl/kblOH3
         2HsxphTrGtG5ykztix0ykjSByAQvLa7MQTkRGraZ6340yS5zgfbOp6MD+3JoQqtSJ0io
         O6Z5NdXwK5XKq/Pzcc8f5JlDQQ5MxvXyL27AMVaL0Afa9yxhqGYOMHNZhKv4Tl90gOd2
         xRIbVclUFEoExyPY9kRaQloSOz6u30K55zc0ybSArOSj9w2N09i72e7Op+F1khPqsBtQ
         FyRw==
X-Gm-Message-State: AOJu0YygZu1Lc6hiO+Qnp7hnxuAU4Pd1CCVD1cNMiLbAiYa68GSf4cXC
	sqWsfvPm7lcOikNijobedk0Gpkz0sOBFh4b2FJXrv42qlkYiMGW67YS+UhgdrYE=
X-Google-Smtp-Source: AGHT+IGtNA4FKgk2Ub5gq/pj/xae4PvMm+7P7lM2eoJT2gx1lRb4y3c73dUjbwx2pEXuEinGSN0r4g==
X-Received: by 2002:a05:6358:7f18:b0:175:8e89:6f47 with SMTP id p24-20020a0563587f1800b001758e896f47mr5507038rwn.45.1706052766734;
        Tue, 23 Jan 2024 15:32:46 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:b345:0:b0:681:551c:1348 with SMTP id a5-20020a0cb345000000b00681551c1348ls2280721qvf.2.-pod-prod-08-us;
 Tue, 23 Jan 2024 15:32:46 -0800 (PST)
X-Received: by 2002:ae9:f209:0:b0:783:729c:d6f5 with SMTP id m9-20020ae9f209000000b00783729cd6f5mr5698037qkg.143.1706052765890;
        Tue, 23 Jan 2024 15:32:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706052765; cv=none;
        d=google.com; s=arc-20160816;
        b=JCMmwMtfSzBhyReOnwT6sSvkS7FV/dFNFb+VvZoB39k23q+E5FuUeNZiTMI7gGPjNC
         uMfZ+Y5ceQTboy8PTJpbdeeG7JhKt5n3czXpO2I3SgIDYuOvb9r6obNHwV7k9PEyi+mA
         EYs10YHmwhf01aw/C/np2SN+fmvOUHRyf+9mFyrbjATBTLGbVqkJpcpqhghUIl5hGky4
         ze0S0uW+BCt7KRQ6fkssQCqDjqBZisAbevYP0qHA/Npu0GBJx2mzftoNYgW3j0xRvgxM
         KK1WZjeg4JxrgnFv4gr4+VLVPFDaGrguijmmqZa7+9X/JvyG0csjk1GMtf+KSEbPCxSn
         sfTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=sw4XupJEwEL++RAnSkb/9sg4hruVh+bVNgp9XKqtOM0=;
        fh=Z7cEUkx4kEbc8XULiG2w4dphWKeARu/AOPBpFDEz6/s=;
        b=Vy/KurpDUp68Ul2h8CCBCZiiI0IqUoJFnOl+eUsE3EaB3ImGcguuqfoQvQlVmV9M58
         zJscJfMYgts3Qf/fUgMrMoR/GCcfj5La1kBAO35FKVDOLkpEvqpgznrLg9qoTDkA+jm8
         YKFSLHgbTtPAbyQfBgzW7GcXv1b4cMjQBaobpdK/UU9feLV4ctVGc3RytKu5YYKYEJQF
         zpVGMMKwh91XvoS215H6vtrq0mxPb5j/yx4v3E3pjXKMtq1Mfe58F9nx3uffZaqj0v6T
         LoSndcE4WKQanr9sBCessIU4SRU51d/3BMbevDIIW46qndJ85la906bv6LHzC6Xa1ccb
         fbyw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id h14-20020a05620a244e00b007832295fc0dsi9659571qkn.468.2024.01.23.15.32.45
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 15:32:45 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-380-VB351hy-O9O1Ay928kLJUA-1; Tue, 23 Jan 2024 18:32:44 -0500
X-MC-Unique: VB351hy-O9O1Ay928kLJUA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4520983B82E
	for <blinux-list@gapps.redhat.com>; Tue, 23 Jan 2024 23:32:44 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 41EC3111E417; Tue, 23 Jan 2024 23:32:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3B00A111E408
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 23:32:44 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1BC5280007C
	for <blinux-list@redhat.com>; Tue, 23 Jan 2024 23:32:44 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-118-GOs396LyPVqEIlRxM84ZDg-1; Tue,
 23 Jan 2024 18:32:41 -0500
X-MC-Unique: GOs396LyPVqEIlRxM84ZDg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 6D0EB40508;
	Tue, 23 Jan 2024 18:32:41 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 3FD6A1001DC; Tue, 23 Jan 2024 18:32:41 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 3DF8610008A;
	Tue, 23 Jan 2024 18:32:41 -0500 (EST)
Date: Tue, 23 Jan 2024 18:32:41 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Nimer Jaber <nimerjaber1@gmail.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Linux e-readers do they exist?
In-Reply-To: <CAF2O2CxQbdG-ORf2weztvUF3LESbe=9cdVnXTuF4hrvaXFUQZA@mail.gmail.com>
Message-ID: <Pine.LNX.4.64.2401231826010.338658@users.shellworld.net>
References: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
 <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com>
 <Pine.LNX.4.64.2401231429500.336098@users.shellworld.net>
 <CAF2O2CxQbdG-ORf2weztvUF3LESbe=9cdVnXTuF4hrvaXFUQZA@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-255914579-1706052761=:338658"
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
--1949452079-255914579-1706052761=:338658
Content-Type: TEXT/PLAIN; charset=X-UNKNOWN; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

let me see if I follow.
A portable device that raves about working for the blind.  Mandates an=20
input method used by less than 10% of the blindness population?
I did stress dectalk, hacking into a Raspberry pi would not create my=20
goal..never mind the absolute lack of an inclusive method for me=20
personally pi wise. I might add that needing to Cary around a USB keyboard=
=20
reduces its portability.
Speaking personally of course, limiting input methods limits  sales  and=20
market share.
Just my thoughts,



On Tue, 23 Jan 2024, Nimer Jaber wrote:

> I believe this device is using a Braille keyboard, though you can likely
> connect a USB keyboard to it. Another solution that was proposed is to se=
t
> up a note-taker of sorts using a Raspberry Pi.
>
> On Tue, Jan 23, 2024 at 11:32=E2=80=AFAM Karen Lewellen <klewellen@shellw=
orld.net>
> wrote:
>
>> While that seems to be far more than I need, I am confused by something?
>> It references a braille keyboard, but I am in the majority of the sight
>> loss population, I do not use braille for input.
>> Does this device have an actual  button based input method?
>> Karen
>>
>>
>>
>> On Mon, 22 Jan 2024, Nimer Jaber wrote:
>>
>>> Hello,
>>>
>>> Yes, check out the BT Speak. https://www.blazietech.com/products
>>>
>>> On Mon, Jan 22, 2024 at 8:39=E2=80=AFPM Karen Lewellen <klewellen@shell=
world.net
>>>
>>> wrote:
>>>
>>>> Hi all,
>>>> Let me spell out what I mean.
>>>> a portable Linux based in terms of being  open source device that can
>>>> manage at the very least text files.  Something easy to load files int=
o,
>>>> as well as if possible add an open source edition of speech synthesis?
>>>> Some work  being done  on dectalk if that resonates.
>>>> Does such a device exist?
>>>> Karen
>>>>
>>>>
>>>>
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
--1949452079-255914579-1706052761=:338658--

