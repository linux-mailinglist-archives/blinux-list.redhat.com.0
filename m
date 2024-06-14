Return-Path: <blinux-list+bncBCVPTHE7K4IP3V5SWMDBUBB4WOEIG@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 04600909388
	for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 22:45:51 +0200 (CEST)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-795507fd247sf305418085a.1
        for <lists+blinux-list@lfdr.de>; Fri, 14 Jun 2024 13:45:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718397950; cv=pass;
        d=google.com; s=arc-20160816;
        b=ylJlH8WTmhC4cJycwTO4uCHOFFHSp6NfelG+QNxTWZtcoRjFeLUc+VeajhcFnJkD06
         nG24ZE+4/BR+3/VD7jpaYIINtcd5PKCzfcFcLU57x8hS/6Mi9wt9zLRglol2LsqxjCkY
         IryLXgWOsa18acrnm8pK4Y0juCCup2eudPACiapL11BRq4yGtvb2+fYhS9AvhVwvcoEm
         UdlPWKpebjLOFmWgTCZdU1NYBIXSC9PKBRsuOE6HphBPoxKui++y/Zm6mG2kIxhpq0CM
         tgM6iVo7llWXSoXO5YlodPz7F38dvd2R51BVbOG5J/mVeoQCrLbyyMc4cnuJ7bRyM2Wh
         JTMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=O3inFVW4NwxcI8IfiXivmtzhTQPyew6q5VcpshJSOC4=;
        fh=4bGjLysqtis32xaVEuB29yVTccdp3bMkPVeV/O1e/+A=;
        b=lk4GwEO7zCFEU/0oTTlKXvAD0k8KXmKTveC5Nac93kANZpv8GaQFS9S4aYtWDuWHpo
         o6O4FCiPoPbOPAWtCT1+U4tnXBuxSbwGRlxFeGNWPvsdeRk99si8aIoslSB24MgIfkbH
         C9kr8vbVz7YP3LsfoC1vC97LzHsZrOO+mSkEIBnr35cnxfXCiKOD6MdhKwnNhmlWyppV
         gkvJstoPTb8POW3JplaDtVN3DH34rFY4iRcPzEeMgTEM1u0yHlDpzMa5+yngqW8SjQfD
         +FJozx4KaHxwpArIr/JFqDuMO6t+qNNLzlfsgL86rry0JxZH4kahmkchqeAqvHhzGS+W
         8fAw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718397950; x=1719002750;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O3inFVW4NwxcI8IfiXivmtzhTQPyew6q5VcpshJSOC4=;
        b=fLJibuyOYYeK8TUbZXdefE+/SFWroSZYJGxzFdpLsuwZWFSu3H+102glorhJKtvas8
         /HyMKUpbS+6eNLOvDC+nFCljPRXhiO0hXl5EghHY8SzCeO4F52DJB0qFpArSSQ/2j6ic
         VWBcTWHytwHb+K55JtfSofMS8TnF7ArIiu2G8SgvdvU3y9oq3tudSiN+Zw0x+WrhdH57
         NcNLEVcQkvVIwqZsx9MEH0yiInsc0oLqufKfcdsGM+vGZl/vJIrWZ0fCMj8JV888gyZS
         GBmuGmIFVZKDn1sdbMPiUlrFyrXciCkRoDRGDW51zmh/xyyTwOVd8y2BQIMCsUqNMqNK
         zF6A==
X-Forwarded-Encrypted: i=2; AJvYcCWWo2yRp/Erw2Jn9Pp+c7KkR0+NXMEyEMZQoCsJxiOTaSDUDMbhUdD9u2WLWlfaaSFpm7kwRV72Sz8x4oJQHmJBS9NpiW199UnP
X-Gm-Message-State: AOJu0YxcyMXO5MWz2DcZuhJDHFrguNPvc9KimIT1SOdbcLrhrfjA5hBL
	CZUkJgmgJJXHbJwVzwekruF0LsHJqRx8NdJP1/kAGcySrrYPon9IvKIg8OKhPZc=
X-Google-Smtp-Source: AGHT+IF7AUQxEi38QfFPo6maon5/c9XRVroc1TN3OVIbPAoM71LGl4jBM7Er6WaNVRdhSJt5AqEAOw==
X-Received: by 2002:a05:620a:2490:b0:795:5efe:e7c with SMTP id af79cd13be357-798d23e6d2emr388038385a.12.1718397949605;
        Fri, 14 Jun 2024 13:45:49 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1898:b0:440:c5bc:db8b with SMTP id
 d75a77b69052e-4417aa38e6als34504771cf.1.-pod-prod-05-us; Fri, 14 Jun 2024
 13:45:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUlVHr/XxEhT6t0cJ2P3o2tciTrISd2zw/BoExd4ohHwaXqqDoUvYl9EA3hcAu2zNHZGAx3CZBXmFIR4h067qKlecx8K5a48vHCCx4V
