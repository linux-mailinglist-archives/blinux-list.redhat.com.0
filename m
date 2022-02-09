Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EBC4AF2C3
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 14:30:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644413445;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=hiLGeh3djrMb4qeh2RtVxx/9sw1YVB1PO1LlWniRWxc=;
	b=LhteAIIL5RWfaxdKs9QaF2hzhCJ5l6s45VjYg7sB7q5KOEqMqn/1jIKwAF96jjDLkflMBE
	rxbyT6NBY7DVZL6C0vAu056IB4GMnhZLsFdyguVsVAa70vMKifklZVFPEp82c7B45kn1H5
	SncCWwua8jKRRezjlPKztNpCCCBz0ko=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-132-U-hYwUp1MA2s5eowlRH1CQ-1; Wed, 09 Feb 2022 08:30:40 -0500
X-MC-Unique: U-hYwUp1MA2s5eowlRH1CQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F0A591091DC2;
	Wed,  9 Feb 2022 13:30:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 34C9C2B4B3;
	Wed,  9 Feb 2022 13:30:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ED1334BB7C;
	Wed,  9 Feb 2022 13:30:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219DUU1T021572 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 08:30:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DF70C1121320; Wed,  9 Feb 2022 13:30:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A642A1121332
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 13:30:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 725A23C01B8B
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 13:30:27 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-505-yexT612BO3aR0VdDQ_kUXw-1; Wed, 09 Feb 2022 08:30:26 -0500
X-MC-Unique: yexT612BO3aR0VdDQ_kUXw-1
Received: by mail-qt1-f175.google.com with SMTP id x5so1703204qtw.10
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 05:30:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=3N7t7oSXExQAS2Qj3ft8xnRkyWnGBcCQ5Ymob9jwnmQ=;
	b=Ed7Wd/2VoBrYMM7guVS+RRckdR07z6zhBLSA6j5+/ePMcwy3C441iPLw/EMVcmZod9
	GbmflmhJjPqTgvTbs8awucjMEy1ZR3AmL4EwTPNkldJ8XL7IkT5KQZ5WRP6xiiR+Et++
	eb3NzgeYcb5rr4Ys7/4PMJm8XbQmS/sifldeB8uVkaHUBrPl1iOQXxfTsT4fuRu/UFNW
	tqR4vveFBRWvvJ4G1gRPoh4MkGGlPqr2Gpf8hpJftHCjmVovABx4sv6U1RuqiJJnszP6
	KyPnASqVOnYcDRmDqJxLr0JmoQI5LeC5VlO4VgLI7oY5HGrQ8iCuH+H0E34FSA7KIcQA
	OMYQ==
X-Gm-Message-State: AOAM5320Z4sIuYwwV0xUJjIKk4KB5WFhLvgrEYp4Jk0gHWYm0VljDsGw
	tKZ99fRFFw3BaFmt3Q5WbNz782YcpJkWDA==
X-Google-Smtp-Source: ABdhPJxy2XXzftLCjWM0i9r3y798umfhopghxe9meFlebmC/pXVYm908vIbZZxcjs4Z+XTqGrLhQKQ==
X-Received: by 2002:ac8:5908:: with SMTP id 8mr1261715qty.61.1644413425300;
	Wed, 09 Feb 2022 05:30:25 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id t1sm8800619qtw.17.2022.02.09.05.30.24
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 09 Feb 2022 05:30:25 -0800 (PST)
Message-ID: <d5bc5f5d-ee98-cdf1-db51-9474080f13a1@gmail.com>
Date: Wed, 9 Feb 2022 08:30:24 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Coqui TTS has blew my mind!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
In-Reply-To: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Just saw the python issue with 3.10, which is what I have here ... 
3.10.2 to be exact. I'll try the virtualenv to see what happens. It will 
be great to get this working, especially since it can in fact be piped 
out to a file. I mean the lady really sounds like she's reading an 
audiobook already, so converting an ebook should be no trouble a tall.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

