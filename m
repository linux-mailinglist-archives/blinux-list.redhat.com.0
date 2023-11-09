Return-Path: <blinux-list+bncBCVPTHE7K4IJPEVVVIDBUBGCMASBA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 090847E732B
	for <lists+blinux-list@lfdr.de>; Thu,  9 Nov 2023 22:03:21 +0100 (CET)
Received: by mail-lj1-f200.google.com with SMTP id 38308e7fff4ca-2c52cbb64c9sf12968691fa.1
        for <lists+blinux-list@lfdr.de>; Thu, 09 Nov 2023 13:03:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699563800; x=1700168600;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tNKEnD/2KsgG+OWAU5rOIQksP/yYuaUd124R7gGnC68=;
        b=NfSkq2Q7mMk6NZhurjnik0Qxa12VPrztiF0nR/ZxHlwuGP+hHy8EuyY36lnKc13sjo
         G8BBTFoW633ye3MeORH4gKY65bRU3rLgfkvnrMdfikfu0GfO+Ge7F5MJ2w8NH4boHwwq
         ZzIHAk8Gtlw9uLbCuicT7BJgx2Zhc2CIu5QQoemL3x9kp8E6X1jnQKHaJC4//D7MF8IM
         bTwWMzQUAeX0jg342FtNhrCxx7XombL9WZETe9icpXpnLFIlG/vC/PNs3VkhWbkv7yFT
         CV2kYmxeVCuEg+WZ/lYD87m0suhSfqgg+TqP/4KSo83Le/YhrE8hfS+SMq3HOKwQ+UZL
         oZUg==
X-Gm-Message-State: AOJu0Yzd/xXfeEBlPNgUWffrO8g4Z0l4ktxD0gwuQAU2c9iOcsnJ080B
	eJzal0POzndBoZapAbWlGKo+Mw==
X-Google-Smtp-Source: AGHT+IEL6wZQBepLOwRxLMyHK1I1zPi0MebvN2My9KrTdEyCqbaTAXEmV/xidRWtiC+Ay0XjjTe0og==
X-Received: by 2002:a2e:1445:0:b0:2c0:9bd:c6f with SMTP id 5-20020a2e1445000000b002c009bd0c6fmr4802653lju.41.1699563800077;
        Thu, 09 Nov 2023 13:03:20 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a2e:b52a:0:b0:2b9:631f:ac29 with SMTP id z10-20020a2eb52a000000b002b9631fac29ls500277ljm.1.-pod-prod-08-eu;
 Thu, 09 Nov 2023 13:03:18 -0800 (PST)
X-Received: by 2002:a2e:9916:0:b0:2c5:999:de64 with SMTP id v22-20020a2e9916000000b002c50999de64mr4684640lji.16.1699563798070;
        Thu, 09 Nov 2023 13:03:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699563798; cv=none;
        d=google.com; s=arc-20160816;
        b=cJFBDjXiUxa7ddJy0jVgzJPDC554NL7nFyo98IeEQ0uO+EX9sTqG0m6OHNtRI9bQH0
         Fr7mbfJuu6+ENf9K6E2t4Ra3F2IL5b9zyrkQXRCUop6tVk3G8gQFCommVEMpIrAqF/YO
         gWGEcQELcFCZGRFn0lGuhBPjBKonsWYFoLfFDFGDGQa0zlwQor/SApt7Y4E9+Foxjmz6
         V9Bt7EaHoMx4O2NxuXLvl0TtCPoejchDc8QAidAeVlSVMW1vbYe1Bu02a88kbA7Jy/tb
         QW80tzehUNufO59FDOMN8Q2MmpOOAcUZoj92rk8n/caoYDjMKNkjsN8StKVh/YfOOxLD
         jH1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=tNKEnD/2KsgG+OWAU5rOIQksP/yYuaUd124R7gGnC68=;
        fh=fQue1LVswyroBUi493FuNRGs2h1etDPzgwP/d0K1aSw=;
        b=A+ImK95Gp9gmecgJtNrwpDTL4jdviOgRHk1T4pHU1z1Dx3Z55VUryfSLr1KR3VS7pu
         aR+Cx3N6RNBC1wj3X5qWi9DPdPuRiWq40nbf0KKYFdIbwLzaYPXVoMkFDJStkXElUz5D
         Sz3AmHyxrzZnN8LI+p4AW3AXLqaagvZUg1Mm4DIKfEtSPYY/qBbxQyCy+O5Pa/2iSs3d
         PALhV9j8SG+1uPa0DQ0/r918poPq+sXsi7IgyyknDgnEv6hbohZj4aSgbxpHkV4Cmd5h
         p+G/T5Cn1zn2hBpelWatRuWZkFHdGvzp+0PL6eXxoliWWTkYbm8Ef0u6hqCKbHoJUGy1
         +XLw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id c26-20020a7bc01a000000b0040813e14b47si1942089wmb.182.2023.11.09.13.03.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 13:03:17 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-480-P4szDtQbOBanth4l87d96Q-1; Thu,
 09 Nov 2023 16:03:14 -0500
X-MC-Unique: P4szDtQbOBanth4l87d96Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 93AA93C00097
	for <blinux-list@gapps.redhat.com>; Thu,  9 Nov 2023 21:03:14 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 90F6F1C060B9; Thu,  9 Nov 2023 21:03:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A2911C060B5
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 21:03:14 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6B2E2185A781
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 21:03:14 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-423-3kLCNMy7PjCH1fY85seaQw-1; Thu,
 09 Nov 2023 16:03:12 -0500
X-MC-Unique: 3kLCNMy7PjCH1fY85seaQw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 55F5644FC6;
	Thu,  9 Nov 2023 16:03:11 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 1A65F100B35; Thu,  9 Nov 2023 16:03:11 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 1A01A1001A6;
	Thu,  9 Nov 2023 16:03:11 -0500 (EST)
Date: Thu, 9 Nov 2023 16:03:11 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: insuring alpine's setup menu speaks?
In-Reply-To: <914d2b89-e0fa-7eb1-bcac-fb51fd255c59@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2311091602230.3313038@users.shellworld.net>
References: <Pine.LNX.4.64.2311091532130.3312735@users.shellworld.net>
 <914d2b89-e0fa-7eb1-bcac-fb51fd255c59@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
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

Come to consider, let me ask about the roles function in Alpine.
Anyone use it regularly?
Kare