X-Received: by 2002:a05:620a:2629:b0:798:db85:c999 with SMTP id af79cd13be357-798db85d641mr293817085a.51.1718397948446;
        Fri, 14 Jun 2024 13:45:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718397948; cv=none;
        d=google.com; s=arc-20160816;
        b=B28GfnHGzYTpBKC5R5s/cfq61HZu3cUJNr3vdrgM25k0recZnKVcjLd+x69JBej4uv
         tnZYbexSkg7qoSeUmlqG15dQE6ucLOAIBk/jDIDoIeT1z7yyjAxdCDmNeWl+3b0Axe9J
         HNlA6rAMkUEjhXd0uMO2/jsQ0OgA7FUH50CKHMNj2Zn4zSIddcL0YlAcDdimXksjVTkq
         2iSKiTa3s+Lkno/hXGtb2cdOM6CW6ti5WrxU7bQoF64OBEkAStifqUhMr3UM+HL1Eb3b
         Hm8HD10yjCt9F5D9KOuyvJfxNcvXgGxhqGr0E09xi9nXh27CrYUaz/UzNDNdfJCdoaP0
         MdHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=O3inFVW4NwxcI8IfiXivmtzhTQPyew6q5VcpshJSOC4=;
        fh=tBUg+Sp4ZT+GFfptu3d7lvKfN58tvI/e+OZyTq6I4sI=;
        b=0ksitDeXpL+XiIb3RMcFGANwL7AhzL4yIIHMPctgGsV4JhDjbs+IJ+kU52E4kPBdJi
         lT86vF7gzW00Hoqdeu48VFdzFe9Z1BEEGcZXgzC1XaDIg3U+rKv01INxDFy8a2Df/0VH
         AdXQzcAVY7a3QYlEJkkH0ia3AdGESyRM95saofVcUFhZjRr3SA9mES1WnDFrmVIw9Pz1
         IfwsSWDgsanOR7Bpe+4GOWa5dVbdkEfEb5MzderVdciDtOUSl/v08Ojbz7qy0Lgx5gcA
         K8wSxWyJnz1smr6eyoyEsvIdWL8nY2VYKDGxUwne/Z04bFfsNaa1MmpBkpj58RYvhI9D
         vmrg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-798abe53dc2si448399785a.543.2024.06.14.13.45.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 13:45:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-595-cg5upWn-PzGGWOd77DV9mw-1; Fri,
 14 Jun 2024 16:45:45 -0400
X-MC-Unique: cg5upWn-PzGGWOd77DV9mw-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AE0AE195608F
	for <blinux-list@gapps.redhat.com>; Fri, 14 Jun 2024 20:45:44 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 80FF51954AC0; Fri, 14 Jun 2024 20:45:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7E35D1956087
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 20:45:44 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F34771956080
	for <blinux-list@redhat.com>; Fri, 14 Jun 2024 20:45:43 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-124--2QR4OqdMwiyvbMBi4uJXw-1; Fri,
 14 Jun 2024 16:45:41 -0400
X-MC-Unique: -2QR4OqdMwiyvbMBi4uJXw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id B2E6140508;
	Fri, 14 Jun 2024 16:45:40 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id D63141000C0; Fri, 14 Jun 2024 16:45:39 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id D5CB21000AB;
	Fri, 14 Jun 2024 16:45:39 -0400 (EDT)
Date: Fri, 14 Jun 2024 16:45:39 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Joel Roth <joelz@pobox.com>
cc: blinux-list@redhat.com
Subject: Re: What Happened to duckduckgo?
In-Reply-To: <20240614172449.szw7ot2brjxpdjxy@sprite>
Message-ID: <Pine.LNX.4.64.2406141644490.2830678@users.shellworld.net>
References: <4cca313a-ff14-20be-a458-bddffae2f787@hubert-humphrey.com>
 <20240614172449.szw7ot2brjxpdjxy@sprite>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
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

Ghat lite edition of duckduckgo has been around for some time.
Kare



On Fri, 14 Jun 2024, Joel Roth wrote:

> Good morning. Just now, I was able to load ddg and use it with lynx.
> I notice it redirected to https://lite.duckduckgo.com/lite/ .
>
> Chime Hart wrote:
>> Hi All: Rather suddenly, just after 9AM Pacific that wonderful site either
>> just hangs or displays a rather generic interface with no search box, at
>> least in L Y N X. I tried L I N K S, I get a blank page. Also, I tried in L
>> Y N X as an https  and it just hangs. I hope they didn't ruin it, but maybe
>> they got hacked? Thanks in advance. I cannot remember that ribbit site which
>> displays more results.
>> Chime
>>
>> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>>
>
> -- 
> Joel Roth
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

