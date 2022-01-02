Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA95482962
	for <lists+blinux-list@lfdr.de>; Sun,  2 Jan 2022 06:40:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641102013;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Rfg5xGt13ZZ8MeXWrrMslrOY9a6zX/sNlT2aD79msTw=;
	b=By9/2wGJnqiauF5fH/OQ/GcitIMHs/dzI3qK9mFJeFyG9hrVBN7uMYsCO54BZhCHv/Vy8g
	nCLhlknObNxXvXNAVwOAqcB/JR1CZALur6/5xPi8GZzEPpskpcXKg+XgPbnfxC7Dvj3Fr0
	qmaVY+i03Ej7f+s4EAjs08SePg2Gop8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-541-5gh11VkYO4SKqe0CzUq4zQ-1; Sun, 02 Jan 2022 00:40:10 -0500
X-MC-Unique: 5gh11VkYO4SKqe0CzUq4zQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 83D361853026;
	Sun,  2 Jan 2022 05:40:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F64B1042A7F;
	Sun,  2 Jan 2022 05:40:03 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 34ABA4BB7C;
	Sun,  2 Jan 2022 05:39:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 2025dk9Y020755 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 2 Jan 2022 00:39:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 793FB492CA5; Sun,  2 Jan 2022 05:39:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 750AE492CA4
	for <blinux-list@redhat.com>; Sun,  2 Jan 2022 05:39:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5B0F03C02B45
	for <blinux-list@redhat.com>; Sun,  2 Jan 2022 05:39:46 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
	[209.85.219.51]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-126-1akWvayrNwaPCnKxFCeR3w-1; Sun, 02 Jan 2022 00:39:44 -0500
X-MC-Unique: 1akWvayrNwaPCnKxFCeR3w-1
Received: by mail-qv1-f51.google.com with SMTP id q3so28160904qvc.7
	for <blinux-list@redhat.com>; Sat, 01 Jan 2022 21:39:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=aIrBvryWRXxdkgHTFRONeKajtIDQAPwtIC+2Vcr6gOE=;
	b=5V0ULE8P+Wqpf7bn4fs0bgHOQG15CxhHE/WROR4+VtvXFJ2t+iTglZM8e5iiiR2Ppc
	I8hIrzKEThcLyH/310kyjCOwuxBuBRAeGQRHiteEAs2igJn56x9wQsPd3DD1JJCTWq/t
	2b1RHraejiCudUcTqplEWzqM/qe6tnBnvlEI1+1qRCYegUPoQAO/13r6ukjzxhlu8wlL
	aMeWr3OtXHhI2/WyU0/9BGmcXHBAVrKwNoKZlVVAu4IQRrmHsPPZEIIw91VyVt4riW6Q
	m1NydD8+urhuztx1wIZKRJhO6WE88RxdtbbizaEUe+ymOZdCYE+hhd1c1omdBruhPP7B
	incA==
X-Gm-Message-State: AOAM5326O7Rd4fnYfXD+H+WMoe7koAXXOWZSFB50LzhSh9U7G1zDlcBA
	m7sAWt/7+b3QTdGsEEHD/jlWPsgI+9M=
X-Google-Smtp-Source: ABdhPJws8CGWy//y5M10puATpT6n0+alfwN9dh+sqJxQFibJa36eioVmpuoLzaCmQIeiA0QZZxylsw==
X-Received: by 2002:a05:6214:20a2:: with SMTP id
	2mr33012046qvd.57.1641101984103; 
	Sat, 01 Jan 2022 21:39:44 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	bl8sm25311085qkb.38.2022.01.01.21.39.43 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 01 Jan 2022 21:39:43 -0800 (PST)
Message-ID: <1914a2cd-e729-c2df-8859-cf0a6dd86377@gmail.com>
Date: Sun, 2 Jan 2022 00:39:42 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.4.0
Subject: Re: archlinux and pulseaudio
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <cc5a1a34-5d16-e4bf-cd5-80988090af45@panix.com>
In-Reply-To: <cc5a1a34-5d16-e4bf-cd5-80988090af45@panix.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

If I'm understanding your situation correctly, it sounds like you may 
want pulseaudio-alsa. This package will configure alsa applications to 
use Pulseaudio, so they shouldn't be blocked. Hope it helps.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

