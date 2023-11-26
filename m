Return-Path: <blinux-list+bncBCW5NIVR6ABBBEH2R2VQMGQEJKE5ZIA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E4E7F9596
	for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 22:48:01 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-67a1b968893sf35164636d6.3
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 13:48:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701035280; cv=pass;
        d=google.com; s=arc-20160816;
        b=ri7E8hiUTdlEuk7pJOvtBFUheVIytg7BkBqog+5sthfx6xkv/PPJKA4/oCBcXdpxEj
         C/oBC7BfllH3B8HBMAc3FSOfRypGVOdooMEwc0Y7+caRY2n3XHR3N/VhpWa/HjtJ1jVW
         bJn2NnVjaoxNNt7yRbvFpzcjTraMIZ1rd+/vzYOWFU3TVMNhygFa2MJOzOeNJuvpayXY
         sM0pK5ROYibZfUoZQbIMbeR2kO8N+TAzUqXF3A+4KF5DlUwGxwGGr2KLNbVnZe5KNtT2
         5Peu/jYXH50LEnfWmjc1QuEAlnRoiSGxBk8gu/pJBUjsX2bhzs5uZbH5ytGd+m1MY67M
         Gqdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=TcC+2yTg/hccmsg9OLvwuhUSReWVGCf9bD/pMUOZgxM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=0VbtqxLR9SNJNs25eZXwzCKL1hhWNM2+kXGf9ML+lFAb4tt9bNqZ5lOZL3VKQKz9UD
         hmntexrcpg65Gq/szR3GMj624hWIfOuV605kcQkgUZxFbvV1ezG3IxeVMlpcov9WyQct
         669fsGzBfwNBc6BVUnX/EifQ9vPhBNlll7emNICJynX5LMgmuvX9F4+onr56JQtIlzH4
         p/1VsOgLvwtIqjrrPqF0CcKeQH6qB01U/knh+abf4BuW0vCfWilL9QUq8PhCBvhPr6PX
         4EQJ/Jj4UCRqOTKjeUCySrbuBhhy5fs7RvmwNO4wcczU1MnUM4CU8v3YPwI+fOgXEb7c
         KnBQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701035280; x=1701640080;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TcC+2yTg/hccmsg9OLvwuhUSReWVGCf9bD/pMUOZgxM=;
        b=xI2K00LuRdrQXRt9Ho2yWqRrmXA82WuNK5YOOsy5accdEfJvRSYyMRq7j1mFqTy1Ma
         HWgRdW62CjwnwLfw5i75elYycofjfTnfL3/Lghgy6D7uvuc3ZQbW8RFR8ody8R9vOqwg
         41vmKuTi8hjRguPcHQcQROnaOtLWHRglNlmeXpKyOe4WJWxP28sfqlpDT+OCKniI/iSt
         IZTgUmM+h7+inBaopLfZtvnDGRW06pNm10LTj8wBWfDQV42++mq0xKqHQaUuOP68qxif
         LZ98MJjjTbwYkgtWO4l0QHpeTsZAnulBGGgzFgkYfz8HwtGE1IcqzsL0CcvDLeYA4+j1
         bSUg==
X-Gm-Message-State: AOJu0YwFq3Jvy+Igm89J6blePBntFE7cdIUPlV2PKr2+TmDqqOOnJlN2
	dU2N8OcQMA3TaLJKJhVtSSgOEg==
X-Google-Smtp-Source: AGHT+IHOCKzmLDkMjcJpGhW4XuNTUIU1CBw9T4jQOrfqzRCajbIaC6P4ohTXrjBZ0mPg7O3+csjAQg==
X-Received: by 2002:a05:6214:3d0c:b0:67a:24c9:e57d with SMTP id ol12-20020a0562143d0c00b0067a24c9e57dmr8518693qvb.4.1701035280406;
        Sun, 26 Nov 2023 13:48:00 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:c20e:0:b0:67a:4cc:6765 with SMTP id l14-20020a0cc20e000000b0067a04cc6765ls3817486qvh.2.-pod-prod-05-us;
 Sun, 26 Nov 2023 13:47:59 -0800 (PST)
