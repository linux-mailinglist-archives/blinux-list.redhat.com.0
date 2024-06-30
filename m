Return-Path: <blinux-list+bncBDM4LSNO5MHBBEODQS2AMGQEI6U2T3I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A3A91D0C1
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 11:12:51 +0200 (CEST)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6b22e2dfa6csf31396026d6.1
        for <lists+blinux-list@lfdr.de>; Sun, 30 Jun 2024 02:12:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1719738770; cv=pass;
        d=google.com; s=arc-20160816;
        b=UoVTgijOlZdw5lAGT1WzWnj9FgWBISqHMsJ2Te6kesrqsf5/xdzB1z0+QlPTcIey7U
         qzC5gVGseADRdKSXLch1+6YWxjsCgDuzuFxtRyBhVqsNhoOCbAML0E5cMDMMjzDTs7hA
         F9tKZIU3hMVBV+0xtBSRnZtQ+T16HXAAcmZrRt73ZbBnP85+e62kUv+qUlTjnK00IbOO
         gqJ77k/pgl2pVcs1XQbBNITdviNddYwL+WAxThRbMzZmfbfWxutiBSrDLaLVvbkt2hK0
         L4kimgWrVw6zNPd2M0u6T6Nn4JnnzVWvnTIbs7QWqxPSVP57ctHEbA9yfzZX6MBH7XHs
         q2fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to;
        bh=O7FJyT9DhAI6r6nRv6LSSEfQcmKr+gmiWOR4bWJt8go=;
        fh=7E2Przm50WWbu85nUpgclb1q3Sql+KGmwxEx8zRZ7/c=;
        b=bt2zsffWkJ7jvAzTLL6kMu/TqocrAL+sCf2HMDl6SR/0qaeBkQFl8moL75HiJJi3Km
         05QnsMJY/TV71oFzUSGY1bF4Um9Gwif+4IPa2BNIcpF872+tlu7Xhcg8SxzPRVGLUlTM
         NMmfGL34+Qd8buh4uIG2WjTsreLHiLI/VSWBqkJ3ccZj2MIlWQNS5QSIlkRR4R4gLSVO
         7nsTXKTNA7nyITAibRBdFHcaEV9rIhB9SR7UHdh5+Ed3/aw3Y9gcUKrxkK67YpuW8SVQ
         YxJIWSA9R/r//HhwbMNSMfU6H7aDzUPrbZgMyGLK/ZKs4DnrLZvC0Zan2DxrRpZdB472
         8dTg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719738770; x=1720343570;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O7FJyT9DhAI6r6nRv6LSSEfQcmKr+gmiWOR4bWJt8go=;
        b=AFYh+nzh8qr4/eydjOJJa/SozqVhzpieN92f7Z866XFAaZMKYuY5kP0vud5DkcWM4/
         GB0RRd1coID43j/G2wWmhxCMRIfhdHAsO4t1U566z+PpjKVhAdcsY1wSktsSWAPQ5R4g
         r9bNpJVifpE2ETGJbnJRPCvmAW+OHuOmBx/FTDyB5k5YcxDhGo/h1TgIA0nL0OYlQoQD
         5Htpytya+vWXpfbzhskWt4fGvfRNz6tc00Tdb2alOXN+V7kF0OXUsofdDDUduvG8QiTP
         xzhEnfTaEixFn7fSVVZ1zDyw5Pgtqiz1WjjgLPUubJIMTlp4LnL6W2zaCQHA+EalcqpI
         jsGA==
X-Forwarded-Encrypted: i=2; AJvYcCW2e8TFJxYhQ8s0/Pi9Obme3OGVs/E971a+id5AjF7eoExOmJsis7fy79De2voXdAKsye2BjymeM5BBIPSJ9EpvG5tQ4SQ8+NAH
X-Gm-Message-State: AOJu0Yy60jitqP/82BeWV6Kh6eYPJOfmmHPZqHazavxgxtzb1on4XK2g
	0l8O4IaCsUYnpcaWB5TanlmkKLm2hejL8OpTac6+AwapGCW3C7Qtj4bU/lmvbHY=
