Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4495427F017
	for <lists+blinux-list@lfdr.de>; Wed, 30 Sep 2020 19:17:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601486229;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5e3yNYQskHDgY26X4hc9p+PtOjWq4YB9X8nLuWfkxRw=;
	b=G84iP+6TDDpZMH/VpcN+cTVeomZQGvFQAtPKefLKF1FFA9EDZ31yD4k7EYPSMBHqnggNfq
	gk+Z29phE4dBEXhseB2mtWjuK0/0qfsQln5c8LszOCkbw0+lertvF9uh0PEgsmWi8Qgw/c
	CAZWvfN3nbQANtKlmWel6/uxwinbwUE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-109-BPHK5YerMc29XULBH8Qudg-1; Wed, 30 Sep 2020 13:17:06 -0400
X-MC-Unique: BPHK5YerMc29XULBH8Qudg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B29DB801F99;
	Wed, 30 Sep 2020 17:17:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 75FAC5D9D3;
	Wed, 30 Sep 2020 17:17:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5CD3A44A45;
	Wed, 30 Sep 2020 17:17:01 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08UHAXju014527 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 30 Sep 2020 13:10:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AF27E2156A4B; Wed, 30 Sep 2020 17:10:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AB1742156A49
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 17:10:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 54401803522
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 17:10:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-521--Rv85weeMXy0shqLHF5MnA-1; Wed, 30 Sep 2020 13:10:26 -0400
X-MC-Unique: -Rv85weeMXy0shqLHF5MnA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4C1jSL0vDFzWpD
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 13:10:26 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4C1jSK73xmzcbV; Wed, 30 Sep 2020 13:10:25 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4C1jSK6XnwzcbW
	for <blinux-list@redhat.com>; Wed, 30 Sep 2020 13:10:25 -0400 (EDT)
Date: Wed, 30 Sep 2020 13:10:25 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Console screenreaders
In-Reply-To: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2009301308580.3267@panix1.panix.com>
References: <1409d60b-0be5-783a-d490-0501585ead96@gmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

espeak preferable to fenrir but that's only because fenrir reads ansi line
drawing characters when speaking.  espeak suppresses those characters. On
Wed, 30 Sep 2020, Linux for blind general discussion wrote:

> Date: Wed, 30 Sep 2020 12:49:57
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Console screenreaders
>
> So....what's the consensus on console screenraders? I've a few things I want
> to do in a TTY, so what's the general recommended TTY screenreader, or console
> one?
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