X-Received: by 2002:a05:6214:5008:b0:67a:2df0:3ce1 with SMTP id jo8-20020a056214500800b0067a2df03ce1mr7071529qvb.41.1701035279330;
        Sun, 26 Nov 2023 13:47:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701035279; cv=none;
        d=google.com; s=arc-20160816;
        b=e/YWP8QzSkR2V2xF1yhCrKQg9DrQPdYWcpuLBopbsXxcNNb4kSK7o9WTJjfWxM+NZm
         84QFyRNGdFLUpnLw75dL9c9lU+wU28Zqkd2PPLTGJGaSXKj9hmSFeN6SFMc8N/EBV0iX
         RBtbN1mHfjldej7mzwqHcBpzRDVtN26ZzCS3WXp3yPhJr/cpwFHMkKR46hdpr0iZVnSl
         t0uBRYlNQKln4TDIIcZhD5kcLk3Cv40asQJZ2Aag2GtPvW1G4RW/a3eHtKJEa7Gh7cSM
         SS5MNuFC42R1uIwGWg5mzhW3s5jHbMm+ksQf6PIgsoeUuTJiVip4kWjiHLqD0Yf978BZ
         AzIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=ftzlBW2Tqn5lltd5jNWSP6G1dLyxzB+6mj40Z21xeIs=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=omLgtNQ7/naZ19VYfLrWoazsHMhmAlKCR6+5aWbMvJmtQdG46zQte4XQJ1+vEH6lF7
         MEPHTqoKuVZVG8CH4HjVC6CB/w+M8H1Tem6FWn9wQhs+0ydRi8G/5wrf4F1UCZL4ypk0
         gLHtK+KxiVqVYbvHorofFeveX2QgNodfqgYr1t9c1AmXKGEtXSdoQ66tuSD0HxBwtgbd
         WC9iWkmXJMEatVkE7q+BTvgK48EiR2FiUglJ/OlmpjjzEY5+CoXKeDOYjUywKT+GdWrP
         NaoSWFrGqBxz7I72ApFddEcRQCFUp9RU3FHys1wjGv3JZkmYfjzHBrUQErlsjwq/AkEV
         6T0w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.128.50 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id p3-20020a0cfac3000000b0067a213b4846si4601540qvo.526.2023.11.26.13.47.59
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 13:47:59 -0800 (PST)
Received-SPF: pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.128.50 as permitted sender) client-ip=209.85.128.50;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-443-OQusu8WzPEWdJU1ZySP4xw-1; Sun, 26 Nov 2023 16:47:57 -0500
X-MC-Unique: OQusu8WzPEWdJU1ZySP4xw-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 87FAB85A58C
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 21:47:57 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 84815492BFE; Sun, 26 Nov 2023 21:47:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D46E492BFD
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 21:47:57 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5CC40185A782
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 21:47:57 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
 [209.85.128.50]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-230-JUK8kAb5MmOau2HWCFy1PA-1; Sun, 26 Nov 2023 16:47:54 -0500
X-MC-Unique: JUK8kAb5MmOau2HWCFy1PA-1
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-40b473d3debso614615e9.2
        for <blinux-list@redhat.com>; Sun, 26 Nov 2023 13:47:54 -0800 (PST)
X-Received: by 2002:a05:600c:4ec6:b0:40b:415e:c040 with SMTP id g6-20020a05600c4ec600b0040b415ec040mr2907467wmq.28.1701035272630;
        Sun, 26 Nov 2023 13:47:52 -0800 (PST)
Received: from [192.168.1.8] ([78.80.191.29])
        by smtp.gmail.com with ESMTPSA id bg9-20020a05600c3c8900b0040836519dd9sm11519889wmb.25.2023.11.26.13.47.52
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Nov 2023 13:47:52 -0800 (PST)
Message-ID: <5fcb774c-8b8d-4d7a-be5b-c418c2c5f2fb@gmail.com>
Date: Sun, 26 Nov 2023 22:47:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>
Subject: Lightdm-gtk-greeter volume is set to 100 percent
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: cs
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vlcekpavel93@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vlcekpavel93@gmail.com designates 209.85.128.50 as permitted
 sender) smtp.mailfrom=vlcekpavel93@gmail.com
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

Hi,

is it possible to change lightdm-gtk-greeter volume? When Orca starts, I 
get 100% volume and changing it wia default keys is not working.

Thanks,

Pavel


-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