X-Google-Smtp-Source: AGHT+IHLcUSbzyx0exCML1TffwVvytKGZ8Dxm5gnK2aCoNNMPzZgCiZ+n4QVwskd4p6L4j0a7+yAtA==
X-Received: by 2002:a05:6214:d0f:b0:6af:6799:912c with SMTP id 6a1803df08f44-6b5b71a2476mr30828426d6.54.1719738769896;
        Sun, 30 Jun 2024 02:12:49 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:4008:b0:6b0:7204:3b2 with SMTP id
 6a1803df08f44-6b5a4c8b48bls32804806d6.2.-pod-prod-09-us; Sun, 30 Jun 2024
 02:12:49 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXakliW5m5aBFqUkKNB3jsyUS5wgDHYIEws3Spc+ybFCwIwKEaHqVwf+OY7113srZdIDmzgeVjmaHmLh3M4WJLV6W+zPJWERFiPHKre
X-Received: by 2002:a05:6214:e85:b0:6b0:77f3:be9a with SMTP id 6a1803df08f44-6b5b71bbd9dmr33358156d6.60.1719738768834;
        Sun, 30 Jun 2024 02:12:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1719738768; cv=none;
        d=google.com; s=arc-20160816;
        b=zNGRqY4azRbt4Ih3NYh3jvTw+VEANfYazkZTPo4dobwGX+BopicO/zYeDAW/5fj/n3
         6EYhe3UYQHP+QBOUdjGScIk/2YYhjhGMCX/dFptMq8OvqPL676elb9VTftEDqfW5Xdwb
         A+bYCDRktgOMo4TmoQRsOaSdXPI3bllbownA/g8/NwGhpzy2Bh5KQmcRjxHQ5klwpiyC
         9w08a/cx0cV1qxSDKrpP6N62VUgf0DPw1Rk8leezf7irQzU3r/fqoIAp6d1xGIbaxfAj
         p7jE3nuA6FOn1iOkEJoek+6zYUl5DgVHvkF+dFOiJXyPwQE9FOW/T+tevMkysrcEmyba
         rE7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=QfqaRlND7Lh/CV20NkrER5ygpm8gj0SHVH76/wYZFIU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=AcH8LDJtv520LDSHyiNDhRv3SS+otUMGWW581Yv01ZTH4GBFhbcahsNc6Qbe+LoqYW
         v8JuZ7oO+/g04e2RFzDSerDs31XELCRDxOW/b8MrUmD099g5uGkEU4N//Hnu3AJZ9Vji
         XX19pBfhnKDxNKyAsFgyGD9MtuWcKaUAVqBYLveCm72VF6Ml00UAek96EdaRDa1YDYI9
         pPtwekmSkbRVk3kpSsAy4KA/FQySL7WUllLbgwUbPIzs8ig0sPcG3N1HsXRcod0vT1Gf
         291z+XxnEHPNqXkg2vH3idTLwb5KdKnv5rY5x0bhvOXOUIltSY5cC+D9TVgxpKGeF+Zn
         g7Qg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6b59e363cb8si57570646d6.1.2024.06.30.02.12.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jun 2024 02:12:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) client-ip=74.208.4.200;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-653--8_LaYE0ORqGl0sjnOZV1Q-1; Sun,
 30 Jun 2024 05:12:47 -0400
X-MC-Unique: -8_LaYE0ORqGl0sjnOZV1Q-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 875751956080
	for <blinux-list@gapps.redhat.com>; Sun, 30 Jun 2024 09:12:46 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 795B11956048; Sun, 30 Jun 2024 09:12:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 76CFE19560A3
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 09:12:46 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D29DD19560AA
	for <blinux-list@redhat.com>; Sun, 30 Jun 2024 09:12:45 +0000 (UTC)
