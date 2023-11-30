Return-Path: <blinux-list+bncBCVPTHE7K4IPV647VMDBUBF54OQTO@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E3E7FE791
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 04:14:03 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-423f290bbfdsf21397431cf.0
        for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 19:14:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701314042; x=1701918842;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y2pHIWqO4DZgIueYTUtlqT0INt3tWJRimPzgPi4aTfw=;
        b=CA4uaf8csIFBuz+QmmG2iVgYBn6hiRYsO2i818MmbdsEthG25fQqb2bADwMcEZsuDj
         O2YMm2vw1ZAoNMxwQC3aMhSK2t4z/XVo9y999V3SLyoW4pntjne1jMiU9rP2ylpZR7mg
         2z5u1+TVaSohcd6ceAwXCLgSOZmQvcxvRE6mqvNBcXzNQYy8rQY1k59SnMImQEme/nOj
         NLGKOy/q8c3SFKtSQUBJYoDg695hDo/G4dNYSNvChG4QTmNZsTkV3dWqgiqxsDEuH2h0
         zZJNcD+ko92c18JkATnTONqrl6s6TihJFlsB0l+OSA9R0RvrvMZcX1TKe/COW0f8/Jke
         PJIg==
X-Gm-Message-State: AOJu0YxJ/AA84wqxpSqe6WAjQlwLxNsSsigjXt6wOIqsab/OZjTp6BKM
	0PxfZ92r+OLJwHZL9Yis7g14Aw==
X-Google-Smtp-Source: AGHT+IHDkqViVDFMbZmcU18ORMwc0mPgh7lQ/yG1G1C2RaqlQ/FziRe6+9YUf5B2H5T6egqybXV1nA==
X-Received: by 2002:a05:622a:13d0:b0:41c:c045:2c86 with SMTP id p16-20020a05622a13d000b0041cc0452c86mr44440925qtk.31.1701314042173;
        Wed, 29 Nov 2023 19:14:02 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1890:b0:423:707e:9eb with SMTP id
 v16-20020a05622a189000b00423707e09ebls1224439qtc.0.-pod-prod-00-us; Wed, 29
 Nov 2023 19:14:01 -0800 (PST)
X-Received: by 2002:ac8:5c08:0:b0:423:76aa:b919 with SMTP id i8-20020ac85c08000000b0042376aab919mr32773425qti.16.1701314041417;
        Wed, 29 Nov 2023 19:14:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701314041; cv=none;
        d=google.com; s=arc-20160816;
        b=Vj2n5OjYaESlSz1DqFM0rtrFMls0y/3WbiVgpVvcMrU3SHjr/aEq8ww9eFIk7ku9q8
         jQzztxp4jCLGCUgzQ3TglkoU611w4e1ozlIILnD7UnmAoKW80ojABkq0/hgOyMbUbMMG
         fa6IUbyYj15vk+pRbjeOVxXfz+YqnogYDyT5lGzvQym7Wt88GhPEAPevdWM3zeezVqIf
         LsWZlE6ylxPSZWebxWkLPte3uKQyotAHWJQADhWZd9poq48Rm7Mj+jzDXUHakWtyhcnG
         NAYdtlOBeEWpJxZAHUt2Ad6SeE9MRJ4AGwOzUNsuhche/1bGfyyJariMIvs2SGW7UG7w
         zWSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=Y2pHIWqO4DZgIueYTUtlqT0INt3tWJRimPzgPi4aTfw=;
        fh=bCabGQs3jn1s0M0qXUniS/CTf8AL/F0wZwsNHkuqrnc=;
        b=Jg3bWOgKqv9WsgChK+XNSVkGtLbvuMqYMrgxc7CHQjXe1YRMSBVfZNXNzzNph3Mz9X
         vqgUCjkAFOXu4FCPm4ES7y4h++O7mdJ/ufmH6eYEKaLLmi/iyTgS5Y5h3l8hQM5MZrlz
         +zNmg4gIQjAF2XCn1a4OReCbF23ZPaxM2/GCpHpFuuD6GKD/kex06eRDUThd5+LJY0Oz
         kL59AlaAXpFfUrDxdr/1tlqw9ReJVgbPsw+Q4y8F+lfZctod5JNIOAMAQdbtBy0vTwlJ
         nRtn742gTTgEB1LRNCPmrhgADEbuvK4k5nGbyJo42tkuG1DL5n7l/fAENkSDjDdbyqUI
         81LQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id g22-20020ac84b76000000b00423804bdaadsi212713qts.10.2023.11.29.19.14.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 19:14:01 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-661-DUquitoKOvy29TQPLPwGBg-1; Wed,
 29 Nov 2023 22:13:59 -0500
X-MC-Unique: DUquitoKOvy29TQPLPwGBg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3F5343C0C483
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 03:13:59 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3C40B40C6EBB; Thu, 30 Nov 2023 03:13:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 351AB40C6EBA
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 03:13:59 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 18CD5101A529
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 03:13:59 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-495-czENrdchM6ugPXXPFocd1w-1; Wed,
 29 Nov 2023 22:13:55 -0500
X-MC-Unique: czENrdchM6ugPXXPFocd1w-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 2FE6344FC7;
	Wed, 29 Nov 2023 22:13:55 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 029D01001B8; Wed, 29 Nov 2023 22:13:55 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 024C51001AA;
	Wed, 29 Nov 2023 22:13:55 -0500 (EST)
Date: Wed, 29 Nov 2023 22:13:54 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
Message-ID: <Pine.LNX.4.64.2311292213270.3720159@users.shellworld.net>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net>
 <c9277002-d894-203e-511b-952f27c98048@panix.com>
 <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net>
 <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
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

And Jude provides the command line option.
Thanks.



On Wed, 29 Nov 2023, Jude DaShiell wrote:

> links -html-numbered-links=1 should do that for you.
>
>
> -- 
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>
> On Wed, 29 Nov 2023, Karen Lewellen wrote:
>
>> I did say links the chain, you are thinking of l y n x which is not the same
>> browser.
>>
>>
>>
>> On Wed, 29 Nov 2023, Jude DaShiell wrote:
>>
>>> There is no keystroke for that.  You can turn that on in options or start
>>> lynx with lynx -number_fields.
>>>
>>>
>>> --
>>> Jude <jdashiel at panix dot com>
>>> "There are four boxes to be used in defense of liberty:
>>> soap, ballot, jury, and ammo.
>>> Please use in that order."
>>> Ed Howdershelt 1940.
>>>
>>> On Wed, 29 Nov 2023, Karen Lewellen wrote:
>>>
>>>> Hi folks,
>>>> for those using links the chain, there is a command line option that turns
>>>> on
>>>> links are numbered.
>>>> Can someone remind me of the keystroke?
>>>> Thanks,
>>>> Karen
>>>>
>>>>
>>>>
>>>>
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups
>>> "blinux-list@redhat.com" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an
>>> email to blinux-list+unsubscribe@redhat.com.
>>>
>>>
>>
>>
>

