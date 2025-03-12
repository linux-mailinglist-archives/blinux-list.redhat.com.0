Return-Path: <blinux-list+bncBCVPTHE7K4IJ3A6EXYDBUBBBPOXUW@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB16A5D4D1
	for <lists+blinux-list@lfdr.de>; Wed, 12 Mar 2025 04:38:07 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4766e03b92bsf71726141cf.2
        for <lists+blinux-list@lfdr.de>; Tue, 11 Mar 2025 20:38:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741750686; cv=pass;
        d=google.com; s=arc-20240605;
        b=k+JGSYR9BcxmXAZQtlMu0ePxZsQa7itrZfMgwJzcHoTvLuo7bETtzpUAPNypsafWpy
         w3XB9XJ70s7L7qyAqw7DLraj+X7E/6HbjI1/E91hhzpJ9K0fV4JXeoejz5PS3S0I7mUj
         +Dhrbf1RwLzSRTm7BUNEg4Yps/g59VHN6FlXmM+H3sANapZ3rZ6yxWexGbgR5EX3zGuj
         0aXtgc7yDoIAP9iFt1AkU6s32ITCQ/vHx4CvBEDBAfxld8XqAE9pf5l7BaEdXqpFigfL
         Q3SzqFSzMQ8Mp0Qe91SMXvHp78z/qMz6ffx7oZSxxFJABmYqF0LfiPjAQH89e4sDq4G5
         aGWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=MDM38jCFN0BBTEGuz5M6ly7eRdlC235D3hQf8nA+CNc=;
        fh=fVCqWIu9BbqQiDYUpf9BmjJIybIkRaiaGJvDGbqFa2g=;
        b=jtTUejJVijmURjiLnjlm4rJrW3DquoC8g+6cZCCl4ykSx2nIX9eocaZHFGa7GpCJL5
         fEsRz58xDcksi1o1YdxvzG8WN0iiPBS7uVXkJM0fwfWZhjXUb9ftG+nCY7vktU4OGhJ4
         +E0ysfcYpbHPQHZKlM/cWexpUrljU2kr7Rqeoj99srRx9Bp+dkN2YZ4bN9/AGrH2lMQF
         73/4xP8J0jkAiS4Ss7LGFKK2Lqr3vuRXZZ4vffxwTsyaPA5LUkkYUKGZLScMqHu7Gl/G
         XVVaJbvbWrlO8aOt8IEvuvx/WQCAT41BvWBjZV5gdKAV+NdUPE2v50w9D5ydsmeB2m2x
         +LuQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741750686; x=1742355486;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MDM38jCFN0BBTEGuz5M6ly7eRdlC235D3hQf8nA+CNc=;
        b=lQtRIdiBuKktpNXdxf75Q07dmDwKFCM8HNHFtGhQxjZoFTvIyhVv7ecQO27jxtdpCK
         sF68YbIPTuI90mpbh4DCWDKyM8Ff+ST1DUgGOcplOLMugbYRU+5bM7wa9mQSWukM47ge
         IVyHAfKfTZEpwWbmQagVy6nJ3IxZ5TXdcRlrWYBjm1vhrF5UXbfG6rq6JtarfPy0VXPA
         bmCANgRX6yc1+e5TIxZDEyE6mqa9Obv8HYsWz0gXGrOQXDKVmvzHEED8WfBfYOtsaGqL
         6JD222SjECQuEir8MTr1O4GSgQOPzHi4x2U1x9Lga0cp8FrqespVQngAWj0UQxP5aIKA
         vihg==
X-Forwarded-Encrypted: i=2; AJvYcCUK/SdcRHq8QUxgC1JbUzoxCTCIHkTd9hmHhfDgaB1qSqzPIGpJNcf0G9Ysym6b2BJXa9JZTg==@lfdr.de
X-Gm-Message-State: AOJu0YytEadBPuTrOerAvU1Cv5GBuGIcCtWIP/gTrXOTXJzDZ4Noecb9
	ugQ3kuqiT19Bwcpix88fRKhSS4w65MgnuXKr4bIARJN/0gQLYt5wboKIKvi4t1Q=
X-Google-Smtp-Source: AGHT+IEZbd+nvmcmDJjuOBzlL4N1c6Eq1WbVEomMhf4s5FcA2Qm2rJTDK8YsJHslD8lTuMBiKnUCCw==
X-Received: by 2002:a05:622a:355:b0:476:6215:eafc with SMTP id d75a77b69052e-47699502529mr76912461cf.22.1741750685940;
        Tue, 11 Mar 2025 20:38:05 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=Adn5yVFbHRlJ4mQQbhWpCHwvQ+dnqE/u/q36szz20atzL1PtdA==
