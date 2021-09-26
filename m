Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A3CEF41898E
	for <lists+blinux-list@lfdr.de>; Sun, 26 Sep 2021 16:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1632667902;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UHppL/R5md5d810h75wIks64g+zKwCwBwa556iOIfNQ=;
	b=N4OxAv98zHEL9GhXGSxOhNBI7ZLODyiH33+XXviZguzYGmVGmhSo+3hV1TvVDlJc4/Gxzo
	UUVuR89rpFHMdFJjJttP+gZwG2TaumyaaliRbMszCWsFR3dAgBfHZvVC9CpzviwDjlTG8o
	0pg3iE4y3gF1Z8vigMd/L4AUAVxPCPE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-196-2h5SO04bPsK4QEBWYIkWsA-1; Sun, 26 Sep 2021 10:51:40 -0400
X-MC-Unique: 2h5SO04bPsK4QEBWYIkWsA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E10EF1808306;
	Sun, 26 Sep 2021 14:51:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BFF024180;
	Sun, 26 Sep 2021 14:51:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B96694EA2A;
	Sun, 26 Sep 2021 14:51:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18QEpG7d032688 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 26 Sep 2021 10:51:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C7EFB2022EC4; Sun, 26 Sep 2021 14:51:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C2C6E2022EA5
	for <blinux-list@redhat.com>; Sun, 26 Sep 2021 14:51:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 95CC08007B1
	for <blinux-list@redhat.com>; Sun, 26 Sep 2021 14:51:12 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-587-oLa5-z4FNY-8pMfhJnoJNQ-1; Sun, 26 Sep 2021 10:51:11 -0400
X-MC-Unique: oLa5-z4FNY-8pMfhJnoJNQ-1
Received: by mail-wr1-f47.google.com with SMTP id u18so44025473wrg.5
	for <blinux-list@redhat.com>; Sun, 26 Sep 2021 07:51:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=JsEhFzaKjVdwhi3WSwMsCkRrPAKVYcWBK2u938CMnOs=;
	b=fz8YRO+zLSfhzK+fn71ChTRku0G3cr0vKCtXIOu20FOCk0hCZd5j63xY6PslXT2Q5y
	T2pe2ncU6qPht1coRjMVK0Q4eQhIMlldUNulMkY9KIip1MgqQU0Lz7SnQmDmJOpZ1rkP
	eRbZhygB2tTLfaIXlfcG8ScjrvhAxPiUwIFsy7ExjOfI7VLbTjeRBnxD9msNvCPQUUdf
	S7n9UWyu8ASCnPmQDsA4g0/+ysfKVtwUBKnvQGW5NEoy74yn5tunUIfsh2ewUxlBKBl8
	hKONoueNJficApQD7yANUu1fAyxhgJUni/DTSetCdc5KgTgxBcwwvjriPCPhSjFWY4LM
	OS0A==
X-Gm-Message-State: AOAM531ES1nt/YA5rgOSKbd4CIRr0fUcyY/v9JMfkPk1EfB/8DnJ1B1E
	nbFYNsfS4izWc2DXhCXfAQylylr+xaM=
X-Google-Smtp-Source: ABdhPJxbnoSRD4DE0mWhe2fOzm8raywpBJZz856mrM2LGDoGb14JD2VHlBkRh3poYUofEXXloJhC3A==
X-Received: by 2002:a1c:3b43:: with SMTP id i64mr11217652wma.170.1632667869559;
	Sun, 26 Sep 2021 07:51:09 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.201.36])
	by smtp.gmail.com with ESMTPSA id z12sm325245wrv.31.2021.09.26.07.51.08
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 26 Sep 2021 07:51:09 -0700 (PDT)
Subject: Re: Did Mate change the Brisk menu?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3dda2919-2447-9f48-21ed-49c832ce4ff7@gmail.com>
	<e07cd8e4-5326-2d85-1cc6-997cacc80504@gmail.com>
	<6dd08e29-01a1-b179-c305-515772fe849d@gmail.com>
Message-ID: <2e992e3c-9317-825e-b70a-24e3b35f1e63@gmail.com>
Date: Sun, 26 Sep 2021 15:51:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <6dd08e29-01a1-b179-c305-515772fe849d@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

No, the Brisk menu is the one you should get when you press the Super 
key. The alt+f1 menu works as expected.

It seems the Brisk menu either got unbound, or removed in an update, but 
it works fine in Budgie though

On 9/26/21 1:23 AM, Linux for blind general discussion wrote:
> On my new Solus-MATE installation in my vm, if I press alt+f1 to open 
> the menu, instead of the traditional MATE menu bar with the system, 
> applications and places menus, I see a single menu, in which system 
> and places are submenus and log out and shut down are at the bottom. 
> Is this the Brisk menu? I just installed this and updated it today and 
> I see this menu structure both before and after the update. It appears 
> it has not changed.
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

