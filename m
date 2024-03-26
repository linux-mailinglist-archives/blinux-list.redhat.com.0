Return-Path: <blinux-list+bncBCVPTHE7K4IL5HMNWADBUBDOCQ6J4@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A0988D139
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 23:39:59 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4311b01a1ecsf67075391cf.2
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 15:39:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711492798; cv=pass;
        d=google.com; s=arc-20160816;
        b=ReSQPFMAjxvJWqXpRPN2ebaZMSZKnzF5TxMEc4s4zen5CzROCYMuyqOjqDDDeObYew
         LLHYH4zywQk0NmZ5rJICW/d162dahU8MazJWSGaJhntUhiJPyS3+qiUOz8AzW/OHyUfj
         Z+yNfEmwnHlO73tUpmwppZlxErqctMv39CJ2zEb1DM75mLCBQ5DwEnY4WaoewrKGhvEP
         ov15IzogHlsTjEHk2Rc2d6riRZSBv+c9xcdG12e9qPLhgfQ8Ylar5/Wk8puuWW3T//f3
         ZlTfA9hExG8m5Jl8Gt2Knv/IE62bO5LpZjkYYUdk0RKmC8Cfzq5ZOn2J2ME8VK/xvIQr
         adwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=W+mFeExrC1MtoR0vhni0hLcYETFAs90RhtImBAlkz34=;
        fh=qiZ9OpYlbVh2RiNKzgOQbi9KZZcH2+RTi18NcoXving=;
        b=ssuutyx1/Iz+NV7wi1VBu1icw2Y9OJ2K3LOzRsSydMSHSMDUd46ZXxz0XgPB1AVHB2
         brdNjw3ONODfaZnWTn2zXjwikZqFjYhk8w7e2KTf3pymWXobaFvuxBsjfaP0zAW1ckOW
         Uw9x7EVu6Cy4Jc3FxMHyUmB/9fXUjNkx6Cog2d/ObYxNqhOdq1KArTYfGCajWk6WrC6k
         Yf23U/GAcAqBdR1SSOA2Vl0yN7JX0Tf71Y/YriEhT9/Z1jt0gUmPd5XrjIkrLbGLLy6D
         9cuJ6Q2bVoABhMTZ8rGg3+zTtUlBOVU0oGdHEauUxqvjI6lKsLLxeOalBnuPyDNvM1CF
         Ptfw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711492798; x=1712097598;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W+mFeExrC1MtoR0vhni0hLcYETFAs90RhtImBAlkz34=;
        b=JKuiMyBVRxAPc+NHTG6Pwa5ciRRESBs4wgpUR7KHD5PJCmv7cZcYjV76BoIjm0ItA5
         9Uet2VncJvnQffmEoUCFs/wFoAJ8m8/BuX7qRo/vQ0WRYzJq9ZicfushcESfyj+DMZXv
         ya3YVu12Cu8bd7WIzulje8xwbNP6zsHzEhk4SrWYj20pmek5y83aMHYARP53LZfFZ4+6
         Yqnr2KoGrB0n2KYIE26rpYmaZj84WwIu5O9BH8Tj8+lcJPoHNwPruCSyw7F8ZI4edGtP
         qkQe91pprwHfBhlxA970AvE+MXlbHtuFCSrojcX6ikjDPysFoYVLRknd95GFRrSSEV2/
         /FPA==
X-Forwarded-Encrypted: i=2; AJvYcCX3cC6uvNNDg2R08rGERGWExHvsxmOz1IDMXMDJKG2sBXNJ6pcjuVMKTDeUUUJQrlI4DCQCQTC9wq6w3wf7DaMiwh+uTpiL1+Us
X-Gm-Message-State: AOJu0Yxto5sZc+CDXj9RhaPPjmZ5OIYtJn2cIGAad98qPW+QsSnKdH4r
	4A4Iur88q88BeevquK2rFqBc2+k7K4DB2FhLQ86qy2ylrUQf0TcStybiqwQJ4z0=
X-Google-Smtp-Source: AGHT+IGAn03FmzsCGgSZrimXXLDenbC+cASoxv2xPiwgMCca0fuK8kzRZT+d8pmdtS1xl7vMUQEXCQ==
X-Received: by 2002:a05:622a:18e:b0:42e:984f:1497 with SMTP id s14-20020a05622a018e00b0042e984f1497mr11000454qtw.17.1711492798247;
        Tue, 26 Mar 2024 15:39:58 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5e88:0:b0:431:760f:beb1 with SMTP id r8-20020ac85e88000000b00431760fbeb1ls957701qtx.1.-pod-prod-08-us;
 Tue, 26 Mar 2024 15:39:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVxEJTWAaTWCUqu54P/1sVbN5jka/Xb0ncK3pVhwtUmwQ32R4w7+t8bxMhf8DXbdI5qHegRR1SLmwOk5SNgzdKEjRBUofgr4wCUF8he
