Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 53BFA30E586
	for <lists+blinux-list@lfdr.de>; Wed,  3 Feb 2021 23:04:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612389848;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=b4MUJPmLXQVFkQzZJFuHFmcbauOqwpvbwDBIJy7b2Wk=;
	b=RUV4CV994pTUSE+yvLGfSzyjbmpRkTlH6YrysZQ54FFXQOR0uXXwZ1EJd/zEjFZVTVGVBp
	H7Fhr5eIobbKpIGEBk63q0QeHcoHaObDC+2yihM7m7F30Lo7IE8ZQsVtUKDScBA0V/r0Ce
	yGPY7o60GXYJdsV7WNH2FKHlKtOdWgk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-13-xdLmTqxPPZaDf5MxoIHwVw-1; Wed, 03 Feb 2021 17:04:05 -0500
X-MC-Unique: xdLmTqxPPZaDf5MxoIHwVw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F38FB183CD00;
	Wed,  3 Feb 2021 22:03:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1506EE170;
	Wed,  3 Feb 2021 22:03:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9BF304EE4D;
	Wed,  3 Feb 2021 22:03:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 113M3e0q023111 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 3 Feb 2021 17:03:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0995A114B9DD; Wed,  3 Feb 2021 22:03:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 02B3210F2700
	for <blinux-list@redhat.com>; Wed,  3 Feb 2021 22:03:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 98D4B858EEB
	for <blinux-list@redhat.com>; Wed,  3 Feb 2021 22:03:37 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-328-Hs527XPkM3CB3KTUDPrPDw-1; Wed, 03 Feb 2021 17:03:35 -0500
X-MC-Unique: Hs527XPkM3CB3KTUDPrPDw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4DWG0Q6vyYz1vDL
	for <blinux-list@redhat.com>; Wed,  3 Feb 2021 17:03:34 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4DWG0R18tlzcbc; Wed,  3 Feb 2021 17:03:35 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4DWG0R0xVLzcbW
	for <blinux-list@redhat.com>; Wed,  3 Feb 2021 17:03:35 -0500 (EST)
Date: Wed, 3 Feb 2021 17:03:35 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: latest download of jenux iso?
In-Reply-To: <d93d7848-cda6-0424-436a-526208378bfc@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2102031703190.3544@panix1.panix.com>
References: <d93d7848-cda6-0424-436a-526208378bfc@gmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

mailto:dnl.nash@gmail.com
wget -bc https://nashcentral.duckdns.org/projects/Jenux-2021.01.04-dual.iso.sha512
wget -bc https://nashcentral.duckdns.org/projects/Jenux-2021.01.04-dual.iso
sha512sum -c Jenux-2021.01.04-dual.iso.sha512

On Mon, 1 Feb 2021, Linux for blind general discussion wrote:

> can I get the url to the latest iso of jenux?
>
> the iso on the homepage gives me a object not found
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

