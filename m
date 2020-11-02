Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B6B612A288E
	for <lists+blinux-list@lfdr.de>; Mon,  2 Nov 2020 11:54:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604314446;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i5yIxUHRqwnL20gcnHNrhUwvzMXdxBV6tyK+HjWRCVk=;
	b=fxCy/LbEUFBEtAXnptNT5ykLvHLCIcb5SJoFxLLP1zg5gzSgsXeWlfDtVbH5DKh53SQ7OP
	CT4ESF1FA7VDTQxXPjV2/DpLN2nL+4DFK8tyDomyOKtXOsh6/V7o+tlRrhO4WalKRftTKS
	KKLEpq7uJcETbr3TKMNjVHZWHnLbx9U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-239-aNiBg9v_OMu6W8VerDMBEw-1; Mon, 02 Nov 2020 05:54:04 -0500
X-MC-Unique: aNiBg9v_OMu6W8VerDMBEw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D312F1882FA1;
	Mon,  2 Nov 2020 10:53:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9B3DA55789;
	Mon,  2 Nov 2020 10:53:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1B1F6181A050;
	Mon,  2 Nov 2020 10:53:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A2ArieG014922 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 2 Nov 2020 05:53:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BBCAF1111447; Mon,  2 Nov 2020 10:53:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B76101111445
	for <blinux-list@redhat.com>; Mon,  2 Nov 2020 10:53:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9FB5D800969
	for <blinux-list@redhat.com>; Mon,  2 Nov 2020 10:53:42 +0000 (UTC)
Received: from v.cs-x.de (v.cs-x.de [193.30.121.81]) by relay.mimecast.com
	with ESMTP id us-mta-15-lz_1v64bMRyT4u9eM5ZLYQ-1;
	Mon, 02 Nov 2020 05:53:40 -0500
X-MC-Unique: lz_1v64bMRyT4u9eM5ZLYQ-1
Received: from [192.168.1.140] (p5b211203.dip0.t-ipconnect.de [91.33.18.3])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by v.cs-x.de (Postfix) with ESMTPSA id 49B221215F6;
	Mon,  2 Nov 2020 11:46:44 +0100 (CET)
Subject: Re: [orca-list] Arch Linux supports accessibility out of the box.
To: orca-list@gnome.org,
	Linux for blind general discussion <blinux-list@redhat.com>
References: <e62bbcf2-d824-36cc-bc52-5b530dda7fe7@gmail.com>
Message-ID: <e26afd1b-3a05-bde9-019c-213f2291de34@schoeppi.net>
Date: Mon, 2 Nov 2020 11:46:41 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <e62bbcf2-d824-36cc-bc52-5b530dda7fe7@gmail.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

Am 02.11.2020 um 01:49 schrieb Alexander Epaneshnikov via orca-list:
> I am pleased to announce that starting from this day, 
> arch Linux
> 
> supports accessibility officially out of the box.

Do I understand corectly, that speech support during installation is the 
new accessibility feature, but that braille support has been in the 
installer for a longer time already?

In the Debian installer a beep tone is played when the boot menue is 
displayed. Wouldn't it be helpfull to have this also for the Arch 
installation or is this integrated already?

Cheers,

   Schoepp

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

