Return-Path: <blinux-list+bncBDYPVTOXSQEBBFFMROVQMGQEQCHDUTA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0427F9167
	for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 06:22:29 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4236fd10c21sf42320331cf.0
        for <lists+blinux-list@lfdr.de>; Sat, 25 Nov 2023 21:22:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700976149; cv=pass;
        d=google.com; s=arc-20160816;
        b=n70NnSKpkd/yrpR+4JKc2kM3WYRkbFpCG+5xw0lG/nz5tsh5krLa7XrH29WsSA0kZa
         n7w9fQPWQjENpfl0oPUhgJhYbU4L0p7jSIR/3OSJQy/9I5T86bgLio6ILz4Ip18NMyYd
         4b6gE14vhww9PwA0KE7tiPfMxa20YPRqs+QONBmGd6bwmr4l9ll1wzmY47e36sAhJr3r
         93PhUTJdHjso5tu3nPgutzEn24bjANgXjOEuzXl1qgjwCgarwqgT/kcOWNl4fbmeRu0q
         WBWFLr82xjjGFZQi5TXhS8NtR307TYY+8e6uwzYz2UKTmnNwj75P6hD1Rh0VSjLaYES6
         LQ0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=MhWb6sBPOx4/a3d9Z06usqIqqFrT+nqb49dDGf2vBmM=;
        fh=Fku0pTnhkFLD6c/WL3jDDCEXY3oFpeV8DKFQ7ishoJY=;
        b=PcXy9MfSFFILWvMp5W3RIbfkNLjGmzcYesLREy6DQWfAlqqIVsGiQBfhmXFYVJCEZH
         J866U5sDueHeIV+D2YpVk+eZk+0w3qijMGbu2e6ee+QRXgjOUkGmDYu+8Huk4n8vw70z
         +DYASYXpLDo/vg0yZhcBubkgYLEqG8j11fTIvzGMJEm9aMxmiLJYaKmeXuoNr99dnqaw
         I35YEhyxDw8v8nNvreE6FhrruJZVTrAPMpQ7SgvumpqdED2T8VbBvkto3Whh1xu4Vu8Z
         OjiqfIOxvyyqXmBcSrRyn98ZuKcp2qwIa07W9X1TcjzMFnE/bCAREi0ROzCVj3va6wom
         oeOQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700976149; x=1701580949;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MhWb6sBPOx4/a3d9Z06usqIqqFrT+nqb49dDGf2vBmM=;
        b=VJbAIfS6tn2YTXqlqRTZTVMXoNAGOtZiEa/Kr6CmJPOa5Ty3JOCh+ilR5jPqMDjn0h
         yGdC9Kgiih4AeUc0W5OPwJx32bShuHSiKcr5yISsJFL3Z0hbAs05AVkOaMOo6+UzTaXg
         n+LR11x7IA5LyBtbXjXv5sNx8cmJic3riKJWsgYUD/v85SYXGOMamhvqeFQT+yRC65CY
         KjRkc193mhXkqj9FMLEiULLmA6l1Njyw3KVKwMI6lXyEZw5gcZXSj7ttdFX+PXSlMqHr
         ucuLcUdGpipD1mR6Q+1Mk/JFbHEf8w0PqNrR/SZsB85jjx/xv9+dJz/jJbIqrHqyg6vQ
         2+wA==
X-Gm-Message-State: AOJu0YzprUeMZHGFFVoU92cIqAScGldqHlgygQTobuTKdUOVYIdXt4bD
	xk3JQGDAUhgnDqZBh4iPq3ENYQ==
X-Google-Smtp-Source: AGHT+IHqRRg6YWRBVQpFTBNRrgv9OOqdEp26MjHhGEopzDdWGrLL8Bxep2mTIoaJqoLIYzSE/ftWwA==
X-Received: by 2002:a05:622a:408e:b0:423:a70b:e48e with SMTP id cg14-20020a05622a408e00b00423a70be48emr4548920qtb.68.1700976148883;
        Sat, 25 Nov 2023 21:22:28 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:14d2:b0:423:84c3:cf93 with SMTP id
 u18-20020a05622a14d200b0042384c3cf93ls2670294qtx.1.-pod-prod-06-us; Sat, 25
 Nov 2023 21:22:28 -0800 (PST)
