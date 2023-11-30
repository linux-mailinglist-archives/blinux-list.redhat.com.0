Return-Path: <blinux-list+bncBCVPTHE7K4ILVK5AVMDBUBD6OQ62O@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1047FE870
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 05:55:24 +0100 (CET)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-464581f947esf136716137.2
        for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 20:55:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701320123; x=1701924923;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jfgS/4TfTu5+Gr5QzUaF5vwhM02vvLlJWNAZHF51M1A=;
        b=q9cLjpipjuSKaX0Ottw0+OoSGqigYtNAyCdSY9CgXLJAqnDqEEoM2cAPAOP3hwe1V2
         XlAePMJo1ohKhunhFMj9oPpyyntnDpiInt+mz/NE6qbqeiLVN5MW/7aphn6Vth9JjnJY
         n5rpNQO5NmUkdAlk1M6SELu5LqezCLwgqixoS/pC+4fTW+tlOjyU/NGMG3MMGzv2i0vV
         gPBx6uaew9WfkIbP/5/HzkMHEWOvEV26yrGYSYfgOEzWE8pJiumqhrqdvXScCnEscpEa
         j0V3Ba/AWSK0tTG7SX2gCFDtaH0o9KpruY6Q7kSA0DHDLgaFZfrxLntpRQd0wytZDuXC
         94gw==
X-Gm-Message-State: AOJu0YwF2m6vvX2tdf0MeR8Brd0aYsPzmuOy8cLIYQi2vDPZyKRTAUWI
	Xw1wm/NfijEe0iEMIRporjeVNw==
X-Google-Smtp-Source: AGHT+IE4xhVa84yDDJm8leEhqOcazOddsGHIJAF+mqYGcEGBrLM+bI/dY2exbBCG67nfgrLLZh30fQ==
X-Received: by 2002:a67:f7c1:0:b0:45f:3b30:9c95 with SMTP id a1-20020a67f7c1000000b0045f3b309c95mr18497809vsp.7.1701320123091;
        Wed, 29 Nov 2023 20:55:23 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:55e7:0:b0:67a:5831:ea2b with SMTP id bu7-20020ad455e7000000b0067a5831ea2bls938900qvb.2.-pod-prod-07-us;
 Wed, 29 Nov 2023 20:55:22 -0800 (PST)
X-Received: by 2002:a05:6214:927:b0:66d:2915:4682 with SMTP id dk7-20020a056214092700b0066d29154682mr20079001qvb.9.1701320122345;
        Wed, 29 Nov 2023 20:55:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701320122; cv=none;
        d=google.com; s=arc-20160816;
        b=0LkHg2bSHdCWhf6/82fs3wbIFsNcuuPCres9K63WcQds+KyZ0spVku84St00TwNKIu
         JvLO48U7PvlRJu/9IlxGxWV5Si/u1yV/lmf3ziWurgiMUPSlptElmBxIaZICQbhXYQIb
         XpGF4F9aAoyfHoJa/OJeWRWzn/bX82PHme9moUZWh+PLbVUDDHJ+r8w8zGLlpJawVetE
         vGfn+c95OrAa6YmxlWaQ9O10qzaf7aRxXRfIgDvD5eV2t0M72iwnFOzrlNTa7/aXfa9t
         4BK+hnDFGBnmphRhzrTraN6jKihnHPDfRe3NNzRd1dFV8LRqj81KBL76ArnmE3iiWZee
         3/Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=jfgS/4TfTu5+Gr5QzUaF5vwhM02vvLlJWNAZHF51M1A=;
        fh=y/YbekFG22edERQKGxN65Pv5t1bJPotRFgGRwngzQYQ=;
        b=jLbplAfHKgjH5PXrOteO36KKBZUkBvavkQA8fqCBv5LQ8HehURraR+C6wxjM9NGNVt
         94XOPRc6GbbwAmUQLiI8YROFcztcenDABlWoLBmtmV81I6jlZPynsUV2WWsVXLHDUQDw
         n+OyrFLm/wayCmPDthGK8zySgUFaTXUzVz78kxauidjGoJVCpxNVNRgfgjKpWLOQw4U+
         fQ6OcRvRXw9Ylmpio6fxY5uDpU/j1VN6EkoDXuRUnEzfJS7wAnY2RS8erEh2+32YvBzk
         SakUoN9XufTFSL9so4vqO4q8Tl4s368q03YryPKIBdFRyYFGlboy8BRoxtTDIgm77R7v
         9atQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id cu8-20020a05621417c800b0066cf06339c8si280833qvb.197.2023.11.29.20.55.22
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 20:55:22 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-48-VUSCtVKZOJyaQDyBz-FSeA-1; Wed, 29 Nov 2023 23:55:20 -0500
X-MC-Unique: VUSCtVKZOJyaQDyBz-FSeA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7411A8007B3
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 04:55:20 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 7129B40C6EBA; Thu, 30 Nov 2023 04:55:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 696BD40C6EB9
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 04:55:20 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4E4BA811002
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 04:55:20 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-331-7EhnWhB3ObmgiVi0glmBgw-1; Wed,
 29 Nov 2023 23:55:18 -0500
X-MC-Unique: 7EhnWhB3ObmgiVi0glmBgw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id E813E44FC7;
	Wed, 29 Nov 2023 23:55:17 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id AFB231001B8; Wed, 29 Nov 2023 23:55:17 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id AF36E1001AA;
	Wed, 29 Nov 2023 23:55:17 -0500 (EST)
Date: Wed, 29 Nov 2023 23:55:17 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Jude DaShiell <jdashiel@panix.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <Pine.LNX.4.64.2311292315300.3720576@users.shellworld.net>
Message-ID: <Pine.LNX.4.64.2311292351310.3721152@users.shellworld.net>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net>
 <c9277002-d894-203e-511b-952f27c98048@panix.com>
 <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net>
 <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
 <90a6a2d2-2645-e21f-f896-d4aac3a998a0@hubert-humphrey.com>
 <Pine.LNX.4.64.2311292315300.3720576@users.shellworld.net>
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

Chime,
while there may be a faster way, one can turn on numbered in elinks by 
doing the following.
open elinks by typing elinks.
select the escape key.
  that brings up the menu bar.
arrow right until you hear view.
arrow down, and you should hear toggle link numbering.
likely with a space bar?
hopefully I did not miss a step.
Kare


