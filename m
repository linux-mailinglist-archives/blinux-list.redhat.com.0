Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 16A9E3FA2EB
	for <lists+blinux-list@lfdr.de>; Sat, 28 Aug 2021 03:31:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630114265;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=blIAWsP/XFrmh5K6NLj8Me70X3P1wflmfVSgV3vqsXQ=;
	b=H0Y6Uv2wD50oqBglYB2yG1OTQ0SPrK+0I9UQvIfLNYgLYl9g1cz4gijFIZcmS9LZoYXtaF
	BQ7FGZGkBP7FwNzNvDNvoVnqrPI/xQtbH0eRCrnogPvpZrNyP4wnvTZulGeJkXkn7V5IR/
	K80DvHVPmBJNlEiiaKBhn1aJSSvgVik=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-393-oZHlXgXON12cLo6CwxAYyA-1; Fri, 27 Aug 2021 21:31:03 -0400
X-MC-Unique: oZHlXgXON12cLo6CwxAYyA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6AA431008062;
	Sat, 28 Aug 2021 01:30:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7EB976A907;
	Sat, 28 Aug 2021 01:30:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 933E84A7C8;
	Sat, 28 Aug 2021 01:30:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17S1UBcZ015772 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Aug 2021 21:30:11 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2E84C1A9219; Sat, 28 Aug 2021 01:30:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28BA11A9218
	for <blinux-list@redhat.com>; Sat, 28 Aug 2021 01:30:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 07EEB811E78
	for <blinux-list@redhat.com>; Sat, 28 Aug 2021 01:30:08 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-435-XxYlMvlwNKiINFurbtsLbg-1; Fri, 27 Aug 2021 21:30:05 -0400
X-MC-Unique: XxYlMvlwNKiINFurbtsLbg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GxJt52cJtzSy7
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 21:30:05 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GxJt522Gdzcbc; Fri, 27 Aug 2021 21:30:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GxJt51jfHzcbW
	for <blinux-list@redhat.com>; Fri, 27 Aug 2021 21:30:05 -0400 (EDT)
Date: Fri, 27 Aug 2021 21:30:05 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: unable to install from aur
In-Reply-To: <c93e99c6-f132-46e6-1a17-94b7a1802274@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2108272129470.27038@panix1.panix.com>
References: <20210827.181429.958.4@[192.168.1.100]>
	<f27ef494-11d0-71e1-dc0e-f93762bfb28b@gmail.com>
	<20210827.191148.445.6@[192.168.1.100]>
	<94329dd7-51a8-3124-583b-508c431cafd8@gmail.com>
	<20210827.200251.396.9@[192.168.1.100]>
	<80cc3f79-c913-996c-b6c3-2f0be6579c82@gmail.com>
	<20210827.203346.863.10@[192.168.1.100]>
	<c93e99c6-f132-46e6-1a17-94b7a1802274@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

pikaur and yay are both aur helpers.


On Sat, 28 Aug 2021, Linux for blind general discussion wrote:

> 27.08.2021 23:33, Linux for blind general discussion ?????:
> > Ok, that did work.
> > However, shouldn't this be handled auotmagically and not have to be done
> > every time I need to install a package from aur?
> >
> maybe it should be handled by your aur helper. but when key isn't uploaded to
> key server there is simply no place to download it.
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

