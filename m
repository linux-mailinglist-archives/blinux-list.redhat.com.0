Return-Path: <blinux-list+bncBCLPHQH4XEIRBTMV6OVAMGQEOLM44HY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A217F3238
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 16:20:58 +0100 (CET)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-4627e0b4e2bsf1880917137.2
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 07:20:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700580057; cv=pass;
        d=google.com; s=arc-20160816;
        b=un5EJeJg/t6FokpH2RSewdA+BEg6rwJCkG7cVPP8Gu9VOXmnDFhnO3D1u60NOe98Va
         NBldTI56jFDBjFBM6rsz6PY3pnX87VDHYDzRjMpvCZr3pIT/bWgxN0fnk8/YA/SeQ0GI
         KNMkr6Zr94VBzzsmq5fdPLyeALgRSuutp3cXT/XZzZgcsbJN3YcfDobPwTYtn0jlDCNA
         SMe/iDC78pvWBSlBBAD8B0ZjSQyFthtEZ/e/jx5dEFmE5ZcgeumwNhAgHE0lsCYpIZqL
         h5QMNNTKlFbjxV0DA1KZ9V8YC0cATqahxP0QOm2BRmXbLrpEHDCB0O1lu1KD2+LLtdy6
         4Usw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=EY/1GDfVcJ+TALaTeiovmipksf7TfWrCiVt8+1CfISc=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=TzhqU2lVrSNndVDgEWrjp/AVwCTvLJvj51Nn5Thuosk9qGW/Dm1pbOExTMVvGtfxrD
         I8lh2TgZ+l1uzNUBloFzwBr4Bi0VV8PsL6RITFXsSuq9mwgStgH8wt9Q/qA2ldY69Ivq
         gdY9/Hb8ruEwF71yM8/AmC3TsMi+DzklnOhAVER6sLR5SXTRULft5nNX6McDd6eXVIg4
         9Fz0j1KzNRN/aGareRwH08Xy45hrL/ZRIIRLkmm+Jw8m08o0bACtUWc8TfpSvmlKhSze
         mYOOoqn49zSS9aUU17u+LpY0QKLaskn+HJpPxEhYjfPLeiOaymihR4PeheGgwoFdwvsS
         DxjQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700580057; x=1701184857;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EY/1GDfVcJ+TALaTeiovmipksf7TfWrCiVt8+1CfISc=;
        b=VLh/DarpTXcaOvMb5fzmRF7IUTH0eJvqM2gMA7uOKioaUcfb30Ctt/uxyy3yeXq6QZ
         wMUjIr34jvWCHhBR7OuU+lie8DQ56dHDUTafx5esksM8KN5pTqFBYGdZRjPvm9oEFvGW
         d7yJabh+RyI+Dy9pl+AK/J4lwXAIwSNWd0ohfpRA5Rlg5IvgEM8tpBNhKQWnFDn1HbgN
         4+m9gKC+1P9DZIekplj2jK/TRlympX6Ay/3PIP2lRbdH3V5yXbMWwy3jvlyOfe2VYoAX
         4zDCEVp0SkmagD1I6ZCQH6Rh7o0cRV9JWQcCEvQdbbtf/oBVJr0EShA9sO+M4h7DWavV
         m6QA==
X-Gm-Message-State: AOJu0YwVErtRf/q/hD57/sDR6LIDaFJIFfFGrktUcKT1f19ak2rIbglN
	TQ/pSFmzj/GESpSE4oVxpm8V7A==
X-Google-Smtp-Source: AGHT+IE8lGkJX3hPD9MsfFbjhjaYxCZn2GTFpuNMeYK5Q3RZJanxEm6SrOXBk8Kz+E8O3yB66mAAaA==
X-Received: by 2002:a05:6214:20a5:b0:66d:2fda:c9e0 with SMTP id 5-20020a05621420a500b0066d2fdac9e0mr11709530qvd.61.1700580046106;
        Tue, 21 Nov 2023 07:20:46 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:a93:b0:670:a1c0:e4e2 with SMTP id
 ev19-20020a0562140a9300b00670a1c0e4e2ls168175qvb.1.-pod-prod-04-us; Tue, 21
 Nov 2023 07:20:45 -0800 (PST)
