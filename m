Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id CF4D921268F
	for <lists+blinux-list@lfdr.de>; Thu,  2 Jul 2020 16:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1593701115;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3kOefuet8vVoqD36dsSK/jkFmBG077vwClYIUlIKxgg=;
	b=Y6YKQujxRyyfycfhOHwq/cHM0xoyiWNqVZnpL+YJSYBM50JfHORfxSwLCFHgMQCFmD/17L
	fCRPq6rdvcZT8KSlPfUuGssVlkycgJkUNj7EJOzVtPY6C1b3ijEEKp/nPubfUf6V6e35RS
	Om4ChsZuN53+hIRy9qxg6YxoZog2TIg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-309---g_rdwGNeiO8qn6qrV1PQ-1; Thu, 02 Jul 2020 10:45:13 -0400
X-MC-Unique: --g_rdwGNeiO8qn6qrV1PQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA23F107ACF3;
	Thu,  2 Jul 2020 14:45:08 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AE7171002397;
	Thu,  2 Jul 2020 14:45:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2847F6C9DA;
	Thu,  2 Jul 2020 14:45:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 062EfNkX012029 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Jul 2020 10:41:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DD0A2200AC2B; Thu,  2 Jul 2020 14:41:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D91352144B47
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 14:41:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 65EA0858EE9
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 14:41:20 +0000 (UTC)
Received: from mail.carmickle.com (mail.carmickle.com [69.164.218.211])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-225-YH5YVWcLNK2H9lAOsV4z_w-1; Thu, 02 Jul 2020 10:41:17 -0400
X-MC-Unique: YH5YVWcLNK2H9lAOsV4z_w-1
Received: from [192.168.116.128] (unknown [176.230.58.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.carmickle.com (Postfix) with ESMTPSA id E57616840011
	for <blinux-list@redhat.com>; Thu,  2 Jul 2020 14:41:16 +0000 (UTC)
Date: Thu, 2 Jul 2020 17:41:13 +0300 (IDT)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: duckduckgo is now duckduckstop
In-Reply-To: <alpine.NEB.2.22.394.2007021029350.605@panix1.panix.com>
Message-ID: <alpine.DEB.2.11.2007021738200.38411@debian.work>
References: <alpine.NEB.2.22.394.2007010559480.7609@panix1.panix.com>
	<Pine.LNX.4.64.2007012006530.10772@server2.shellworld.net>
	<alpine.NEB.2.22.394.2007021029350.605@panix1.panix.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Hi,

It was not working for a short time for me yesterday using lynx.

When you do a search on Google and you click a result, it goes to a link 
on their server first so they can track what you clicked.  then they 
redirect to your search result.

Duckduckgo doesn't normally do this, and doesn't appear to be doing it 
now.  But, for me at least, for a short time yesterday, it was doing this 
and the link on their site was producing a 404.

Cheers,
Geoff.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

