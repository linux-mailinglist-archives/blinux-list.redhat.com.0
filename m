Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 1CDC22A2945
	for <lists+blinux-list@lfdr.de>; Mon,  2 Nov 2020 12:27:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604316468;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OpcR4kG5nEnlQTxane+tE5oL1FZfXOl7dImsF5UoEho=;
	b=Hx8V4596SOR+MoQAfNyIiSVjZ3xJC/QkHU34/bO60RFdl2shAAxD7K7FQ7dckZl8og/ifa
	706WRU9ZOGBOQ2m9aFWMeJrXEnb9+6NP1EFJoxegdXprKlwtiA3SYLv5RB77erK8abr7PG
	/jWGARNSUslTKE9p1CGVBPfWwVz5Tm8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-iQxogaPNN7K8iAaeFXF4pA-1; Mon, 02 Nov 2020 06:27:46 -0500
X-MC-Unique: iQxogaPNN7K8iAaeFXF4pA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ECD72802B47;
	Mon,  2 Nov 2020 11:27:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 96EE05C5BB;
	Mon,  2 Nov 2020 11:27:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 55EF2181A06D;
	Mon,  2 Nov 2020 11:27:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A2BRae8016829 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 2 Nov 2020 06:27:36 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0A3FF2156A3B; Mon,  2 Nov 2020 11:27:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 055EC2156A37
	for <blinux-list@redhat.com>; Mon,  2 Nov 2020 11:27:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B6E7F102F1E0
	for <blinux-list@redhat.com>; Mon,  2 Nov 2020 11:27:33 +0000 (UTC)
Received: from v.cs-x.de (v.cs-x.de [193.30.121.81]) by relay.mimecast.com
	with ESMTP id us-mta-91-HAJm4poAPP-IXqlmRcyGGw-1;
	Mon, 02 Nov 2020 06:27:31 -0500
X-MC-Unique: HAJm4poAPP-IXqlmRcyGGw-1
Received: from [192.168.1.140] (p5b211203.dip0.t-ipconnect.de [91.33.18.3])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by v.cs-x.de (Postfix) with ESMTPSA id 78D94121A73;
	Mon,  2 Nov 2020 12:27:30 +0100 (CET)
Subject: Re: [orca-list] Arch Linux supports accessibility out of the box.
To: orca-list@gnome.org,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <e62bbcf2-d824-36cc-bc52-5b530dda7fe7@gmail.com>
	<e26afd1b-3a05-bde9-019c-213f2291de34@schoeppi.net>
	<28abae5f-a391-458a-fb64-44a90ad88b51@gmail.com>
Message-ID: <54748060-3bae-cafe-6fde-16406afcf7ce@schoeppi.net>
Date: Mon, 2 Nov 2020 12:27:26 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <28abae5f-a391-458a-fb64-44a90ad88b51@gmail.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

HI Alexander,

Am 02.11.2020 um 12:07 schrieb Alexander Epaneshnikov:
> installation iso hasn't supported nor speech neither braille til this day.

Thanks, then I was wrong and understood the Wiki not corectly :-(.

> i understand that beep would be helpful. but unfortunately i can't do 
> that. the fact is that arch ISO uses two bootloaders. syslinux for 
> legacy bios and systemd-boot for efi. systemd-boot does not support 
> beeps. so i decided to not implement this feature.

OK, thanks, understood. Damn systemd, this thing is causing trouble 
regarding accessibility all the time :-(.

Cheers,

   Schoepp

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

