Return-Path: <blinux-list+bncBCVPTHE7K4IK5KMNWADBUBCQQPQ5S@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 55C9288D29A
	for <lists+blinux-list@lfdr.de>; Wed, 27 Mar 2024 00:05:21 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6969e652c3bsf13066316d6.3
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 16:05:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711494320; cv=pass;
        d=google.com; s=arc-20160816;
        b=wGL8Nj1aNOc+XZstp7jRSLE0zfvHYVPH8DXRZgq/iVLFRmR5ce3UoaNA9nu4+knEPB
         YEmPCnkjrA5UgVpKQjGGpoBYaPCY6Ea+awOc6g4ey7P92eb2RSg3QHd5SE5awVEJ3Xw7
         AhZVvs3b8fAwcGniSUHwjWdiJKdBRssfY4/mFqXskABefRQaLc2N8IGWcoLttWevyPu/
         GnCRY/rqJTETUdjMgo/4NDfJB1Y0/yc4wLdh0q2/EdJshvO7q3tcDVoOlDcS98igA/2u
         qCzhCFH//Ea3XBhuK5bFPoHWrgd8HQOj5ufx4b/fN5xF/w/3p26jY6yQMjv/85JsAuk5
         k7+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=bQ58K3cDUdU0Frlzgpc3DGe6dlXYfTfMjDxihnywILY=;
        fh=CHDUO5oGjXVRxyZ7hCUNsKmPHgFaf3ZWMnaPuWIuZ5I=;
        b=MU+ru4idY2fw6Td+IwS2KBOPSNgeZaOiuier/h8ecxwIwF+/qBpkr1GwXWWXbW+tro
         ZjMfA8JD0Hal6YFOVH2b1GOR29q7UkBJBwDxwisQ43zaN+OcvuB2j8DR5R21eXCWlADu
         +DYpXe9ur7dtvmqVZ/NcRZoPRHB6EvwLYqg5x8K8nKN5trj4jTikyBJC1ULckM8bJXP2
         gvH65AQJ+eR2aNFUAc0icnjI+sE97eMxXPZmYBwPVtIysJ1j8Uq71tywvN3w9N141fGq
         kamw+0TvgYPAl1aTRiomlIFaPn8fmqknDFYYXGHJJpUuaVbgl6rfN6BUkNorKpM/0jmZ
         f1Wg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711494320; x=1712099120;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bQ58K3cDUdU0Frlzgpc3DGe6dlXYfTfMjDxihnywILY=;
        b=Qsj0gt82wm4mYSU8EamOfNHVIfudn+fwAKsYmhapvWVoNUiInWbJBEAvd+PNPMlGku
         VKB5rL4sDvc47jCqQUM2rklQWruLx/TPvPTaR/BPVQTwxSPcuxPJBF84NLWt3ADjEQxt
         PN/dV7Nnzouw+WPq97Clk0tHnANzpOTd3qa8sGgUjSNuRnh7AKtZONR8q7KlCoXuxRgx
         h+voi049tv9kBV+HghsObcnhnpNt0Ga3La0fFnuAFJA6Th1I8hQWUBp4VJOxA98Jt8lL
         3w9h8ZXPnnMLxXPpzEWj4t1oz5VGQlAxqk6CFI/aYEUJk5UZFQoq1sI5aTZdFFu7XAVS
         yk/Q==
X-Forwarded-Encrypted: i=2; AJvYcCUipgvChiklaLUe5ji4kUDOTHzlfTXlC/Qplx9jdfYWEZKuyyyPDUARTO92EDhUr7KjAfGRGXnbmomNeiGNsPyeHLqa+m1rZTWY
X-Gm-Message-State: AOJu0Ywt6S5YID28olzt5pnzHCAM2wy6dK5YaCAMOys7Tv5VjXvPFAFp
	zSqeZFNNsyu58bW5xIJBxqRcGLEQuyzQ3626NyH/hZYxMaSx1LDo+v4liap+hF4=
