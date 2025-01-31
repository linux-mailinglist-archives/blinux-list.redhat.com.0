Return-Path: <blinux-list+bncBDGI3AUYYYCBBW5R6G6AMGQEWTI2SVI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 5170AA2392E
	for <lists+blinux-list@lfdr.de>; Fri, 31 Jan 2025 06:00:14 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-467bbc77b05sf30425221cf.0
        for <lists+blinux-list@lfdr.de>; Thu, 30 Jan 2025 21:00:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1738299613; cv=pass;
        d=google.com; s=arc-20240605;
        b=S2jq7HfyHdBQEZcvmkQ6Y+EUaatpvd4RMRIBEVH3ZW1OzP3DG1gugTRROOxYR+j76j
         xiIAQnNdsq5qAIiHofxFHsKESQ8cDEe2nfcw4RmB7ETWNTw30oXelA/CmcDfaCySpZdr
         f7xknLxDjwASI/z9nF2B26kxWdTxVHayKmhNHRC0Sb7N67YeYWugeD65R2eQqBaPogCH
         5iQA2iSYIQXeQcr3GSGz/lWANEhAJ4koiFOsu4y3ZinExIr3lWb7yvkXbe8qDPSKXzH+
         susgzRy/xZgFYcHVIGlfuUjEI0IFXrBgkFUiLWZwTfaKzTrML0G/in/Ryj541P3k3J11
         QnAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :delivered-to;
        bh=fPFKsGqtnewaUBuxHVOMS9CpwzWbEEZENqrl11LvBrc=;
        fh=cKn+Qgz/E0uihofAZReSjMNu6BW3fvxhdi5WsYqkw0w=;
        b=hXGZ0zruCyKHCf0zKWXy8iDo9ZHkv4V+PJz540yCc+fIMRtnkoTWs/FO+cj6NHN7Bf
         fqi7mYHR7S237QwOYzW/uW//EE7cV23KuC5GKuQaoJUGo+DRP+ZreylbWko5McfF3a78
         c2A/dn4iIRFJrKsHjMrs+i/4pG8tqX3wJ1IOu6gtVH5LBQrEDtXAoqgmDCEuQzJpcYAQ
         UxxKctUQ8lMRqNEwKFhzOCmBQtxn7kCqeF3SZOUuEcYebrL42YzYvKRyn/JXoiiO32W6
         UneWJ00+hiW77jl8hn0lp+0TAMJoM6TCMtgFCoIpukcYm8JZpRcdeOP4cUcZgLVEJxwH
         Z/eQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738299613; x=1738904413;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:delivered-to:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fPFKsGqtnewaUBuxHVOMS9CpwzWbEEZENqrl11LvBrc=;
        b=OlhaS02ywzAjZ3uS0YACi3gMDUkXOHBioSJ6lVVKebNlf63M7tQnb1Dk8EoFSioS/S
         afLpvxKt+P2WPKPUX28oypxkw+i4ujraGZ8C1YwwC6N99nwYSyhBHN4Q5KNFP+4zSDBT
         TH6dMESi72IxnqFTYipsaEvOWBmhg1rgn4sGsN7sGMhvGtc0r1hm9oUe/NMSIfFJdgm8
         UW3VpzkxAuLKWdLWuQ3BmehSbat/PQbxRbbHwdb8CoH0K8+MfTuBorIM+byeNQzfEaxT
         m97qeJBRaLVaJGBaBQHXuKnIOOZh9P9hln3t4YXvZoxYu9MNJTnamaFFAb/Y5Hxd4ekf
         HK8A==
X-Forwarded-Encrypted: i=2; AJvYcCXrKeG3DyqqDwelRIta3hrhdBtdbPK19bXQDCmpeh6JesqEhe+601/HGVPKjRZ8nYd2TqWj5Q==@lfdr.de
X-Gm-Message-State: AOJu0YzVQfqXm2XVkxW3Cd08Fo4yodIkJWlrGGtHag3VumTF7TwkHPGf
	zToz6OdRcJ5DrxonNxpJot3VTqaCT9hSd1Jd0pCoAUDfWcCapi6cih8GTpb2+GY=
X-Google-Smtp-Source: AGHT+IF2nZ9+Gilux2HqZTb9VJcZIOMC0rR1veKTPOb9jLvf3m5iJH2bD/Q8EjBFdO+gMWxo3FZq8g==
X-Received: by 2002:ac8:59d0:0:b0:467:5c17:e28a with SMTP id d75a77b69052e-46fd0b9102fmr148633351cf.46.1738299612104;
        Thu, 30 Jan 2025 21:00:12 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:40c9:0:b0:466:b34c:880d with SMTP id d75a77b69052e-46fdceb243fls534651cf.0.-pod-prod-03-us;
 Thu, 30 Jan 2025 21:00:11 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVEt23yo9njVSyUPKzOU6uGEdmFQ+ZsBYcm2je7g1Yzw8ERcmjNX6RmUMvYtbtqloqDreeaLOcHFRQyTg==@gapps.redhat.com
