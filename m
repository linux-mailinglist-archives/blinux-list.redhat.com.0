Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id AD7773C99B3
	for <lists+blinux-list@lfdr.de>; Thu, 15 Jul 2021 09:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626334646;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=H4T/FzYA+Bon+HAPzh3fgyzLHy7b/0O6QxXIskZNybY=;
	b=hLy1u1CoAMunEXKIt4iwnNWAdtGmpFtTY/O/zgJcQwK8xfd1Siq2QHnFB/sHiY11GKUjzD
	sROwpH3osbhnKIoOWFgSdkuVO3R1U7vtw6TwPlj0CxTQzGtByUAWVPszvK/EXeHGcSBKs+
	/bAyfLh7y4NghtCxG/1Kt8vv1Img4i8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-339-uNCBExqSN2OhjW9N5JMLRg-1; Thu, 15 Jul 2021 03:37:25 -0400
X-MC-Unique: uNCBExqSN2OhjW9N5JMLRg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5AEE3101F7A1;
	Thu, 15 Jul 2021 07:37:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C4D5B5D6D1;
	Thu, 15 Jul 2021 07:37:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7A2564A712;
	Thu, 15 Jul 2021 07:37:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16F7b1qn029272 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 15 Jul 2021 03:37:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F0C6D207B360; Thu, 15 Jul 2021 07:37:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EC00A207B343
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 07:36:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 622921078463
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 07:36:57 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-255-lvvkIXAHO8C5xFqS_jrraw-1; Thu, 15 Jul 2021 03:36:55 -0400
X-MC-Unique: lvvkIXAHO8C5xFqS_jrraw-1
Received: by mail-wr1-f49.google.com with SMTP id l7so6426339wrv.7
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 00:36:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=iLvgvgk8/9nm7chm2rG0nC/kENfG5t3BBJ51kwx6iBg=;
	b=sH1eLCRP2bZyQJHqySHWSqK9hYx6mW4yhiW647FwN8omRgYNw7TG+tpGRyOC0G4c1h
	a0u713GLpWdFxInOc0R4oNC5tnpcyF3HVPvxt2opqT2fJPyA5fXXnahmF0O44NFw+vB6
	WkAMwBU9/OwgQzqlgOf/52NkTZsT4fWDL7cpjT5X7N6UNXnUN1L1U6gMKe9GnPgGjZFA
	1rI31+dbg2qr3dDejTZjJYXupr5e7RHIvCpdO5PgYEvdKguhbCyAvhvajcV0BYX9jZKt
	ky+lw/Q1Nye+dxISNZ5MxGz8y6B6QUBZeXxJ/kZXuLFaGTgN+ADhnQTRqUXHGNUX+nfh
	n6Ww==
X-Gm-Message-State: AOAM530jEevy2WiJJvTOObdoahk4Sq6ptGBtJfCaDWfSwqFHxx0TvbTP
	KAwYtCDBCDu0Q3i2RvAnY/OMgx9E8J8/Nw==
X-Google-Smtp-Source: ABdhPJzZCzJFN1UY1t7LNlHHzHyZG4m0D/yW0IHQVaQj74B95DIyBxVvu4gxMKz1QJre9NLn2W7sAQ==
X-Received: by 2002:a5d:6b8e:: with SMTP id n14mr3591307wrx.96.1626334613759; 
	Thu, 15 Jul 2021 00:36:53 -0700 (PDT)
Received: from [192.168.1.102] (radio12.infos.cz. [46.33.112.76])
	by smtp.gmail.com with ESMTPSA id z25sm4207863wmf.9.2021.07.15.00.36.53
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 15 Jul 2021 00:36:53 -0700 (PDT)
Subject: Nextcloud was Re: Cloud service
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <1f0192b2-4728-b80f-cbe9-18c30a087e22@gmail.com>
	<e4bddc5b-213d-70e1-c50b-58bc06b3f535@gmail.com>
Message-ID: <15bce51f-2b5e-91f2-c1ae-2bcfdad07cef@gmail.com>
Date: Thu, 15 Jul 2021 09:36:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <e4bddc5b-213d-70e1-c50b-58bc06b3f535@gmail.com>
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

Hi,

so I choosed Nextcloud by webo and for now, I am searching for 
accessible client. I downloaded the official nextcloud appimage client, 
but my computer says, can not run binary file. Can you give me some 
recommendations?

Thanks,

Pavel




Dne 14. 07. 21 v 18:03 Linux for blind general discussion napsal(a):
> I recommend either self-hosted OwnCloud or NextCloud, or a service 
> provider that offers one of these options. Far more than storage, both 
> of these solutions offer powerful collaboration tools and can even 
> sync contacts and calendars, and both are open source and secure. 
> Check out
>
> https://nextcloud.com/providers/
>
> for available hosted NextCloud providers. All the private use 
> providers will offer at least 2GB of storage, which is comparable to 
> Dropbox, but some offer more free space.
>
> It seems to be more difficult to find OwnCloud providers with free 
> storage space, but it's usually better if you can do so to set up your 
> own host, either at home or through a VPS (virtual private server) in 
> any case.
>
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

