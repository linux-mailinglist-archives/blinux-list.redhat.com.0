Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 0A8103E5C8D
	for <lists+blinux-list@lfdr.de>; Tue, 10 Aug 2021 16:09:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628604551;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1zL/PCi1BtQ10dvvXMq3enMHTUxsaMBPVilxf2LEBaQ=;
	b=dfckjj+PwSleQwGA5W+UAIdL5liSHhVcpl8za2ixQxN9b2U19PNwEja49RdoVWikhnTr/l
	SYG8tPlDDmhxmkqUCm/U64RRcRa3L8xDAw3QNuzT7HCkalUy31QRoVFwCWN8/Mm+J7+lZl
	thjYm0nbD5bY70jsudOvQF4Y0AXSKLo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-585-iqR4aQlIPwCFLveXziDRqA-1; Tue, 10 Aug 2021 10:09:09 -0400
X-MC-Unique: iqR4aQlIPwCFLveXziDRqA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ED1F2801A92;
	Tue, 10 Aug 2021 14:09:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0107F6A8E4;
	Tue, 10 Aug 2021 14:09:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 48903181A0F8;
	Tue, 10 Aug 2021 14:08:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17AE7dgT026460 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Aug 2021 10:07:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 43E6510EB2B2; Tue, 10 Aug 2021 14:07:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F36910EB2AD
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:07:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8872D89B846
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 14:07:35 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
	[209.85.208.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-15-ThebG3C0OIKImqum589XnQ-1; Tue, 10 Aug 2021 10:07:33 -0400
X-MC-Unique: ThebG3C0OIKImqum589XnQ-1
Received: by mail-ed1-f45.google.com with SMTP id g21so30485909edb.4
	for <blinux-list@redhat.com>; Tue, 10 Aug 2021 07:07:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=7xaE+ERRjz7LbDH0G6dQ5iaJLrJYmGTsaG+Z9sETaOQ=;
	b=sVHWTfrvniyrz4RidqmM3XfwtCVyAhmnAIGHvGJQUg99niGZU14TTTP93E39NxnGUs
	YW97OVWUHRm9AAiGnyClqYf0709VGySU0qdU5m0uAnoy8SSoC54zjIKvM/Eb55nBxeh6
	Bcy/aBznWsV5BrBi9RJuzkFpRMheBpHn+56TXj8GK1IKmWIu+Ava7r+GmN8+cQYI/aNS
	2rDAVmTWEnODcg4we9s5TsM/LbN9fM+frvc/fxAmAmcnkrcSsoVR7hPGAmzkJ94sW+Qx
	wY3ixgaUAHAcl3nQNmJAKdchHb3QfY2EZYp5u1yM8zAN2GVDPiQ7Yg0nhvxUs2FbgGIO
	XVJg==
X-Gm-Message-State: AOAM532Jbv0Y7vb8ur9EVAYZaWOnb6A7+x2727PgV1ft0m5fi7juBxM8
	3kdL32zZX2SS/SaZD0C8nIdJsETNqOlz2Q==
X-Google-Smtp-Source: ABdhPJxXiVfBxc7dxOj3eRBRJzPMfnGQOMo8ShRWZW9m0+6Z7jROysTy1fssQljNQH7idaJY4FrIvg==
X-Received: by 2002:a05:6402:198:: with SMTP id
	r24mr5220436edv.93.1628604452203; 
	Tue, 10 Aug 2021 07:07:32 -0700 (PDT)
Received: from darkstar.example.slint ([197.185.106.18])
	by smtp.gmail.com with ESMTPSA id
	c28sm6892457ejc.102.2021.08.10.07.07.30 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 10 Aug 2021 07:07:31 -0700 (PDT)
Subject: Re: Help, I need a Windows VM for my work
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<AD585221-10D6-4BCE-A68D-3220079018C1@gmail.com>
	<YRJyWYpNsgGZW1De@abilitiessoft>
Message-ID: <f66530f3-b48c-614d-69d6-a3a281ea31c9@gmail.com>
Date: Tue, 10 Aug 2021 16:07:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <YRJyWYpNsgGZW1De@abilitiessoft>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hey John,


The answer is rather simple. I already have 2 machines on my desk, an M1 
Mac and the Huawei I am using for Linux. I simply do not have the space 
to have another machine.


Warm regards,


Brandt

On 8/10/21 2:34 PM, Linux for blind general discussion wrote:
> Well, this will probably mark me as a fool, but I just use a Linux machine and a Windows machine connected by Samba.
> Computers are relatively inexensive now, so why bother with virtual machines?
>
> John
>
-- 
Warm regards,

Brandt Steenkamp

Sent from my gass powered Slint hair dryer.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

