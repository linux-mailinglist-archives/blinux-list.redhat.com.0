Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A59F45CA6F
	for <lists+blinux-list@lfdr.de>; Wed, 24 Nov 2021 17:55:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637772903;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=M0rGfM7eDcBv0KrKfu8tiGX9rV5cU2V5pgEiYrK7vd0=;
	b=KK5rZYLQ9x45USAMukcBKjdxzdfiu0+7CxL7NkixZOfF1KH72EPg63fwZqtBFobKrBhrSk
	Cs1gOL6s7LOKL2mt/CSyWxVMew+cKojRY0zYgzYBe3G1kTfhhM52mQlvfQsobSr/CD0Wx6
	OE8FuopIRPCBfw6UyPKe1K090gmGMSY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-200-9ucHav1COEKcnIDgxsZE9A-1; Wed, 24 Nov 2021 11:54:59 -0500
X-MC-Unique: 9ucHav1COEKcnIDgxsZE9A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 84B239F92B;
	Wed, 24 Nov 2021 16:54:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7C635D6CF;
	Wed, 24 Nov 2021 16:54:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 83F401809C89;
	Wed, 24 Nov 2021 16:54:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AOGo5oR002303 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 11:50:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D36A12166B2D; Wed, 24 Nov 2021 16:50:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE5E32166B25
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 16:50:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EB41F858EED
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 16:50:02 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-20-Samndh66M6Gs_h3rYgMSBg-1;
	Wed, 24 Nov 2021 11:50:00 -0500
X-MC-Unique: Samndh66M6Gs_h3rYgMSBg-1
Received: from darkstar.example.slint
	(men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr [176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 02B11A1CDB
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 15:49:19 +0100 (CET)
Subject: Re: Fedora and virtual machines not starting
To: blinux-list@redhat.com
References: <5c81b0ff-aff6-4a36-c51d-5d158ef96b69@gmail.com>
	<ef07585e-1400-53a6-a33d-5b2a0f3d50b9@gmail.com>
Message-ID: <7453168f-852f-1d45-d03d-c82a756e89bf@slint.fr>
Date: Wed, 24 Nov 2021 17:49:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <ef07585e-1400-53a6-a33d-5b2a0f3d50b9@gmail.com>
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

I am busy preparing a batch of updates for Slint, when done will start
Fedora Mate Compiz in a Qemu VM, try to get speech and report my
findings.

Also, Kyle thanks for your technical comments about Fedora, will answer 
as soon as I can.

Cheers,
Didier

On 24/11/2021 17:38, Linux for blind general discussion wrote:
> I'm not familiar with quickemu/qemu, but it seems possible that maybe 
> you don't have sound hardware set up for the vm. Qemu can emulate sb16 
> and es1370 if I remember correctly, and I've had the best luck with 
> es1370 emulation. Hope this helps.
> ~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

