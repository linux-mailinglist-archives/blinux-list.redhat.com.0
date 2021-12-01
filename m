Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB66464986
	for <lists+blinux-list@lfdr.de>; Wed,  1 Dec 2021 09:21:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638346919;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=u9TNH15KaqW4k+ZetUkvcEw5+hOLc/0EY5SNaN0HQvc=;
	b=D+nYAmwhvKe1RcF2dRI/DsdKACBvChRsBip1XAhhPdpt9btaIu+KjOyB0KI6Sl9BNIUoPd
	9VM1RAQTPDy1k7f0vG9dOw5u+JH1L+tEo72ytiFik0xsCoJHWHv5AoJT/6oHgqJIC2bsay
	1W0hM5c9q3q/Zh8oq+JQco0/tfkBB4Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-595-Y5fB5y1VM8akGaSh1vnhwg-1; Wed, 01 Dec 2021 03:21:55 -0500
X-MC-Unique: Y5fB5y1VM8akGaSh1vnhwg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D2BC4801B24;
	Wed,  1 Dec 2021 08:21:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DB48660854;
	Wed,  1 Dec 2021 08:21:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7DC774CA93;
	Wed,  1 Dec 2021 08:21:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B18LNG9021543 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Dec 2021 03:21:24 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B2F4521565E5; Wed,  1 Dec 2021 08:21:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD4D92156601
	for <blinux-list@redhat.com>; Wed,  1 Dec 2021 08:21:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C28BE85A5AA
	for <blinux-list@redhat.com>; Wed,  1 Dec 2021 08:21:20 +0000 (UTC)
Received: from mail.schoeppi.net (mail.schoeppi.net [193.41.226.221]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-274-JekYbo_VMTK6GKIrKnPMrQ-1; Wed, 01 Dec 2021 03:21:19 -0500
X-MC-Unique: JekYbo_VMTK6GKIrKnPMrQ-1
Received: from k.n5t.de (unknown [172.19.7.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
	server-digest SHA256) (Client did not present a certificate)
	by mail.schoeppi.net (Postfix) with ESMTPS id 597892ADB28
	for <blinux-list@redhat.com>; Wed,  1 Dec 2021 09:21:12 +0100 (CET)
Date: Wed, 1 Dec 2021 09:21:11 +0100
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: What is the easiest and most accessible editor?
Message-ID: <Yacwd/tajEjVoFH9@k.n5t.de>
References: <878bd3e0-d05c-4132-52b4-d29893818041@gmail.com>
	<7d174815-a616-2abd-72e9-014ac8bf2b8b@slint.fr>
	<87bl22kqlz.fsf@brainpower.wer>
	<CAO2sX32s07jDN=1KiJCQ-31_gh5RAFFXBibGwKrLd4zuDpESKQ@mail.gmail.com>
	<PH0PR14MB4296B85503BE458036633010C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<4d3de3ee-529a-0829-300e-3a1999cf2a76@gmail.com>
	<PH0PR14MB4296ABD498F0634DA72DCA10C8679@PH0PR14MB4296.namprd14.prod.outlook.com>
	<d7fdfa4d-de81-02bc-eb50-f741e3ab0c63@gmail.com>
	<bc065beb-52da-b768-adc4-4c43436dc600@gmail.com>
	<alpine.NEB.2.23.451.2111302046140.19550@panix1.panix.com>
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2111302046140.19550@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

On Tue, Nov 30, 2021 at 08:48:07PM -0500, Linux for blind general discussion wrote:
>An email resource is help-gnu-emacs@gnu.org which is an email list like
>blinux-list@redhat.com.  Then there's youtube with its sometimes excellent
>and sometimes useless videos.

And a new reworked page with many stuff regarding emacs:

https://www.emacsdocs.org

Cheers,

  Schoepp


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