X-Google-Smtp-Source: AGHT+IE19UYxah472LQnIOoUuiyAGZfAus4shH4Qk3m1wZ5ys2ikuv4ObdTwPRtXSTz7q9sdMjqZUw==
X-Received: by 2002:a05:6214:cc2:b0:690:dbb0:be3c with SMTP id 2-20020a0562140cc200b00690dbb0be3cmr2904463qvx.51.1711494320114;
        Tue, 26 Mar 2024 16:05:20 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:f105:0:b0:696:7b12:4bbc with SMTP id i5-20020a0cf105000000b006967b124bbcls3700722qvl.1.-pod-prod-03-us;
 Tue, 26 Mar 2024 16:05:18 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVBXoNDdUiu9i3YhVv+HikVy1VA+Q/3V9TqjwUvBGU/WYVZyuW4BPA8GPpmqxgxInemln3pxqiam7/4bb+6u/E747Vv+1WBUhMY/BDp
X-Received: by 2002:a67:fd48:0:b0:474:bbe6:9261 with SMTP id g8-20020a67fd48000000b00474bbe69261mr2417510vsr.19.1711494318238;
        Tue, 26 Mar 2024 16:05:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711494318; cv=none;
        d=google.com; s=arc-20160816;
        b=cJvDL9bUcKGtmPkXkb6i1vuxQiJDDmQ9lBC0dYyuZovcCgy+nw/iKyPLYm3SNViYqW
         50H72WANuJJdl5DoMW7lfjMlX8reTwqc2ZDhaVeGeebYqLhK4fWikQUcLge1UtSUPh3C
         Z5i+qCEIUsVFJHCSm/CcrE/+oLn4S6EOca8OSoa/UQvOfZv58I2tQio1xBfoL+M0hXoR
         h7jMWtFQ2ETOAWgyGNc2tuUIPCu0hhyBdhOEcP8bYvxkvcslzw7YSGrVjzg1KtWBueYS
         weBi0fFwhtz9uQ7VbYdl+AkJAzT2MChuMhMSdfC72q1yqzmaH82DYMFFkc6BS8IineeP
         kEBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=bQ58K3cDUdU0Frlzgpc3DGe6dlXYfTfMjDxihnywILY=;
        fh=gTdYv77FJgsJMAVAMa9sc/3Bc+I93V/+IdF8eu1dzSA=;
        b=WtjSizbhX3QW9ZW0L2nbV0yoZ2oQ4CQrN09IZPK4+WCqrRKmjwSdzwA8rnkwZOevJH
         KLYPbdARDfwu8jxg1JTWT2pFQN1vgaGjWiIpZA4PipXgedF/glDr3BCn65iB9pL1Xj2L
         ofmS89ekzmvuSyB4MtIG7ZRK2ShFPQMejK4tlYr96jIMTIRpxSA5VIkujXOmANgOhTr0
         LC82iv8V+GQ/lhDOSvFME9p8Tla+KvGdJzhOEZtzq95yQA60cLzxuu8gvLhLFLuz4knl
         WqTh4MIjhRmdraG4N+unzj36Yeo0f0ifkd+CLIx+SLZHQgrHMbvFaFIWENmufDCJhm3F
         WwpQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id hz21-20020a0561024a9500b00476c7ef47c0si1568755vsb.340.2024.03.26.16.05.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 16:05:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-111-S50j-xZSOvW7ab9NvCZk3A-1; Tue, 26 Mar 2024 19:05:15 -0400
X-MC-Unique: S50j-xZSOvW7ab9NvCZk3A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1355E800262
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 23:05:15 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 0F029107A8; Tue, 26 Mar 2024 23:05:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CB1FA1074E
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 23:05:14 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 758228007A1
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 23:05:14 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-606-lqbROkO6MSayWoGZ9n9lrQ-1; Tue,
 26 Mar 2024 19:05:08 -0400
X-MC-Unique: lqbROkO6MSayWoGZ9n9lrQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id E56E940508;
	Tue, 26 Mar 2024 19:05:07 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id B719A1001AD; Tue, 26 Mar 2024 19:05:07 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id B5ADF10007F;
	Tue, 26 Mar 2024 19:05:07 -0400 (EDT)
