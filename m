Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id CC300209845
	for <lists+blinux-list@lfdr.de>; Thu, 25 Jun 2020 03:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593049463;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=9oJIYNU6QEgyOUEG5YrslP63hz+n7lGxtqvdot/DHac=;
	b=fXhAXLhNf+UIxXpIClXbuECYUXZq2eU77ft1H+G89MUarLdGin6MPfIuBpBBb9LVnobn8K
	Tsw6iS7V8Z1NZS1MAGXecQvTmjlD4/5LC07/BHKeCW6bMop/O212BUERgJTGgxnhxYG1GU
	sH39AI6D3jQV6a31sX8plpVeS/phMmw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-222-yfejk6a_MYygEufAi457lg-1; Wed, 24 Jun 2020 21:44:21 -0400
X-MC-Unique: yfejk6a_MYygEufAi457lg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BFC7B107ACCA;
	Thu, 25 Jun 2020 01:44:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F38712B4AD;
	Thu, 25 Jun 2020 01:44:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2A763833D6;
	Thu, 25 Jun 2020 01:44:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05P1i9Yb028395 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Jun 2020 21:44:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8CFED200A5AC; Thu, 25 Jun 2020 01:44:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 87DB12144B35
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 01:44:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2F51B101A525
	for <blinux-list@redhat.com>; Thu, 25 Jun 2020 01:44:06 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-212-2XngvfYnOdGMmbqGb4GrmA-1; Wed, 24 Jun 2020 21:44:03 -0400
X-MC-Unique: 2XngvfYnOdGMmbqGb4GrmA-1
Received: by mail-qk1-f174.google.com with SMTP id j80so3934390qke.0
	for <blinux-list@redhat.com>; Wed, 24 Jun 2020 18:44:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=KsfZXWQUguwTCl/PYK1Sp1MSfr7bPNacbjGGvA0Za1c=;
	b=kWo2VhcVkDMIbNu2xBwLoBysc9Ayx1tWtVKpHh+tGXgK+M+Zl3XxzCnbq8Luv11OhM
	6nR9jqE+ytPk17KMSFGOYvtjpPr/AF+v4+Va0e3xfo4ZzasljTCXeBPurIhaUN0en1ET
	/9aBVddB3ulS7U+U7o6DOlxfTMxOk6/pfNtxnm6Va6k10yK6PaXXGgLvIs5nUTyZD5TD
	eP6scrTcPODUmmutNeA1yezh5ciyoiSpjPrwqFRBWDEsB2P7c9OoYPIEVQZvgR6jitsC
	yl04HdlR/GSl3bMgMhpUzkwRy+OjS8EFZ/SEf4Xb2ylKz3/OvYhOLCxKnje+2BBNlZIJ
	jZ+A==
X-Gm-Message-State: AOAM531vaeI3FBaPJSRjUNEmS700gs1SMwqSX1234p1CT0FBaEuukXRv
	IZZuoeGaJ/4xoDuzWguwbdrjFpWnBqw=
X-Google-Smtp-Source: ABdhPJynDBGpS0l7WYVN6UmpxZROhIo5NehChpp6X3ei9T3UeHxcHYq5dEornxFTgmTxgAf6Ikmd3g==
X-Received: by 2002:a37:7803:: with SMTP id t3mr28323427qkc.358.1593049443128; 
	Wed, 24 Jun 2020 18:44:03 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::433?
	(2606-a000-111a-8d0a-0000-0000-0000-0433.inf6.spectrum.com.
	[2606:a000:111a:8d0a::433]) by smtp.gmail.com with ESMTPSA id
	x36sm4974583qtd.97.2020.06.24.18.44.01 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Jun 2020 18:44:02 -0700 (PDT)
Subject: Re: Prospects for an accessible and open version of Android?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <EDF1563A-2FF3-4966-92C9-0D56C440E445@gmail.com>
	<CAO2sX31aVwswLgsx=JjjjLGw8waC+hvBBVag60UBB5JbSFRYnQ@mail.gmail.com>
	<20200622.140639.018.15@192.168.1.130>
	<004701d648e3$0ac2e850$2048b8f0$@gmail.com>
	<CAO2sX31=Tkng2Zms9yLK7gVEyz+HKHDck5PEbTqL4xCe+diK=w@mail.gmail.com>
	<e606c651-4507-ad22-6a20-53753364f1f5@verizon.net>
	<CABKqQvEu6kC9SS7BCYK349DnxAh2moF1xLBFVoXBa1Hag5uHXA@mail.gmail.com>
	<63801353-D7D0-43CF-B340-E95876634B1C@gmail.com>
	<CAO2sX325iMBmhA4hs+iY5jNZ+weePFrRBgyk81BZT7Kyy23t8w@mail.gmail.com>
	<20200624120822.GG2690@rednote.net>
	<20200624.130638.725.17@[192.168.1.130]>
Message-ID: <1923b675-b168-1ad9-0dce-e1176022dae3@gmail.com>
Date: Wed, 24 Jun 2020 21:44:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200624.130638.725.17@[192.168.1.130]>
Content-Language: en-US
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Many times BIOS implementations also put optical drive boot after hdd as 
well, so I found it equally hit or miss. There really was no standard 
for this stuff, and UEFI made things even worse.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

