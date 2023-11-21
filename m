Return-Path: <blinux-list+bncBCVPTHE7K4IIXJXTVIDBUBCOEA4H2@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 2562A7F32DA
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 16:55:57 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-41e172143c3sf138807301cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 07:55:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700582156; x=1701186956;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DAsepapUwz5odnc8SSvfkkZTWqeAF53JanY2+xus7P4=;
        b=JnNIEpdPs4TyaIgQiUWJ6Hy4B5I9syU4Uv1SicfvU92/9hj7mIXMBc6BgXVVh3drgA
         EKoLb1b8yG9mshDCyz3zspN5qBtwKwV72PxPIr3f/Zf3nxKL8tFHPO6wWKF+hv/LMnc/
         pbv9Ip+upD/P1mICb/QvhXwE60SOR286WtWBOJX7plliUFWVGch8O2xMno7xI3FJZynY
         8DxFMBjCMQp3qZqv11nc45AGrdN5gAFslp3GFhha+AkNmhm5QxDRVgTAoPYFjtlZ9yGO
         Ll4ZknbjoeQyXZjs1Et0QEJTFPYs/1lx8jnOzwgclezZ7PpXZRCpdJ7XY3+41Nl34G7m
         Jt0A==
X-Gm-Message-State: AOJu0Yw3y3109WNDRhA2gW39bioqYZTZjejn7QhQRfLAvYhsoJRm7AQG
	h2BApVWdx+rvFdTJ6n29+duNIw==
X-Google-Smtp-Source: AGHT+IH5Mm6RxFvs3X4vu9x3i3F/ip2y0jh+llUD948X0399yFhYF3a0n1S0cctSUjxHznJKMd9+Dg==
X-Received: by 2002:a05:622a:698b:b0:423:6eea:34c0 with SMTP id ie11-20020a05622a698b00b004236eea34c0mr2996462qtb.23.1700582156140;
        Tue, 21 Nov 2023 07:55:56 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5704:0:b0:41e:89da:a6 with SMTP id 4-20020ac85704000000b0041e89da00a6ls727867qtw.1.-pod-prod-00-us;
 Tue, 21 Nov 2023 07:55:55 -0800 (PST)
X-Received: by 2002:a05:620a:c13:b0:76c:ea67:38e4 with SMTP id l19-20020a05620a0c1300b0076cea6738e4mr4325943qki.12.1700582155381;
        Tue, 21 Nov 2023 07:55:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700582155; cv=none;
        d=google.com; s=arc-20160816;
        b=fPyB/+SyOjqdc49e6xwOEXPUapw7Hkl0mah1toW1pQQQGvYV0n1lrKISBUo3ccCMYR
         ZPAGncq4ohHuGruab14YMGIO5GadJ9XDTfd4+vDCa7yUZig3Qk2mLhX/djHnbFiUUxjA
         STI/7uABu7mRO5Xpkr4PKVwLna2NnwUaRKJBUj9psHv5UFTFJa7iCykAv5V88JiHl85b
         xDmIqWrBdy0heJldyqvdL33xpHTwZuW2R94NH4fDom3KQZpwQZW/S+GlRcCj6KS8YOSI
         ibYzsz+ZTDex6VdkQs4NPWx2h2lzBPHDdzQYmTa0N94h/eCENWMBbNamg5Jv8HLgwExN
         ct5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=DAsepapUwz5odnc8SSvfkkZTWqeAF53JanY2+xus7P4=;
        fh=a/ESFSq2u0cF4x6pPO13g5BX50Sy6I7y8LZ4Hq+LoZo=;
        b=ZExHn254m3GvSOxP+KsHOvucUznZgvhWMyEgAOY9/SSwiMJN3F02QXQ4s0QIiEWFgD
         px49fpJrBSJzihk+lXVLiVcruDIB0aoI53jO3XIdqZ9hgVeDOPvcsU7wCljGuO0Df/Zd
         YEScHCPZWjoeoU2Q0JcVJ/63eUCkDaptPiR8UBhADLwSLj42whlHaCs3whGXxY75TPJe
         IkvTa9w2cpjSgbmOaT/Zu7tOES9OTFS12Wkl6YanhhR18VPcAvI1aFC5NiXwX2eGE/w0
         uauRAClElh7zRO5P9yAPOwLFn84BiZAbr2Hqh8qsdd5qFZzD3PwkPFTsWf/GWg2XBfpq
         7fEA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id bq11-20020a05620a468b00b0077d5f1df3c9si630916qkb.355.2023.11.21.07.55.55
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 07:55:55 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-191-MxY3VlNuN3q2NwU4XGRzsQ-1; Tue, 21 Nov 2023 10:55:53 -0500
X-MC-Unique: MxY3VlNuN3q2NwU4XGRzsQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A25D4811E7E
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 15:55:53 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 9F29B492BE0; Tue, 21 Nov 2023 15:55:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9861D492BE7
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 15:55:53 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6CBE029A8AE1
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 15:55:53 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-122-X8-5NgnmOHWPXK1woxskHw-1; Tue,
 21 Nov 2023 10:55:50 -0500