Date: Tue, 26 Mar 2024 19:05:07 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Rastislav Kish <rastislav.kish@protonmail.com>
cc: blinux-list@redhat.com
Subject: Re: is there a command line Reddit tool?
In-Reply-To: <f573056e-b1e3-4a46-b206-ab7210a46a93@protonmail.com>
Message-ID: <Pine.LNX.4.64.2403261904270.1398748@users.shellworld.net>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net>
 <03378586-b24c-4ec5-b2c4-6892d5b7085a@protonmail.com>
 <be8201e8-f1ba-4d17-81a2-11a8047f2038@gmail.com>
 <f573056e-b1e3-4a46-b206-ab7210a46a93@protonmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-329704802-1711494307=:1398748"
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
--1949452079-329704802-1711494307=:1398748
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Has any effort been made to educate the reddit team about this tool?



On Tue, 26 Mar 2024, 'Rastislav Kish' via blinux-list@redhat.com wrote:

> Hello,
> so, the situation is like this. After Reddit API changes, now, the API
> still exists, but is throttled, I believe 10 requests per minute without
> API key and 100 with API key, or somewhere around those numbers, see the
> Reddit API sites for exact numbers.
> This is why mainstream Teddit instances that did not use an API key were
> throwing 429 quite often. Not always, but often.
> And that's also the reason I like i.opnxng.com, it's an inconspicuous
> domain that almost nobody has been using, so getting 429 there has
> always been pretty rare.
> However, it's not the only problem. Reddit also from time to time
> decides to arbitrarily block a Teddit instance after it had been used
> for a while, that's when you get the 403 errors. But this is actually a
> temporary thing that's IP dependent, so if you change either the
> address/instance or just wait few days, it will start working again.
> If you setup your own localhost instance, which is super-easy to do if
> you have docker, then you can just use some kind of proxy or whatever
> and it's rather easy to workaround.
> Eventually, Teddit also has an active Reddit API key. When it's used,
> the instance won't get blocked. Originally, this key had been used by
> the main teddit.net website, and was discouraged from being used for
> production purposes by other people, who were supposed to generate their
> own keys instead.
> However, I'm not quite sure if this is still possible to do, it used to
> be a mostly automated process, now you need to apply for an API key and
> get approved for it like an app developer according to the docs, what
> doesn't really make sense as fighting third-party apps was the reason of
> halting the API in the first place.
> I make use of the API key occassionally, when opnxng gets blocked and
> I'm lazy to setup a proxy. The main Teddit website is down for quite a
> some time by now, so it's unlikely that anyone uses it anyway.
> However, I always get back to opnxng as soon as it's available again in
> order to avoid overusing the key and getting it cancelled, that would be
> a pity.
>
> So, yes, the situation with teddit, libreddit (l.opnxng.com btw) and
> other Reddit frontends is a bit complicated, but they still work, so I'm
> not complaining. :)
>
> Best regards
>
> Rastislav
>
> D=C5=88a 26. 3. 2024 o 8:43 Jace Kattalakkis nap=C3=ADsal(a):
>> Every time I try using Teddit I get a 403 or 429 though, is there any
>> easy way around this, or?
>>
>>
>>
>> On 26/03/2024 05:32, 'Rastislav Kish' via blinux-list@redhat.com wrote:
>>> Hello,
>>> for reading, I'm personally using the Teddit frontend, which should wor=
k
>>> well in LYNX as well:
>>> https://codeberg.org/teddit/teddit
>>>
>>> My favourite instance is thisone (since it's usually free):
>>> https://i.opnxng.com
>>>
>>> Best regards
>>>
>>> Rastislav
>>>
>>> D=C5=88a 26. 3. 2024 o 4:22 Karen Lewellen nap=C3=ADsal(a):
>>>> Hi All,
>>>> previously, reddit worked well,  at least for reading posts, in both l=
ynx
>>>> the cat and links the chain.
>>>> Now, even elinks produces a blocked error message, my guess is that th=
e
>>>> reddit community is not aware of Linux and these tools for access.Wond=
ered
>>>> though if another tool already exists that might be a part of a shell
>>>> infrastructure?
>>>> With appreciation,
>>>> Karen
>>>>
>>>>
>> --
>> You received this message because you are subscribed to the Google Group=
s "blinux-list@redhat.com" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to blinux-list+unsubscribe@redhat.com.
>>
>
> --=20
> You received this message because you are subscribed to the Google Groups=
 "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>
>
--1949452079-329704802-1711494307=:1398748--