X-Received: by 2002:a67:fe14:0:b0:462:d8fc:9045 with SMTP id l20-20020a67fe14000000b00462d8fc9045mr7433290vsr.19.1700976148158;
        Sat, 25 Nov 2023 21:22:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700976148; cv=none;
        d=google.com; s=arc-20160816;
        b=oFEnkVZwwx9zeSB93f8arOlURnXnpgZf+kXY9vvnHxWXiHMEwihlm3Gwes1q3RXJsi
         5g5APCXgp+c0Xb/L3u9i2hL8VZfcuaVEV7m+VuhXb/+RIzsrqXhz5R9CsVtLf00DGTwV
         p9MmZi4QxL/8qkC6o9FH3dx6epctkcVhbW9pGF7Jtbvq5ws2B6S5UQSjGxsRafOCAgqL
         etL1z30DD+qPe3JBHLoM63++c5YZ8pW9osKbTN4o5tE4NwXDNpEDUhDPMs1PXwOifa+G
         k13gdbZLbj5Phbgchkncun/ktrZXoxin+QcpmRMI3Rp6MzzfoorykcVndPKlXtLruxnd
         K21g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=YcBwbVa9ba4YDEp4G8t9E8dbaXqChboR817n84jrc5w=;
        fh=Fku0pTnhkFLD6c/WL3jDDCEXY3oFpeV8DKFQ7ishoJY=;
        b=HH7Rp+6RPEEbBllRikJ4Zm+wCerR9q9+Ly1FPxiaX7E+d/T1HVmanlZ8X2a1JamzBd
         INmv8fY+qb0Itp2tMKmBLKpY2fOz6t82ZJjSQvC+Az+hzTrT8b+gh5AtNxPtOo7nPUL2
         H6DFH7iHhyBfd2Jenf/0qxrJWY5Ok73buaV6qz1LyPg+EQpY4xuTQ/q7l9l0xTGMWTlF
         NAt53ZyEsQVB2JsdrPwPgZYBOWKWE2CZ3AFDGksWkO4tLGP6KYxqhjx4KN354PYEXmQp
         gra3lSCsoVa6eqIup5t7wVj2+4yWK4qgzYQe7/NlEQaUtUasRmiAjYWw7qDVDB+ZL9H0
         w9wQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id a8-20020a0562140c2800b0067a2ae87a70si2274803qvd.170.2023.11.25.21.22.28
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 21:22:28 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-217-JqQUTF1gOrC2h0YhBxW7oQ-1; Sun, 26 Nov 2023 00:22:26 -0500
X-MC-Unique: JqQUTF1gOrC2h0YhBxW7oQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8AC48185A780
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 05:22:26 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 87233492BE8; Sun, 26 Nov 2023 05:22:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 802A6492BE7
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 05:22:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 60F6780C343
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 05:22:26 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-655-tLvY41VYO8WeQrY712zReQ-1; Sun,
 26 Nov 2023 00:22:24 -0500
X-MC-Unique: tLvY41VYO8WeQrY712zReQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SdHCh2Dl4z14Fg;
	Sun, 26 Nov 2023 00:22:24 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SdHCh1sXvzcbc; Sun, 26 Nov 2023 00:22:24 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SdHCh1nXwzcbC;
	Sun, 26 Nov 2023 00:22:24 -0500 (EST)
Date: Sun, 26 Nov 2023 00:22:24 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: Karen Lewellen <klewellen@shellworld.net>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: interesting email bounce?
In-Reply-To: <Pine.LNX.4.64.2311252143200.3657901@users.shellworld.net>
Message-ID: <8d5f0118-fd28-ba98-f18a-0606ab60ca23@panix.com>
References: <Pine.LNX.4.64.2311252143200.3657901@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

with google's smtp, people are limited to a maximum of 50 posts a day
unless that was changed recently.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Sat, 25 Nov 2023, Karen Lewellen wrote:

> Hi everyone,
> have any of you posted, only to have your post returned with the list email
> host saying not now?
> Best,
> Karen
>
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