X-Received: by 2002:a05:622a:2c7:b0:431:4d37:9264 with SMTP id a7-20020a05622a02c700b004314d379264mr9273595qtx.41.1711492797399;
        Tue, 26 Mar 2024 15:39:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711492797; cv=none;
        d=google.com; s=arc-20160816;
        b=D8uwuXYFkMXs667tZtEU6OV3ROoZZGtANRatvBiwpLrAnK9AQbA14J6ePPR1g8zvkP
         TXnTv0JZPgFyEUHYJCITaOGdAqX5N6Z4Wsf8Zmi9vxkJ71ncIBcgKlpjPsoEu8SjXYU/
         QaFPT8baP7M8X7Gei0TpAO09rBLVA/cKfGm68R0qUjDXDsSL2DCN8FZNa/nVDckRieGU
         7NmzaSo4W+2lpJxMoS9/lP79gjZvlF6FW39VEOAyulDiVlauNfBlYnwq2m05ZL2VKzx4
         YZ5ybiq6hBGQe6rArTCGUMaloyXW7lCp4Z6IoZmwNi5tBpiCh3O7ForR9fHbW6H08Mtj
         Q2yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=W+mFeExrC1MtoR0vhni0hLcYETFAs90RhtImBAlkz34=;
        fh=QKoMLGi21bdwz3dZyjjqnxj/+XrSTDFDUBaZ/ws8qGE=;
        b=a1hUTOF85kBLDiZrW5p6R6aVbfjvo7L3moO03XwMT+u9I7Aa1OJXCEMpPAeSWgACvI
         lHWEZgwSc+ejpqRurTBbrVxuERWV9kxt4FkgiTwJd2dziQPN8FaJHjXhwHvegQMuJT+C
         2j4t41FS08i7ykvxlYwDQE1/b/wX9LWnXP2aGvQtNLd5UW6UW0orHkUTUfHkW2G7foxf
         PJvUSsXKFHiB2mSmWcjbngybJClsUBMBQv7wJ9AI+gvxLegj6/L3YD1sVeAj5Pe1ll39
         pYLQfnc7ultHleNobjTgsWvbKAXg25LQ3c7c8S9Q3wzZWwg598D/FenmC94aN+4NXz6J
         o3gg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id s11-20020a05622a178b00b004317c3e589esi564485qtk.540.2024.03.26.15.39.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 15:39:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-597-bT6I_OzpOBOJ_0dJB15FAQ-1; Tue, 26 Mar 2024 18:39:55 -0400
X-MC-Unique: bT6I_OzpOBOJ_0dJB15FAQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC71E800262
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 22:39:55 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id A8B9640C6DB7; Tue, 26 Mar 2024 22:39:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 70F5740C6DAE
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:39:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 205888007A2
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 22:39:55 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-401-rHcirvxjOK6gIqUBa9aA6w-1; Tue,
 26 Mar 2024 18:39:53 -0400
X-MC-Unique: rHcirvxjOK6gIqUBa9aA6w-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 8182540508;
	Tue, 26 Mar 2024 18:39:52 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 511381001AD; Tue, 26 Mar 2024 18:39:52 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 4F89410007F;
	Tue, 26 Mar 2024 18:39:52 -0400 (EDT)
Date: Tue, 26 Mar 2024 18:39:52 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Jace Kattalakkis <khalfang1366@gmail.com>, blinux-list@redhat.com
Subject: Re: is there a command line Reddit tool?
In-Reply-To: <bae61399-42f0-d220-f29e-5e8bf66783ae@panix.com>
Message-ID: <Pine.LNX.4.64.2403261838200.1398748@users.shellworld.net>
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net>
 <03378586-b24c-4ec5-b2c4-6892d5b7085a@protonmail.com>
 <be8201e8-f1ba-4d17-81a2-11a8047f2038@gmail.com> <bae61399-42f0-d220-f29e-5e8bf66783ae@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-1654069912-1711492792=:1398748"
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
--1949452079-1654069912-1711492792=:1398748
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Can you be more specific?
I believe  others have tasks as well.
I take it  tuir gets around the reddit api requirements?



On Tue, 26 Mar 2024, Jude DaShiell wrote:

> tuir is what you want for this job.
>
>
> --=20
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>
> On Tue, 26 Mar 2024, Jace Kattalakkis wrote:
>
>> Every time I try using Teddit I get a 403 or 429 though, is there any ea=
sy way
>> around this, or?
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
>>
>>
>
> --=20
> You received this message because you are subscribed to the Google Groups=
 "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>
>
--1949452079-1654069912-1711492792=:1398748--