Received: from mout.gmx.com (mout.gmx.com [74.208.4.200]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-659-r6yQOLvkMhyr51MsOafBaQ-1; Sun,
 30 Jun 2024 05:12:43 -0400
X-MC-Unique: r6yQOLvkMhyr51MsOafBaQ-1
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([195.16.11.121]) by smtp.mail.com
 (mrgmxus003 [74.208.5.15]) with ESMTPSA (Nemesis) id 0MJAFA-1sQblQ0htC-002jkC
 for <blinux-list@redhat.com>; Sun, 30 Jun 2024 11:12:42 +0200
Message-ID: <b2b41f63-ae2d-4f7f-8251-3f7cc1aca980@mail.com>
Date: Sun, 30 Jun 2024 11:12:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: solving missing ptr record issues?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2406300250190.3202225@users.shellworld.net>
From: "'john doe' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <Pine.LNX.4.64.2406300250190.3202225@users.shellworld.net>
X-Provags-ID: V03:K1:HclzouDxM75SCkS6HT+qOchKkps2f+6PtpubxieM0sDslzqm+cl
 hAZaJat5ixFaFZ1AGAtt1UNqLXxNpiLVOtT2teTS13Ag6mHMbmOMrwZthzNu9155TNDz6tD
 Mw3Z8I1VA7HPah+zj+03DCTKfNN7RYhuizCLQCYj0c5S0z3VaOn8EHEF5pxADGOwQN4Iq8S
 njvSyqyg33sQbAcgG52NA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:cZrxVKw07cM=;9y5iLLJ6elXqfZ52kcrTjs5nJlA
 JoF16KELM7P2eJurdj4kMK/hJNDV8bscXHCFn9Aeo27ca+bpn69pAXapWNWVXlEKD6/3bvJ9/
 LJ5TUuyKOtfDrzv/ke/WEcluXkb40xnHqR5nbB0Y/nx7vycjmjcDz9saSYzLIYYcFjo6KMGgO
 arc+RWqc74EFFRvdIlqiP7eh84izt0qHPgYdJSAxUqEgjuoAyvuSxx7dm2RRAMy5hiBeBSLAW
 dxE3I4aKqQKg/4h6gvosPPiZ0l5pyUE2JQKezTc/tbct9Esw53Q7PGeXrOUNDV0bI1LyFuW6i
 K/EVHVH+o+DCLYZ+qJafX4uw4nlg2YJZm00K7QJCHt7mIAhAkacRHQLq6RdTrg2/ui8r1VINu
 ne0tupFUVC2CU4h0wUCQHsN2vGKuiNHY+UmtFDwioUIsABt9rns7eRmI5nOS4gFlyJ5wFUWRb
 Pv7ULKckOCkbyhUoQjMlnsP0mR9TjTdEKbnXoQkm2FVj50shKgqQDGL1Ypnj+zmTFd6Dmv4xR
 XjTSs7twI1tsZaYJKPGAoXXWRPulZqpfjrnAenw2xtES24L1r2+F2oCMW488DkyXZ7UffxWXF
 6hfsoOz9aC04bZxh6i9ak+pwjDyr7hujblY/BVAxjC0SItVMtjcvlU/xRO2TWXtAAXQIznQeo
 v6RCi5mK/OAvtD1Wy6A3goJRPpRDOaRJ9N0cqNo9GixtlYu+/F7ti7+JpkFt1Eyt1wpJukv15
 ewM+ruPBKMmt0TtyIf4mUTcWPdaoGZdhCEcVWgREnHtNiykEDfY2ScOrJroLKIC39c8XAYZO5
 GXi2GJ5/7IttTfhQm30Dl/c9bxDABUtGkJYCo8njYziMI=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Original-From: john doe <johndoe65534@mail.com>
Reply-To: john doe <johndoe65534@mail.com>
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

On 6/30/24 08:57, Karen Lewellen wrote:
> Hi All,
> Rather than rant about Luke Davis's=C2=A0 refusal to insure individuals
> using his services are not flagged for missing ptr records=C2=A0 for emai=
ls
> sent using=C2=A0=C2=A0 whatever iP he is using,

What are you talking about, we have no context.

I am hoping there is another
> solution.
> For me personally, it impacts freelist.org lists, gmail, private users
> etc. for my personal work website, and my shellworld account.
> What I am hoping is that there may be a way for my personal site email
> to be managed in a way that associates a ptr record, for that specific
> address..I cannot even write my landlord.
> Is there a method that can correct this issue in some way?
> Thanks,
> Karen
>
>

If you want help, please show the output of the issue and how you expect
the issue to be fixed.

--
John Doe

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

