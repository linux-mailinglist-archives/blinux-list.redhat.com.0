Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9074686D9
	for <lists+blinux-list@lfdr.de>; Sat,  4 Dec 2021 18:57:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638640646;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HoRUUhiAW3Tz3692PVor/iTfvfKHQeOpnQYF+l4d2+g=;
	b=dSovjSNIlPiG2yDbdMT9e+jbPUYV2Ga7ozAGXIlkmUslUyRTt8I3SrmfL9A7elN3JhN6HV
	gVfmazw/zg0fSzxIIMTKoMbBQXxeVueks+UtaaJiKr132jX1dI+KRGFCah1PT3CO7V5q5N
	xFkAeaBQIytydl/d5I6BX8tMzJmQ2KA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-219-q9BRK6qlOFK_H4D_Yp-Dbg-1; Sat, 04 Dec 2021 12:57:22 -0500
X-MC-Unique: q9BRK6qlOFK_H4D_Yp-Dbg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74C151853028;
	Sat,  4 Dec 2021 17:57:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F04C5DF2B;
	Sat,  4 Dec 2021 17:57:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 581304BB7C;
	Sat,  4 Dec 2021 17:57:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B4HvCF4017455 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 4 Dec 2021 12:57:13 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B7956492CA3; Sat,  4 Dec 2021 17:57:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AFCC0492C38
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 17:57:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 94A1785A5A8
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 17:57:12 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-100-nB7I6BswNLmqJL6O8s7FCg-1; Sat, 04 Dec 2021 12:57:11 -0500
X-MC-Unique: nB7I6BswNLmqJL6O8s7FCg-1
Received: by mail-qk1-f179.google.com with SMTP id g28so6995090qkk.9
	for <blinux-list@redhat.com>; Sat, 04 Dec 2021 09:57:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=nskrnhMoPOM4S3NwiKgzv65itu36DGK6S+gWPFINU60=;
	b=qyZSN8JBshNPhZHeDYbs5ZJPjiM13KGPbZmIruPVeiVP/o8VRkEnuQgOz1TG1KeiS4
	4mY/w594hmN3tSrTU8YjdeMMX+nZQzf0Bw8CvT5kuqRUY3oYw9cxT2k9LDRi0jOgp/cW
	mwwvm8H2zgr3ZIU3A1fa4Vg/Aiv5JwtBL/X9ZP2sd+uCRAp5IrVYfsD+DKUuxn+RlxNL
	B7rV9odbzzunYcXcIct5djJbu7ajNWGbGcQAkOKW258d/JZ4a3+NJQ2G86Y+959IAVbV
	NjqZDEzmFuGjYS2hOIGjpDZxJE1RFNgploenq0yMI7/VddGRnLnUyWqttk+SJ8VYuyFU
	PVUw==
X-Gm-Message-State: AOAM531LdoyReu5sZPngg8jRf1SEqWFHLRldZ9IxirA2escNfhMsrNfo
	Hlu4yz7y9g1wNTP2TgFiDTk/8eJZKtk=
X-Google-Smtp-Source: ABdhPJwysDW8TLYA1WvjftoekEEqWf/2ce3b3RDXK29mvrab3b0xlZjdLJiKOtiFm9GLqcSOlF91sg==
X-Received: by 2002:a37:6682:: with SMTP id
	a124mr24103762qkc.110.1638640630569; 
	Sat, 04 Dec 2021 09:57:10 -0800 (PST)
Received: from ?IPV6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	g21sm4966196qtb.62.2021.12.04.09.57.10 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 04 Dec 2021 09:57:10 -0800 (PST)
Message-ID: <cdd055e1-7b0a-c391-33a0-35d3d63437dd@gmail.com>
Date: Sat, 4 Dec 2021 12:57:09 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Suggestions for Ratpoison-friendly apps?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
	<d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
	<00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
In-Reply-To: <00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

How do you get pcmanfm speaking? I get essentially what appears to be a 
blank window here. It has the title of my home directory when I run it, 
but nothing more. It did pull in menu-cache as well as libfm and its gtk 
parts here. There also is a pcmanfm-qt I think it is. Is that the one 
that speaks?

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