X-Received: by 2002:a05:622a:254:b0:467:613d:9a1 with SMTP id d75a77b69052e-46fd0b91021mr140356981cf.48.1738299610971;
        Thu, 30 Jan 2025 21:00:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1738299610; cv=none;
        d=google.com; s=arc-20240605;
        b=b1ZnX8qEe7J+xDsqfVV3GYgnJd1IHDcrBfMPxAe6M2FXBRBhLLtM6HeyZQjgZs3QaJ
         0sRvt9zPkKZ08M46cvIzWMmFbyrw2JL/uW9f6dyvhOBWtKzHcFXtyH8PBWcTY5kOhnIT
         wi23i4UBqZO8iaKCmQYREFsKEsvKxRBlUPWRpz1fysUF7OdKnfv3jGpzgrh51ce8Mnc/
         OBGVWJQXmC1ns1MBtm/foFXmK7Zf0XLSnp7WxmDwUrjp3+G3XqCpUm9IeZFgRyGRfcv6
         ycBQ/TGY80b4lEBJ15gXgS+MPsnzxiWvKNWbtVOtd+5eaoHoFlIKk9wE9tyEwp8h0HaI
         1yww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:delivered-to;
        bh=vnB0b4aLmoWvquCobTAz28hAWlYlO45WKapWP9g5KwU=;
        fh=fQue1LVswyroBUi493FuNRGs2h1etDPzgwP/d0K1aSw=;
        b=jw+5TWaC8rDtjiZG5gRnU+BAhiihRVLQmzdgCU+RuFvsGynzLKkd0Rl9eeSmj6u28o
         pqe5OaeiO7Kw8rZQKKoaOJh7yzeCLuwW2P0vSA/ZffUBauBW5f5TxNMszEyRRnbzAmPI
         6CjZr2ZGOTqQdDG+Ow4Yp0oWhFao4fqkRNExxim6RA85zWCV2VgL0lSu6a/nbooSSrCp
         S+6/cJ/qn4XSOWG1kVIF0ovRyG9ycUe1NQsTjcnNpGlsnr6Sz629KoWk3AtUFY/l+XKO
         LsZc8imQ/qP8C8/zmmR3qyGhBLxg3vjfpXeTtlTglI6F2R7Al2+POQ6Vy53WQlgN+pYs
         eT5w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46fdf0ac07bsi30343791cf.130.2025.01.30.21.00.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jan 2025 21:00:10 -0800 (PST)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-643-bonRxikfOJqF7D9POlUlJQ-1; Fri,
 31 Jan 2025 00:00:09 -0500
X-MC-Unique: bonRxikfOJqF7D9POlUlJQ-1
X-Mimecast-MFC-AGG-ID: bonRxikfOJqF7D9POlUlJQ
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 71D9819560B2
	for <blinux-list@gapps.redhat.com>; Fri, 31 Jan 2025 05:00:08 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6D82818008F0; Fri, 31 Jan 2025 05:00:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6AFF21800268
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 05:00:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 08D25180034D
	for <blinux-list@redhat.com>; Fri, 31 Jan 2025 05:00:08 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-107-RB6MkOxcPzavcGLS6lfIEA-1; Fri,
 31 Jan 2025 00:00:01 -0500
X-MC-Unique: RB6MkOxcPzavcGLS6lfIEA-1
X-Mimecast-MFC-AGG-ID: RB6MkOxcPzavcGLS6lfIEA
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4YkkGT0hxgz4H31;
	Fri, 31 Jan 2025 00:00:01 -0500 (EST)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4YkkGT0Rv8zfYm; Fri, 31 Jan 2025 00:00:01 -0500 (EST)
Date: Fri, 31 Jan 2025 00:00:01 -0500
From: Rudy Vener <salt@panix.com>
To: Chime Hart <chime@hubert-humphrey.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: more gui obfuscation
Message-ID: <Z5xY0aBS7SQzU0BO@panix.com>
References: <Z5xIBQ5itO0f071J@panix.com>
 <87f5ee91-bcfd-46b0-0a99-afb4e935b5b3@hubert-humphrey.com>
MIME-Version: 1.0
In-Reply-To: <87f5ee91-bcfd-46b0-0a99-afb4e935b5b3@hubert-humphrey.com>
X-Mimecast-MFC-PROC-ID: 2cme2N-JHV2O_MbYe113-2cgz8shJHO_uPOSvo5A4Vs_1738299601
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 8_BKfTFJeWerFhZCtkTeheXRJ7gBuQ_FKC1kAC1WpRw_1738299608
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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

Arghh. Found it. Thanks. It took forever  to tab past all that stuff.
Also, is it my imagination or does firefox load pages incredibly slowly?

In any case, I made some progress, so am thankful for your help, but
I'll probably only use the gui as a last resort.


Lynx on my text console can scrape out video links and let me play them 
with yt-dlp in about a hundredth of the time it takes to fus with orca, mate and firefox.


Rudy

On Thu, Jan 30, 2025 at 07:55:44PM -0800, Chime Hart wrote:
> Well, Rudy: Generally that would refer to filling out a web form, but in
> this case, I think I remember arrowing down past all the choices to apply,
> while in forms you would tab over to that option.  What drove me crazy in
> both ORCA-and at times in Fenrir where they had multiple words jammed
> together just separated by capitalization.
> Chime
> 

-- 
Rudy Vener

Beast Hunt Vol 1, containing my short story Dragon Wing, is loose in the wild: https://www.amazon.com/dp/B0DPN1QGGJ
Latest Limerick - California Pipe Dreaming Of Secession https://limerickdude.substack.com/p/california-pipe-dreaming-of-secession
Website: http://www.rudyvener.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

