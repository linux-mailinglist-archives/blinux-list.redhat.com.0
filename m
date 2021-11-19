Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D51364578FB
	for <lists+blinux-list@lfdr.de>; Fri, 19 Nov 2021 23:45:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637361952;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=B6UmUFzLVh8OrfuTCxLhT30TGeT72WUwaWolV7k9D7I=;
	b=YBkavnVEw1le6x2/gc9VmUlVeNIdWTKdcO086j1eIfQvqvD/si+PsT0AMJgj3/g6/z5rRl
	PeznH6snOkjopiNubA2oKOTOZe3cjTw+3TC5+16czBI/FYgIGg9PXSosc+8+w0HBM0E6uq
	meTqFAjY1LqK8Xyyd1VBlFvtqgewuQw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-249-_Qj5lDZCMiKeiTSAqwwOUA-1; Fri, 19 Nov 2021 17:45:49 -0500
X-MC-Unique: _Qj5lDZCMiKeiTSAqwwOUA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9A05A807919;
	Fri, 19 Nov 2021 22:45:45 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5315919D9B;
	Fri, 19 Nov 2021 22:45:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4D2871832E83;
	Fri, 19 Nov 2021 22:45:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AJMjcTr025520 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 19 Nov 2021 17:45:38 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6C06440CFD15; Fri, 19 Nov 2021 22:45:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 65FFE40CFD14
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 22:45:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4CDCA800C00
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 22:45:38 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-582-236CsDDHOO2VlwFfzR8g0g-1; Fri, 19 Nov 2021 17:45:36 -0500
X-MC-Unique: 236CsDDHOO2VlwFfzR8g0g-1
Received: by mail-qt1-f171.google.com with SMTP id j17so10939040qtx.2
	for <blinux-list@redhat.com>; Fri, 19 Nov 2021 14:45:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=03tV+oFFNt2QVi5vmJAzeVEjGMaRzeuH8j0xxjB0XNI=;
	b=4cmZkLunMzIWZIYRSs+YIHNdFsdA5jDUgVenkVGHQDu6zzevuQ9N7Qffr/avG4fjj8
	gvhp6e8/63LlZjUW9Pj49JYwRLofieLHLP8vMKglJkmiBFciFhWKbPX60Tz/4xZ7tJe+
	RcVKhaq/u2RuytV9109TBE04tfkFfYIlWiLdmRIQBvR+w/6WVbH7r0XPJhNJ19KmSpqY
	QUtCRI762LykOFRAqTSZ5VLTkNznsqvPBUPDWAEZGIdXHgzon1LiwY8TnopfoE7gkskH
	O4JD4ieKZ+mi9w6FsH1ixYGPU8kZwjwXFjiny0KO6i9cFYXJv4xyN6W95vx0C+E78iNY
	iGvw==
X-Gm-Message-State: AOAM530esjjLXQ9NpulGPHvirfLbCdj5KqHkrphVMd8SgBZ41QPxb2jd
	w+JwFozPGlBW21UizU2aPamFJ8KvJ0dT+lL4
X-Google-Smtp-Source: ABdhPJzA4MQ3I6T1Ku1Gv9alAvvER4k+JzpDWGLJSnP1B/Fw+g1d+gqkEWckx6d7shhyJm39HSkcBQ==
X-Received: by 2002:a05:622a:449:: with SMTP id
	o9mr10071021qtx.158.1637361935520; 
	Fri, 19 Nov 2021 14:45:35 -0800 (PST)
Received: from ?IPV6:2601:152:4000:330:557b:c846:75fe:e774?
	([2601:152:4000:330:557b:c846:75fe:e774])
	by smtp.gmail.com with ESMTPSA id s20sm574978qtc.75.2021.11.19.14.45.34
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 19 Nov 2021 14:45:34 -0800 (PST)
Message-ID: <5f7fb95f-74a0-6a95-bf96-d933e513c814@gmail.com>
Date: Fri, 19 Nov 2021 17:45:33 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: looking for Lennix distribution?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <c28c932c-ef31-339c-ab9f-b875fab8d259@hubert-humphrey.com>
	<a257cb5e-685f-1c7a-b41a-16e42fa74511@gmail.com>
	<8a5e7b3d-2d54-c13f-659f-bd10b23de2b1@hubert-humphrey.com>
	<02c78924-8760-4e5e-d58a-787766c60325@gmail.com>
	<aab6690b-f55f-80d5-2b1f-dfc3aa7f1272@icloud.com>
	<779a43bb-fe1c-6d4a-a7e2-31532308d709@gmail.com>
	<C397260A-A8B2-4479-A3F5-6547EA4A1D8F@icloud.com>
	<fd55f0f8-262a-df02-b0cc-09a61ad3f5ee@googlemail.com>
	<e7a5e2a8-ae3d-296f-c910-acc0df8d2d92@gmail.com>
	<c78786a7-1243-3287-6f72-bd85f8d7474c@gmail.com>
	<9969beee-025b-3a64-dbd6-ab203bf6e060@gmail.com>
	<7c611c4e-d855-047f-3784-04382c6613d5@gmail.com>
	<fc822abc-4ee9-89fb-2c6e-b61477e0b8ae@gmail.com>
In-Reply-To: <fc822abc-4ee9-89fb-2c6e-b61477e0b8ae@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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

It already installed it to the system internal drive, unfortunately. The 
question is how to get red of it. I will have to get one of my sighted 
friends to reset my boot up options to default.

Cheers,

Ibrahim

On 11/19/2021 4:53 PM, Linux for blind general discussion wrote:
> The bootloader checkbox is in the disk configuration. I'll have to 
> look at it again to be sure, but if I remember correctly, it's in the 
> window that pops up when you select the disk where you're installing 
> the OS. Actually, I think it's a button or some such that says "do not 
> install bootloader," but again, I'll have to look at it again. I do 
> know there is a way to keep it from installing the bootloader, as well 
> as a way to install to a different disk. By default, it installs to 
> the system internal drive, which you do not want.
> ~Kyle
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

