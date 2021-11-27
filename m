Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BB79F460257
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 00:16:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638054970;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BVBZi5cYAwq8lZflXeZNr/SeHgNxlpWT9QwHTW8sBw8=;
	b=Cm2tgdnBjXTbYeqWjyF8yzYHtCUgW7ug8xSRXbJ9Idt/bq5Hufs+YF+KX+YPOuKlmhduY5
	lYQWZE0LQb3jnM4KaucihqobBVyTFqEQvP/CAb4I3Q/ZAy1nVdL86AaC3rcBOVrIwvnRSF
	NQ2grL3VU9usJ+OcaupZRbYhB4+4X1M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-591-sG3ZbcF4OuO_lRDMy6aAiw-1; Sat, 27 Nov 2021 18:16:07 -0500
X-MC-Unique: sG3ZbcF4OuO_lRDMy6aAiw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 108FB8042E1;
	Sat, 27 Nov 2021 23:16:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BF1C160BF1;
	Sat, 27 Nov 2021 23:15:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E2E051809C89;
	Sat, 27 Nov 2021 23:15:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ARNFeSX001606 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Nov 2021 18:15:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A75B9404727A; Sat, 27 Nov 2021 23:15:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A2D214047272
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 23:15:40 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8051B185A7B2
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 23:15:40 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-292-5Wc7XSDZO_iWtuAFdUDLyg-1; Sat, 27 Nov 2021 18:15:38 -0500
X-MC-Unique: 5Wc7XSDZO_iWtuAFdUDLyg-1
Received: by mail-qk1-f178.google.com with SMTP id b67so18639828qkg.6
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 15:15:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=5vqFU0uDTsXizmhjUE8E8a0SHc+cVg+EurT4lMzYWqM=;
	b=6Dz/HwMo2sEUD4zKHt/kO104uhOrbQjuqXY23AsBHy08rO+P7uTOCPrNE+m8uz84ox
	1UBXimT73KVIWVyBLO6sd6FM7ah/cNt0JTyX+zX0KIj7h2mpOIJvqCQ3xJ70l/ujVmhU
	KwvxT2gfTpaemtXPe6gTaM7bpKcisrtkM1PBmGplnlwSCZmIKSTNzhyyrMmD8ieZixmA
	QSR/h4CghZdp8skcVBCEPPPyywPndz1hjatS8xk3TP1jj5Rl0LCfEBLn9BFH9ZfHarKP
	8E/us26+7jYg3/4qouJsP8xRFqMc2G8GEI2U/7z7xO2Ak/9PJ3rNLxj3Ml/Q5MGVfQEf
	23sQ==
X-Gm-Message-State: AOAM530vxD3u18qE5vxKuhwRsDM6h/DGPFU+QQMfhfE2Ji6bufN+Bu/Q
	w1RAa5mOE/ClFTEGSatidQU99lNB1EuLBIxA
X-Google-Smtp-Source: ABdhPJy/ap/EFXpc/L/c3Hl/OP1t6a17uKL2IHjlRZCsEw3YNnWa8WlwjzKLqiQzcR0SOpbgpQVenw==
X-Received: by 2002:a05:620a:22eb:: with SMTP id
	p11mr31106859qki.376.1638054937480; 
	Sat, 27 Nov 2021 15:15:37 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::16])
	by smtp.gmail.com with ESMTPSA id
	s12sm5924114qtk.61.2021.11.27.15.15.36 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 27 Nov 2021 15:15:37 -0800 (PST)
Subject: Re: looking for two gui accessible applications
To: blinux-list@redhat.com
References: <531583b5-d857-7994-c615-9ffbcf9d91fc@hubert-humphrey.com>
	<8DC6B514-04F7-459E-9515-2BBDC9B679BD@gmail.com>
	<20211127173705.fcq6hh2qbozygm42@alex-pc>
Message-ID: <77236cdb-7bff-28be-19db-523e15e3a5ea@gmail.com>
Date: Sat, 27 Nov 2021 18:15:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20211127173705.fcq6hh2qbozygm42@alex-pc>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thanks for your idea Alexander.

I have not used the tab completion before and have no clear idea how it 
works.

For example. I want to download a youtube track named drums, and store 
it in my music folder. I have the youtube link for it. I do not want any 
changes to the format of the track, so no need to use any particular 
options. How would the tab completion work with yt-dlp?

Cheers,

Ibrahim

On 11/27/21 12:37 PM, Linux for blind general discussion wrote:
> On Sat, Nov 27, 2021 at 12:25:31PM -0500, Linux for blind general discussion wrote:
>> What I hate the most about terminal apps and command lines is having to remember so many options and parameters with dashes and slashes and commas and such.
> just use tab completion no need to remember.
>
>> Cheers,
>> Ibrahim

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