Received: by 2002:a05:622a:245:b0:475:18c6:4088 with SMTP id
 d75a77b69052e-4751a1330acls29761841cf.0.-pod-prod-02-us; Tue, 11 Mar 2025
 20:38:04 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUPG3f6ltoW9C+8nRDs2CS7Db0t9YdCuC9dZjYDQpE4QvIVnAv6xuYv8mgP9sotf8Sp6dF3agBkDFTZBQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:8706:b0:7c5:4be5:b0b9 with SMTP id af79cd13be357-7c55e89a129mr847444585a.28.1741750684702;
        Tue, 11 Mar 2025 20:38:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741750684; cv=none;
        d=google.com; s=arc-20240605;
        b=aRYlKsG0WYoEkYI688YwaWFXOlKN1/+zyU5H3YoXHCH5Sfi9N0ns4Je2TqxDig5DVX
         ClLRLD+IDuz17F/t2TAgQp8crag9Fb8Q7ETt9zD/qpJ3CoyLqu7jilbOixKA7M8sVkRH
         JIRhhheZKLZjg4Yi5h8Hzwr0OU2xkHUPNmmkILmAJeCYrsVuSbHKsmbmLHTC/FS5L99T
         Uc3JT27EEnr7yX3WysQnbvGx0EDgoUZRbvr6DtFQDMTgr3Ip31fW39CVKILRRB+iDkE3
         4GS/0kmf5Zo6Nx8439vp8AjXmNxmU7nsWIA8PjnWToXXliPGA+lLimxwgqwPjkY5vVZQ
         4IxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=MDM38jCFN0BBTEGuz5M6ly7eRdlC235D3hQf8nA+CNc=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=OEc2AMplsVhp8PE1AnK6wYosajkt8GwF4RNAg+hy5BsM1RceRIJklt8jr4HezWoixA
         lWUsn97yRt3gqUAvq44q8++Yf1ZledmTcQm4rL/78ZH/cxG8EU0HXQDDWD4e84nUzsZg
         jKRPraTyRv2XAE1+IWKRal/xsjdG2ZCtOal+KgLcXtV1t7h8goWdWlUSfUZrrc7A6Vjo
         7/ik6TQsTimC2Y9ffFj6VA0ZTLny4XMKwnLc/DZCgYDX502DODR+/vWYPOXHVZh/TJnu
         TxTtf/O1qfyLd8BCjkUYGMr6c1gR626a7qB91pbITP2q2gT98syGeu8GT+PHXljNzEcd
         UGIQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id af79cd13be357-7c5498ddf67si711329585a.79.2025.03.11.20.38.04
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Mar 2025 20:38:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-12-PncgEUCvOwOtGaG7jHefSw-1; Tue,
 11 Mar 2025 23:38:02 -0400
X-MC-Unique: PncgEUCvOwOtGaG7jHefSw-1
X-Mimecast-MFC-AGG-ID: PncgEUCvOwOtGaG7jHefSw_1741750681
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DADBE1800257
	for <blinux-list@gapps.redhat.com>; Wed, 12 Mar 2025 03:38:00 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D65EB19560AD; Wed, 12 Mar 2025 03:38:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D395819560AB
	for <blinux-list@redhat.com>; Wed, 12 Mar 2025 03:37:59 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 99CD21800EC5
	for <blinux-list@redhat.com>; Wed, 12 Mar 2025 03:37:59 +0000 (UTC)
Received: from atlas.bondproducts.com (atlas.bondproducts.com [23.24.6.165])
 by relay.mimecast.com with ESMTP id us-mta-90-yaTguxiSMTCAEFW31Rk66Q-1;
 Tue, 11 Mar 2025 23:37:57 -0400
X-MC-Unique: yaTguxiSMTCAEFW31Rk66Q-1
X-Mimecast-MFC-AGG-ID: yaTguxiSMTCAEFW31Rk66Q_1741750676
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 2675040508
	for <blinux-list@redhat.com>; Tue, 11 Mar 2025 23:37:56 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id DF2B71001B3; Tue, 11 Mar 2025 23:37:55 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id DBF8110008E
	for <blinux-list@redhat.com>; Tue, 11 Mar 2025 23:37:55 -0400 (EDT)
Date: Tue, 11 Mar 2025 23:37:55 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: youtube dlp?
Message-ID: <Pine.LNX.4.64.2503112329560.3552976@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 6OdRTyGIRacbT8gt61YKLzGETSIpXqhk72QAbfDYNXQ_1741750676
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: V_AM_gHrSI55XMpYYQT0GinKR66u6yyPWc9qmDWYxGc_1741750681
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

Hi all,
We have an install of YouTube dlp, which is, according to the message 
presented if I type  YouTube dl, intended to replace that program.
When I  try using YouTube dlp, there is apparently a syntax for searches, 
ytsearch followed by a colon.
Where I am unclear though, cannot figure out how to trigger the help 
function, smiles, is how to provide my search term.
Personally,  I   am not interested so much in getting YouTube videos, as I 
am 
in the convert to audio features which may exist with dlp as it did for 
YouTube dl.
Anyone use dlp able to provide the syntax?
Thanks,
Karen