X-Received: by 2002:a05:6214:248a:b0:679:d516:9b8d with SMTP id gi10-20020a056214248a00b00679d5169b8dmr7677837qvb.2.1700580045043;
        Tue, 21 Nov 2023 07:20:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700580045; cv=none;
        d=google.com; s=arc-20160816;
        b=cqVa+AXm6lQAnGG2BgPuQVz3kvxnCgcYkMITdmhyrA5bRMW9ZgcSSmhaXqFxbmqib3
         ee6rVbHtkQZ60EOTlkudumDO+B8oHITG4u3cu+aPHy8w2i++b1ISmlJfxs34KN6t3Kln
         3a3PB1luGXhrPT1//IrXFOj0H7RUHmiQL7CVdoFrKdHEkI6mRTaFGmPYLZbppRzCeu2w
         12ziIccTyzhuD7baCTdDlJFjUO1JG/p1F0KCA7MYhy6PtkQVw9rgZm7LZr0XsMQ/CypA
         qv1ptlZB8SSj3xukt1f790AAh7TMQfdh6f5BZZLI6vmdj76wJ4/Nfr7xTdg60gHS32Q/
         V+/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=XBcQVZKYF7OiVLwcilZOTH/x/aWWJGiTjZ2XqlNAFMA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=iOxunCX6ulYGIkXS1/j90Jpa0cAn4iZ0NhnjBvCuVjpVDzo9vmojP88upFbXqe3fFe
         UzCUb9FKnSxB9eeZqOIDcKhyeasWQkven4X1U7soRZtQaJjb/OuV7nZBbuptT04/g5yg
         oxvkJ5gha/atXLtYN4yCZ581DfB6OCaQNZCjwQUYZ8AgiO5LjCWgM/UNnrsDY2DEVUrb
         9ThPqriMgo8weHn40l9Ny9iklNf2yw1OhR6xdnzyYg9kvptM6GNJzAjJ3vqJWMgdrosE
         moGdeMVXfHHkTxAOhl9xePVDFaeigaga1zG62qY8LsD6e09pHlf6kQoi3qsf+gh8jC8a
         6zpQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id fn10-20020ad45d6a000000b00679ce542c8bsi6405011qvb.330.2023.11.21.07.20.44
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 07:20:44 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-426-gQs2C1AZPwyoD-zvJePibw-1; Tue,
 21 Nov 2023 10:20:43 -0500
X-MC-Unique: gQs2C1AZPwyoD-zvJePibw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 220413817741
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 15:20:43 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1F490492BE7; Tue, 21 Nov 2023 15:20:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 17389492BE0
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 15:20:43 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E88F8811E86
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 15:20:42 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-56-uL1T23bnO3mZ5d6FHA5LwQ-1; Tue,
 21 Nov 2023 10:20:41 -0500
X-MC-Unique: uL1T23bnO3mZ5d6FHA5LwQ-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id AC14832007
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 15:20:34 +0000 (UTC)
Message-ID: <21c25ba1-3763-4950-a07a-f0ebfad1fec3@jasonjgw.net>
Date: Tue, 21 Nov 2023 10:20:34 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: google removing basic html access, alternatives?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
 <20231121000352.GW23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202007280.3564917@users.shellworld.net>
 <20231121024247.GX23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202159420.3566012@users.shellworld.net>
 <20231121035449.GY23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202309160.3567236@users.shellworld.net>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <Pine.LNX.4.64.2311202309160.3567236@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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


On 20/11/23 23:21, Karen Lewellen wrote:
> May be one reason why I am unsure I would personally use Linux as my 
> only operating system, even if I could.
> its wonderful magical clay to be sure, but I prefer just buying the 
> cup so I can get a drink lol.
>
Having used most of the desktop operating systems currently available, 
I'm not enthusiastic about your options.

Microsoft Windows has good accessibility, due to decades of investment, 
but its reliability and security drawbacks are significant - and it 
isn't UNIX-like, which is a disadvantage for some of us. Windows 
Subsystem for Linux doesn't entirely solve the latter problem. Also, the 
MS-Windows community is full of non-technical end-users, which can make 
finding accurate information online difficult when you're trying to 
solve problems after something has gone wrong. Whoever decided that 
32-bit hex error codes were a good alternative to human-readable error 
messages that genuinely describe the issue made dealing with problems 
under Microsoft Windows more, not less, difficult.

MacOS is UNIX-like, runs on excellent hardware, but the accessibility 
support is not well maintained. Expect bugs to go unfixed for years, and 
for the accessibility to be perpetually beta-quality. Given what I use 
it for, I can work around the bugs - mostly.

Linux: if you know your way around Linux system administration, and 
you're prepared to work around the accessibility limitations, it's 
reliable and flexible - still my preferred environment. The graphical 
desktop does what I essentially need, and the command line interface is 
excellent, a major attraction from my perspective. I am hopeful of 
further improvement on the desktop side in the coming years. The Linux 
community gives access to very knowledgeable specialists, which you 
simply can't have via corporate technical support departments unless 
you're fortunate enough to have your issue escalated sufficiently far up 
the hierarchy.

ChromeOS (based on Linux): I haven't used it recently, so I can't 
comment in detail. The accessibility has a relatively good reputation, 
but the environment is primarily designed to be used with Web 
applications, and more recently with Android applications as well. It's 
probably the best choice for anyone who wants to avoid doing system 
administration and whose needs are well addressed by Google's or other 
Web-based tools.

The conclusion is that there are advantages and drawbacks to everything, 
and that each person has an opportunity to evaluate the options and to 
make informed choices.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

