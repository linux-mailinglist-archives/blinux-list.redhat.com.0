Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 40020352BC3
	for <lists+blinux-list@lfdr.de>; Fri,  2 Apr 2021 17:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1617377100;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=I5d/0QWpLTmc0rWWkYmzaN4LAx+9IJbJjv23IR6S0Vs=;
	b=HJVB66xApO1V0H0XtRcuNLtCfZPuxZudjp6Bga7vXiJyfzwy5bbACqBLbg4HSN+8XYLZdb
	O1FHBmrG3kqbn2kXdw0wHvcBPdVqh52ArUf1sBgibVRRbW19mI4w3J2dEVsx9DEvHtFU5J
	y1iTOVpbY3nMc3JKh84ajmWfX/Ejkeg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-523-_O0tqx5uPbizodd_yhT00w-1; Fri, 02 Apr 2021 11:24:58 -0400
X-MC-Unique: _O0tqx5uPbizodd_yhT00w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 23D618030B5;
	Fri,  2 Apr 2021 15:24:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0A7045C1A3;
	Fri,  2 Apr 2021 15:24:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5DC034A7C8;
	Fri,  2 Apr 2021 15:24:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 132FObnn005084 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 2 Apr 2021 11:24:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 606C92026D6B; Fri,  2 Apr 2021 15:24:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5BFB82026D64
	for <blinux-list@redhat.com>; Fri,  2 Apr 2021 15:24:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0A77B805F47
	for <blinux-list@redhat.com>; Fri,  2 Apr 2021 15:24:35 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-546-lVwliDtRP5WyRxaLtQ5MfA-1; Fri, 02 Apr 2021 11:24:33 -0400
X-MC-Unique: lVwliDtRP5WyRxaLtQ5MfA-1
Received: by mail-qt1-f178.google.com with SMTP id u8so3885386qtq.12
	for <blinux-list@redhat.com>; Fri, 02 Apr 2021 08:24:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=lQVOiToL1MjQ+XyCgPnmkM36m/GqS98KYBxygkCGQoA=;
	b=O9TRG/25nAPsLYyDiORADsgxQQC9RYMgMQWXLgg/NIO5AwVL7D2QJb6MlExhk1Qbp7
	uCG9dQc7FhW4sqGmgrj/oOyLAkzRPRowODy1YnR8tI0LfqeMAetx7SULILfxyZq/U6Uu
	y/57GUbkpvLCh8KE8XTm8B/6nXkIfDTqwJpdBpWLibBUAdbMuaLzte3PtYX8b2c5TVxH
	CclHXLfXRKU91ngTtuvk+kFHpHKGC1aq0+2vnqDppQ07kmPoPHk0Bef4/b7SA5IZn0c8
	GbFad5DtvlBpOPIAG61YNVaH0I6rDr8SDpRxCKwAVjhc1JCag/KzMKdrWxQAXhw6nnPM
	rpog==
X-Gm-Message-State: AOAM533YhYnqOZ0+V96YjCJhFL0ldkVt/woqWB2PNNpjDDHJYEG1VMeU
	4LW0yDG93akVJHEWCwG8UTiOdeQJod+dCw==
X-Google-Smtp-Source: ABdhPJzQERZXiWRhgNir65LwczJYFBatLKL26VRWmU75NSyAb6I2DywjSCpTJKYciCdr13AdTv3/9g==
X-Received: by 2002:ac8:6f02:: with SMTP id g2mr11899467qtv.385.1617377072422; 
	Fri, 02 Apr 2021 08:24:32 -0700 (PDT)
Received: from [192.168.0.34] ([204.29.85.5])
	by smtp.gmail.com with ESMTPSA id m3sm7360843qkk.15.2021.04.02.08.24.31
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Fri, 02 Apr 2021 08:24:31 -0700 (PDT)
Subject: Re: orca keystrokes
To: blinux-list@redhat.com
References: <00bf01d727d3$fa887ab0$ef997010$@cox.net>
Message-ID: <b7c6d12c-9a58-030b-67e5-130382f13adf@gmail.com>
Date: Fri, 2 Apr 2021 10:24:31 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <00bf01d727d3$fa887ab0$ef997010$@cox.net>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, you're in laptop layout. If you don't like that, and have a number
pad, you can switch to desktop layout in Orca's General settings. If you
stay in laptop layout, the Orca modifier is the Capslock key.

On 4/2/21 10:22 AM, Linux for blind general discussion wrote:
> The caps lock and spacebar did it.  Thanks!!
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

