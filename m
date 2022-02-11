Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E1A4B2927
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 16:33:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644593598;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DaGTkMuejGdG1Bk97rU5SzM5z81p85gH3qSoigD7Ci4=;
	b=St9gyvcO5gVBF+k0gczWCL6AjopTzA25u+9pT8JZZ6TWZ+UTifktZPzpLSr+R19CRVQBwF
	NtsAqd1esZt5hpPvHyugQcZi/suYq8FBf7XMi7vUhf+KcToES3pcnnMv5+WcRVJQV2ul8T
	DKgffefEPOlC06et9o14xj46ff4wC7I=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-397-3aiuypQAM0qilymWBFRXHA-1; Fri, 11 Feb 2022 10:33:17 -0500
X-MC-Unique: 3aiuypQAM0qilymWBFRXHA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 39FD385B6C6;
	Fri, 11 Feb 2022 15:33:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 47C225B2AD;
	Fri, 11 Feb 2022 15:33:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 32E4C4A7C8;
	Fri, 11 Feb 2022 15:33:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BFX4t6028527 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 10:33:05 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CA3A92166BDC; Fri, 11 Feb 2022 15:33:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C5E9A2166BB3
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 15:33:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7A24F185A79C
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 15:33:01 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-614-GM4LG6cwP9aqXBtkvb9VKA-1; Fri, 11 Feb 2022 10:32:58 -0500
X-MC-Unique: GM4LG6cwP9aqXBtkvb9VKA-1
Received: by mail-qt1-f169.google.com with SMTP id p14so9373285qtx.0
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 07:32:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=com0whT4xsGYcPCa2PoNvrxbgH09SnQpuoGvEHkIzTk=;
	b=JpHwenR6YZs60KsRHpyiXpFsekU9kvnEn2W0ReE2natjo9DFrIelMJAzCRs2IX5prU
	P6IwCcbYd9K5k6X4A66aDHlPWHaYRJyO6alRElmOmiQo4vWs8rtPfEeBE3mXpO/kMydD
	TnMkKDfUwAYWipxUDCnioghsOPVE3OgO6BnCj3in2h/UnuHxvlF27TQd/T9aqRO3lW+3
	C0vwJzPY24PLusR6f58kZr+AaeVWQUnRUQNh+CPMxepAJya7D1sac6pKInITyP2nz7Vc
	7N0dLKhWkqWq8VYQGvQNSTbZTypnPoh+f8fQUoVax7zzDzLIO9kPGXH0lMlXRzV7uy1o
	BOxA==
X-Gm-Message-State: AOAM531CduV7sbDOEdATHDeOWgOQ/J/SGdzTBF9u31otT1GdMCvKOjMt
	Zxva3mw+dAJu1P+0X91MrgFJCcNhXxGjuQ==
X-Google-Smtp-Source: ABdhPJxLpz2d8TL1wqRI0A2PUsPquebF2XO67OtUj+WBH1lcSptKXwUeUQEMtEiuhfD/6Oyfn9seog==
X-Received: by 2002:a05:622a:1794:: with SMTP id
	s20mr1483670qtk.541.1644593577290; 
	Fri, 11 Feb 2022 07:32:57 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	g10sm12189714qti.45.2022.02.11.07.32.56 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 11 Feb 2022 07:32:57 -0800 (PST)
Message-ID: <6fac56cb-70aa-f564-36d9-201135fbd08a@gmail.com>
Date: Fri, 11 Feb 2022 10:32:56 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Coqui TTS has blew my mind!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7a0e0ac7-5e7d-a41a-b775-6782a87ba869@protonmail.com>
	<Pine.LNX.4.64.2202091755540.340174@server2.shellworld.net>
	<71517fe5-f206-4f11-0df6-8f3de20c6231@gmail.com>
	<Pine.LNX.4.64.2202101303530.513193@server2.shellworld.net>
	<1dbf9974-8873-b5ca-1ea0-9e77047677ff@protonmail.com>
	<Pine.LNX.4.64.2202101716160.517958@server2.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2202101716160.517958@server2.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

First off, no one is projecting their choices onto anyone else. You are 
the one who hijacked this thread and made it something it never was 
intended to be. After this hijacking took place, we provided 
work-arouds, possible solutions and real-world scenarios that could 
help, but you still say we are projecting our choices onto others. No, 
we are simply working with things as they are. As it turns out, text 
mode is full of inconsistencies and is severely limited in what it can 
do. The good news is that unlike Microsoft and other too big to fail 
tech giants, no one takes any of this away if it's what you like. And if 
you don't like the way it works, it can certainly be changed to suit 
your specific needs. Once again, it is not the fault of the standards 
bodies who try to be sure things work as well as they can on the most 
software, and it is not the fault of web developers who do their best to 
comply with standards. It is simply limitations and non-adherence to 
open and free standards in the browsers you are choosing to use, which 
can and should be overcome at the software level. If you don't like 
something, fix it or propose the necessary changes. It's that simple.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

