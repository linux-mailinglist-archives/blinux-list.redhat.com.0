Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C564BC6D8
	for <lists+blinux-list@lfdr.de>; Sat, 19 Feb 2022 08:58:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645257497;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/8Lmcq6GK+sb07wvfOA34pIJ2YanUUHrIWE5d2bfZJM=;
	b=JGIC4zqNjuSTzhZon0fxT8SdIr23VpBjqGC/xPgVlZxoGAM0OfSMOnwoPqyaUiMk5FP/q7
	cGp3lKYr9F5sb7bENMztqu451MAFqiMNOulBM1ZYZ+zgWE2OwaBvc1msW5Y2cLis+dsH96
	+4DHfh2NTIBYPPPSSZhZe1FWoOXy9W0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-81-FEXotmvYPruZ6-NUKld0-Q-1; Sat, 19 Feb 2022 02:58:14 -0500
X-MC-Unique: FEXotmvYPruZ6-NUKld0-Q-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1B75E814243;
	Sat, 19 Feb 2022 07:58:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 284DC5E49D;
	Sat, 19 Feb 2022 07:58:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EB6394BB7C;
	Sat, 19 Feb 2022 07:57:57 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21J7vl6M016587 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 19 Feb 2022 02:57:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8EFDB40E80E6; Sat, 19 Feb 2022 07:57:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A91D40E80E3
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 07:57:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 70ABC185A79C
	for <blinux-list@redhat.com>; Sat, 19 Feb 2022 07:57:47 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com
	[209.85.214.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-321-Ghut_AFhOJ2d5HK50G8zXw-1; Sat, 19 Feb 2022 02:57:45 -0500
X-MC-Unique: Ghut_AFhOJ2d5HK50G8zXw-1
Received: by mail-pl1-f173.google.com with SMTP id y18so8863721plb.11
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 23:57:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=rCFzI/MkQ+jpQLge1zFJiWvHxAC097TP7BRZPjqatLY=;
	b=ZiWI0jtkRpCAziQ8j5KjVwzyHnSyUMecVY7Egj4c5h62LDeBKwR5m3OcrI/LO7Jypw
	LVYEm0XTDrPO7QAl0TUhQxCoyJPJdbs4SEKZTm4XS47afF3qo8AFb2Xr2yHCQNUYUp4z
	zcxQd5kCih6bhJXPqK11HnA/7GfftlPdGCRcWKvTL2zO9KWiQl/7NTp2akp/1sc9vH+V
	ZUIfGUxS0Ce/9jEos39owLH3hm3tKYe6tnqHt9SttlDEdw5KCkXljYmLINAOhSGrBDd5
	1tD4TcoIhWd69VBwIMz5dN96+QzayT3I4cQnvaDsoNjlAC+28oq1064HMdbuRAa9Gaad
	qxfg==
X-Gm-Message-State: AOAM532na3Kdsug9NSMEp11unu8maZ7S6A/CXB1X1HsqtSZACTMctklr
	yymGq2kna1rwCLmrCIP4U4k+iyrTyMHthA==
X-Google-Smtp-Source: ABdhPJwfzV6zzu9F2bF45qbs/UY5+K5OuWm6IkJpGW9LiMjVHRNReOIq/WkVPQdPVhTRX9d7Wp6upQ==
X-Received: by 2002:a17:902:d2cb:b0:14f:5a:944c with SMTP id
	n11-20020a170902d2cb00b0014f005a944cmr10591487plc.100.1645257464123;
	Fri, 18 Feb 2022 23:57:44 -0800 (PST)
Received: from ?IPV6:2607:fb90:e57c:ad11:317b:cd9:313c:3f87?
	([2607:fb90:e57c:ad11:317b:cd9:313c:3f87])
	by smtp.gmail.com with ESMTPSA id g14sm355403pfj.80.2022.02.18.23.57.43
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 18 Feb 2022 23:57:43 -0800 (PST)
Message-ID: <5d1f1698-1a37-1603-fd1d-9c08fb8ba5f8@gmail.com>
Date: Sat, 19 Feb 2022 00:57:42 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.1
Subject: Re: Accessibility of installing Distros?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<f756ee8f-b545-705f-63c2-8bbb0eb1366c@gmail.com>
	<82999c6-172-793e-3a66-37b9ba9bb5f6@panix.com>
In-Reply-To: <82999c6-172-793e-3a66-37b9ba9bb5f6@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

how do you get uruk to come up talking?

thanks

Hank


On 2/15/2022 1:44 PM, Linux for blind general discussion wrote:
> uruk jenux and jenux can install android, kali opensuse tumbleweed knoppix
> lives on usb.
>
>
> On Tue, 15 Feb 2022, Linux for blind general discussion wrote:
>
>> There's Fedora, Solus, Debian, Slint, Arch, that I can think of so far,
>> excluding Ubuntu and spins.
>>
>> On 2/15/22 14:47, Linux for blind general discussion wrote:
>>> What other options do we, the Blind Linux users have? And, no, I really
>>> don't count Ubuntu spins, (Mint, Trisquel, PopOS, Accessible Coconut, etc.)
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

