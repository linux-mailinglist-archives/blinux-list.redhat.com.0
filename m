Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 182533BE9BD
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 16:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625668055;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=h57UJuw2EyiVbnMTPyHXChxWnexMvBvcx7zL6pNwRJU=;
	b=QiJhmuzWYPvVCfHSCo/wtrojDKCXlrM5AK/Li+aiMEHQfqQcP06vFWahNeesj8o4fxS+pK
	cQl5RPI4Bokein1aYCUZSHWsPeJXO7sosVvJ8mLFqqjcHefrYt9PX6uGOKfygV5OSPDDTp
	pBYGZnfeYDze+wOSEE84NKVfEqNiKhI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-502-EQBqc1WDMy-SYfdNBSTUtg-1; Wed, 07 Jul 2021 10:27:33 -0400
X-MC-Unique: EQBqc1WDMy-SYfdNBSTUtg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 42F8D1926DA2;
	Wed,  7 Jul 2021 14:27:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E232A5D6A8;
	Wed,  7 Jul 2021 14:27:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6CED11809C99;
	Wed,  7 Jul 2021 14:27:28 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167ERPiT027994 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 10:27:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 06C6E203CE47; Wed,  7 Jul 2021 14:27:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F24A5203CE51
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 14:27:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C40158015B9
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 14:27:21 +0000 (UTC)
Received: from mail.schoeppi.net (mail.schoeppi.net [193.41.226.221]) by
	relay.mimecast.com with ESMTP id us-mta-546-hiXSjmNdNgakp4hlKxGe7A-1;
	Wed, 07 Jul 2021 10:27:19 -0400
X-MC-Unique: hiXSjmNdNgakp4hlKxGe7A-1
Received: from [192.168.1.140] (pc19f8990.dip0.t-ipconnect.de
	[193.159.137.144])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(Client did not present a certificate)
	by mail.schoeppi.net (Postfix) with ESMTPSA id DBBC02AD924
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 16:27:18 +0200 (CEST)
Subject: Re: Starting linux again
To: blinux-list@redhat.com
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
	<alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
Message-ID: <f59d22b1-f0b6-207d-6c26-a83845de2a51@schoeppi.net>
Date: Wed, 7 Jul 2021 16:27:15 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Debian has the most accessible installer AFAIK, all other distros I know 
are not that easy to setup. So defenatly give Debian a try ;-).

Cheers,

   Schoep



Am 07.07.2021 um 15:39 schrieb Linux for blind general discussion:
> That's great news! I had seen a comment somewhere about debian no longer 
> having an accessible install but if it still does, I will definitely go 
> to that first.
> 
> 
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

