Return-Path: <blinux-list+bncBCVPTHE7K4IPLL5RVYDBUBDLB4Z4K@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 04FA985429A
	for <lists+blinux-list@lfdr.de>; Wed, 14 Feb 2024 07:04:38 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-68c43a4cc11sf102026386d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 13 Feb 2024 22:04:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1707890678; cv=pass;
        d=google.com; s=arc-20160816;
        b=rOtnGAZzBTGVWubti4iixbChTZw/FNG6G4uX82p4AT0m3BsfP8OilBEdNjrvkKxv+k
         +vy3RviX5Np/4A0o2N435h/hLXqa2gp8AGQGS1Z1RR4dJgWPFDT/Pt4Sw6WRLwyBSTK6
         4qO+uqhpT9fHOzu8ssTD7Rzy2RXmh8mFS8nayNQTPQxhpW1UgNiCzu0jjYGesYr3OsHW
         aZFZyTEVRte7ge9O0y1mpNYDYeQhZ9MvwlsPBOVXXhuOACSjgcWPoTNqvqaBoJ6H68UW
         iYBH5ZGGN4q94ZBXyndk2blKcmJNJhYGa6y5OZwo8RrqVHO7dBZjzEhM+j2b7ETZPs+n
         7oCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=vauTmkx/Zy7DMHrX/PYCkvxVhZBPxrC/eYWv5Kd8/gY=;
        fh=IGG/Hekdl46p4ZxfUmxR+e0phftJSxExGYH8lnQ/vco=;
        b=CzrTz5FXmBp2SVC+mcYvJxQwC1Wo1CVa9XeSNPi42xClI00F5d/pSU597c3fUOcKfN
         Ku8sE7E2p8tprsyVkUZ31uUSyg23jG2YZmkr3PuFgA8lLyFdCyrwrdE/MNkeWtvybak6
         E2u1ktaCBCLrP8E0a6t2/WnXTGoRNDoTp2akdQdVFNv77LGE+b54mqrq1xKguHN9FwaI
         m1QnUtW9a0xrG8ZVZZ3tokWJm/QYKD7n55KSy4fokWMq7ljvXw7NJNJNLlNrn6/FjMmc
         JQCuPqO3Vz77QvDQXIMahSpuFEYJR6D3Veu8KJk8TbbV9NVYs1/ysZh4N2KE3icPuHgp
         zsGg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707890678; x=1708495478;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vauTmkx/Zy7DMHrX/PYCkvxVhZBPxrC/eYWv5Kd8/gY=;
        b=CL1dwCfC1c4IKaqDoXlXJSOtwyl7ZTZW04Fg+tqAJmaBKosEMbkyOWsR43bEKEqxel
         9R+5KiJfl3kEonwnJZb9gdBmnQBI4Vczq1lUqvZKn7M0n6mEfkBctRYoMij0vDgDuDuR
         ev0NBCo/Mm5oMyjkdOo3ZDykS9II4zjNWSwBFasIFvPf/XsiiYKMgm1KUPyzCRFJGvdZ
         uYoQ74B5mXeQ3E+iP2kYvmfhFroi/LbMTS0Tuxp1UNvk8KGPJ4gINxTpO8w8BmN48kyo
         PsZSGSq4FNMwbL47hCNQJpBTupKsP0ndLqW637CbCBNq94M0STSAbiNtBU2BneJNzzj5
         U1EA==
X-Forwarded-Encrypted: i=2; AJvYcCXmJAHt4cVyQ5/4BuFnafxXdobe0D9dvelJ5CfVHWnKj+twfmKtmB/j9inGFIXYvR+Y0TmYyM7qIKhpN1nWe0W2MnLU5PPPEss7
X-Gm-Message-State: AOJu0YyafrL8r0YAxZMIOTypADSdKDIVThoeWTXAEoRRxVnA80vI93a6
	PVunYPFdVdFfaxb4V+yFFHmzEbAgEg3rbUZX1QfzwVaMlVcnr8DNXrd/gLEG6zQ=
X-Google-Smtp-Source: AGHT+IGg5+hq2hainKNyzdVH5Q7fHkGdu4w3jf+L7veHNaWlbsxYWMl89tdJ2SVfgJXvU2R8hvrpRQ==
X-Received: by 2002:a05:6214:29e5:b0:68c:3d2a:47e7 with SMTP id jv5-20020a05621429e500b0068c3d2a47e7mr1619137qvb.27.1707890677598;
        Tue, 13 Feb 2024 22:04:37 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:d69:b0:68d:db56:10ac with SMTP id
 9-20020a0562140d6900b0068ddb5610acls2246098qvs.2.-pod-prod-07-us; Tue, 13 Feb
 2024 22:04:37 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCV0BaK9kwgZPjWssrSLQE6mmvb7Naxo8a2WGJImGN+kXaWWWuoJJPj4PKR0zU7m923V//Yzd1j5JPE1FMmOM29BNcbg+NlukZL1kAGB
