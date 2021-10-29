Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AE443F450
	for <lists+blinux-list@lfdr.de>; Fri, 29 Oct 2021 03:15:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635470125;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rU+cnA54ylFzQarWqTBOLqbGQaRnGip2sg0fmXojGD8=;
	b=CLe1hrnUEYh+c9KppFuHZizxRwgxz859TlWUuE/KXaHk95kk16naAKsVBeXRV87m+oRpE9
	bZRdqp9wPUdcLAWqTly7Ne3NVK1hc2kUkmdA7N6sIFxy7+Gf16iKUKS6F7ILSzDV1HUcKT
	BIJVFfrjOJi/FnxILA2tMzqjiA1Va6s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-284-vRL3r60PPbO-TAMt8EuxlA-1; Thu, 28 Oct 2021 21:15:24 -0400
X-MC-Unique: vRL3r60PPbO-TAMt8EuxlA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8601E10A8E04;
	Fri, 29 Oct 2021 01:15:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B27D55D740;
	Fri, 29 Oct 2021 01:15:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D4C1C4A703;
	Fri, 29 Oct 2021 01:15:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19T1FBZu011936 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 28 Oct 2021 21:15:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C316C2026D60; Fri, 29 Oct 2021 01:15:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BD9E62026D5D
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 01:15:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E5792106655B
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 01:15:08 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com
	[209.85.214.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-12-ZJ9AtqqnMEuCFb7MlTtHRQ-1; Thu, 28 Oct 2021 21:15:07 -0400
X-MC-Unique: ZJ9AtqqnMEuCFb7MlTtHRQ-1
Received: by mail-pl1-f178.google.com with SMTP id f8so5688388plo.12
	for <blinux-list@redhat.com>; Thu, 28 Oct 2021 18:15:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=MSX3sj5PnGd1cH1vcTlt3MDQJwwuNpXV+6xAdHjl6KY=;
	b=W2IQUKOFqXVmQI1kfwAX1nvnz+qIxz0vivxdHAYUYOM502tpJ40ev000K6OC1MrBoO
	PpdnbShOoZ6mVNO3QQpjcSlcqwZrkZ1pQ6dMw73JCpLUkBq25s89U/gt6cLwf1wq/L73
	Sj4pxZHTxqAf7B+YhbL6I7w7BCSOsaGvj/n0d5dMnIxn/gGkhzN7jGkuJrgsfAQdgrUY
	TLWMlCP841N5QNEH+zPChXs77jOXgl3FNbgqqDenVldvKGWTTUKvBT81Ks6wnGSxban+
	h/iqpW0j5Scna8Fr3lI71Fvp6XIas2B1IdfsDxg6XahHObvOIa8220MLmmXm+mxYxSCJ
	kFXQ==
X-Gm-Message-State: AOAM533TktmHWgAT8816VGs5nHtgBwtRvEC9w3jg/LLN/4Y70o9aRtq8
	AreyJjyb6PRryoCYw+Rkt3lBFoENUuPolYnW
X-Google-Smtp-Source: ABdhPJxoLseoLBIaKxZgwpKlwLwL3SAOHJbBWXPb3dV5/FkmpGlUoD9uxGWDMe40AVRO6tI6KHAuRw==
X-Received: by 2002:a17:902:db02:b0:140:581e:6eb5 with SMTP id
	m2-20020a170902db0200b00140581e6eb5mr7199967plx.46.1635470105245;
	Thu, 28 Oct 2021 18:15:05 -0700 (PDT)
Received: from ?IPV6:2600:8800:9903:2800:ecfa:c8e8:f919:1ecf?
	([2600:8800:9903:2800:ecfa:c8e8:f919:1ecf])
	by smtp.gmail.com with ESMTPSA id
	w185sm4636956pfb.38.2021.10.28.18.15.04 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 28 Oct 2021 18:15:04 -0700 (PDT)
Message-ID: <95d1f9f5-3bd8-a09b-7766-4198741bcd33@gmail.com>
Date: Thu, 28 Oct 2021 18:15:02 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.2.1
Subject: Re: Can I run an accessible version of linux under windows?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <23ab7b29-ac4-63ed-cdb3-257bb4417e9b@hubert-humphrey.com>
	<AD23363F-591E-4B0A-9992-841F3150EC31@gmail.com>
	<5b11f885-d643-30ba-6298-148de7e576c7@hubert-humphrey.com>
In-Reply-To: <5b11f885-d643-30ba-6298-148de7e576c7@hubert-humphrey.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

does it come up talking or do we have to enable it?

On 10/28/2021 5:46 PM, Linux for blind general discussion wrote:
> Well, I can only answer your first question, you can grab grml from
> https://grml.org/download/
> As it says on their site, it is Debian Linux.
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