X-MC-Unique: X8-5NgnmOHWPXK1woxskHw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 028DE44FC9;
	Tue, 21 Nov 2023 10:55:50 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id B08861001AD; Tue, 21 Nov 2023 10:55:49 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id B02261000B6;
	Tue, 21 Nov 2023 10:55:49 -0500 (EST)
Date: Tue, 21 Nov 2023 10:55:49 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: "Jason J.G. White" <jason@jasonjgw.net>
cc: blinux-list@redhat.com
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <21c25ba1-3763-4950-a07a-f0ebfad1fec3@jasonjgw.net>
Message-ID: <Pine.LNX.4.64.2311211049090.3574401@users.shellworld.net>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
 <20231121000352.GW23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202007280.3564917@users.shellworld.net>
 <20231121024247.GX23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202159420.3566012@users.shellworld.net>
 <20231121035449.GY23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202309160.3567236@users.shellworld.net>
 <21c25ba1-3763-4950-a07a-f0ebfad1fec3@jasonjgw.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
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

There is a fine discussion going on over at DOS ain't dead about email 
options  from providers that still use a web based interface.
Even if gmail supported say elinks..something I discovered the other day 
paypal  can do if asked, this might be a different discussion.
Links has a DOS compile, complete with some JavaScript support that too 
would  be fantastic if it spoke better.
little things where someone decided that access must fit a certain box and 
nothing else.
My personal apple information experiences have been amazing, but that does 
not make the system as with Linux, safe for my use..or in Apple's case not 
with most recent hardware.
What concerns me about google's decision is that many populations 
appreciate the ease of basic html, having nothing to do with how they 
physically embody.
Taking that away so Google can control devices?
That is frankly concerning for entirely different reasons.
Kare



On Tue, 21 Nov 2023, 'Jason J.G. White' via blinux-list@redhat.com wrote:

>
> On 20/11/23 23:21, Karen Lewellen wrote:
>>  May be one reason why I am unsure I would personally use Linux as my only
>>  operating system, even if I could.
>>  its wonderful magical clay to be sure, but I prefer just buying the cup so
>>  I can get a drink lol.
>> 
> Having used most of the desktop operating systems currently available, I'm 
> not enthusiastic about your options.
>
> Microsoft Windows has good accessibility, due to decades of investment, but 
> its reliability and security drawbacks are significant - and it isn't 
> UNIX-like, which is a disadvantage for some of us. Windows Subsystem for 
> Linux doesn't entirely solve the latter problem. Also, the MS-Windows 
> community is full of non-technical end-users, which can make finding accurate 
> information online difficult when you're trying to solve problems after 
> something has gone wrong. Whoever decided that 32-bit hex error codes were a 
> good alternative to human-readable error messages that genuinely describe the 
> issue made dealing with problems under Microsoft Windows more, not less, 
> difficult.
>
> MacOS is UNIX-like, runs on excellent hardware, but the accessibility support 
> is not well maintained. Expect bugs to go unfixed for years, and for the 
> accessibility to be perpetually beta-quality. Given what I use it for, I can 
> work around the bugs - mostly.
>
> Linux: if you know your way around Linux system administration, and you're 
> prepared to work around the accessibility limitations, it's reliable and 
> flexible - still my preferred environment. The graphical desktop does what I 
> essentially need, and the command line interface is excellent, a major 
> attraction from my perspective. I am hopeful of further improvement on the 
> desktop side in the coming years. The Linux community gives access to very 
> knowledgeable specialists, which you simply can't have via corporate 
> technical support departments unless you're fortunate enough to have your 
> issue escalated sufficiently far up the hierarchy.
>
> ChromeOS (based on Linux): I haven't used it recently, so I can't comment in 
> detail. The accessibility has a relatively good reputation, but the 
> environment is primarily designed to be used with Web applications, and more 
> recently with Android applications as well. It's probably the best choice for 
> anyone who wants to avoid doing system administration and whose needs are 
> well addressed by Google's or other Web-based tools.
>
> The conclusion is that there are advantages and drawbacks to everything, and 
> that each person has an opportunity to evaluate the options and to make 
> informed choices.
>
> -- 
> You received this message because you are subscribed to the Google Groups 
> "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to blinux-list+unsubscribe@redhat.com.
>
>