X-Received: by 2002:a05:620a:1923:b0:787:24c7:8b94 with SMTP id bj35-20020a05620a192300b0078724c78b94mr2353933qkb.48.1707890676912;
        Tue, 13 Feb 2024 22:04:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1707890676; cv=none;
        d=google.com; s=arc-20160816;
        b=0BDkylktmpzxSsdl7MAQ3CHeItI3kQpOH+7Jy6BYROB9vrKmRExBPZjdKBxjvM5NQw
         Aa38AXUZ17gKwuHGfan+aqE/2QIU27/q+lO35/IlYc68HxyA1iWdU9XPfV9QeGRIUpyZ
         gIQMuRRvNg/+P/Pbe9cmIAfjiPruMTTby2rDH73MaWYT9oC9SDBTy/aovPyUkJ0mLDJq
         pGuB/QnEbewkA/s4KjLXFzewkBVfcdfEj/eyrSmgAJ+n8/A/T8CQLAaaz6/nk1No8DLe
         yoDGs2F0G3osTCd4J5yEvptqlmvwNBhBCBCfObA7MbphC8aAC7AlWe8CVkUdvGjN/okP
         MzYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=vauTmkx/Zy7DMHrX/PYCkvxVhZBPxrC/eYWv5Kd8/gY=;
        fh=quo0wrId2Zf2w2FR4a6S91dYR86XRTUy+sW0DWZsQPc=;
        b=EdTGp5S6FxWV//t3wgdM9O65BxaQjsi4ltPMtVVfmckB+DpbG55Pi/vgnIYw1nO/dO
         xlxHC8XwKyz/01e01mU1A4n/HxXHg0JFPXwkeo5roG+Db4+vmKnyl5YhdpZiTOUfgjOq
         0VSKzxtrm2mhTZxrvaJb1vmMjIv/p6gTpxEKbmOpy/AbxYA735jb/hMkvHKJowCVPShS
         2ocscfezsq96bxREjauaZQM8FdHlEVqH5Jg0X2tjXCFFA3eLlWWoVPGBjbtCy4GVT7Td
         f3E8agRqqeqV6/EjjibxENkv6WaH9hiLPYttRp/ILHspayhZqEKtvBLkjNSSYIAxhsSL
         cXpQ==;
        darn=gapps.redhat.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Forwarded-Encrypted: i=1; AJvYcCVeGXsWzuIwL+3+vGZCucXGrPRVM9ZPW7lawN8wKXRyO3HSPWs0n/kdpKCTOC91fBK+yz76oJnIOcOnSz8RzHEtGyRRDxQmH4Mx2S6o
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id o15-20020a05620a110f00b00786f0d7488fsi4597225qkk.87.2024.02.13.22.04.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Feb 2024 22:04:36 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-132-93GPnhzaOlmwY7sA4pd_lA-1; Wed, 14 Feb 2024 01:04:35 -0500
X-MC-Unique: 93GPnhzaOlmwY7sA4pd_lA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5F1ED85A58F
	for <blinux-list@gapps.redhat.com>; Wed, 14 Feb 2024 06:04:35 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 5BAFD1134CA5; Wed, 14 Feb 2024 06:04:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 234251134CA4
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 06:04:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C6881101FA2A
	for <blinux-list@redhat.com>; Wed, 14 Feb 2024 06:04:34 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-460-rNQf0f2BNm6zp9Dp5rLzsQ-1; Wed,
 14 Feb 2024 01:04:23 -0500
X-MC-Unique: rNQf0f2BNm6zp9Dp5rLzsQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id AB05340508;
	Wed, 14 Feb 2024 01:04:22 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 6B244100163; Wed, 14 Feb 2024 01:04:22 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 6AB011000A5;
	Wed, 14 Feb 2024 01:04:22 -0500 (EST)
Date: Wed, 14 Feb 2024 01:04:22 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: ssh command line question?
In-Reply-To: <e9d53acd-f2af-7dfd-c719-2ea3f7fc5f85@panix.com>
Message-ID: <Pine.LNX.4.64.2402140101510.707021@users.shellworld.net>
References: <Pine.LNX.4.64.2402132112360.704913@users.shellworld.net>
 <e9d53acd-f2af-7dfd-c719-2ea3f7fc5f85@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
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

One more quick question after I just did a search.
There seems to be a command line option that turns off strict host key 
checking.
Where do options go for ssh?
or should I run that command with  ssh-keygen instead?
if so,  what is the syntax?
Thanks,
Karen



On Tue, 13 Feb 2024, Jude DaShiell wrote:

> First delete the outdated key since it won't work any longer, then login
> again and a new key will be added for you by the external server.
> ssh-keygen -r hostname
> should get that first task done.
> When you log in without a key you'll be asked if you want to trust the
> system and your answer is yes.
> That adds the new key and you're on your way.
>
>
> --
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>
> On Tue, 13 Feb 2024, Karen Lewellen wrote:
>
>> Hi all,
>> Will aim to keep this simple.
>> is there an option with ssh from the command line that allows you to update
>> new keys for the known host list?
>> I ssh into my dreamhost office workspace from shellworld, as in
>> ssh email@email.thingy.
>> I provide the password, reaching the dreamhost shell structure for the domains
>> they host  on behalf of my employer.
>> dreamhost moved our services to a new server, changing our ip address, not an
>> issue, but also changing the fingertip keys <hope that is the correct term,
>> previously saved  for my access from shellworld..who seems to use a strict
>> matching process of some kind.
>> My hope? is that there is an option that tells ssh to update the identifiers
>> used for known hosts?
>>
>> Thanks,
>> Kare
>>
>>
>>
>

