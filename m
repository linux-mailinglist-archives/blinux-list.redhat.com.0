Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5F5AD430BE8
	for <lists+blinux-list@lfdr.de>; Sun, 17 Oct 2021 22:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634500978;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=uznV+QHqOM2sfyVz+aXMPLlUyHqblqXFm3YnVKidGJY=;
	b=YXI9TXkwagpvOVGxdu9b1xMjIyeXOMt5FUUI6fUfqbzBaQqO5r4YSYR8ocy+Ln1/AAb47y
	waE8uY9GUQELlm+zMMRsTTDxRIwnPuAy2QjOqmcXNVHFDLu+JmQ/XgyJvykBC3C3EO9PFJ
	g2mXZqnFAiuDK+NNgAJI5O+2I5YL7H4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-600-VksUBk_gOIu3YT3gtrOFMA-1; Sun, 17 Oct 2021 16:02:54 -0400
X-MC-Unique: VksUBk_gOIu3YT3gtrOFMA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C42DB80668A;
	Sun, 17 Oct 2021 20:02:50 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AC0AF60C17;
	Sun, 17 Oct 2021 20:02:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2FAC91806D04;
	Sun, 17 Oct 2021 20:02:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19HK2goE018450 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 17 Oct 2021 16:02:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BE7E52166B26; Sun, 17 Oct 2021 20:02:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B8F7D2166B25
	for <blinux-list@redhat.com>; Sun, 17 Oct 2021 20:02:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CE409899EC0
	for <blinux-list@redhat.com>; Sun, 17 Oct 2021 20:02:39 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-46--gaMCktKPZypzDiFtw7uRA-1; Sun, 17 Oct 2021 16:02:38 -0400
X-MC-Unique: -gaMCktKPZypzDiFtw7uRA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HXWBj4T56zP49
	for <blinux-list@redhat.com>; Sun, 17 Oct 2021 16:02:37 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HXWBj41LGzcbc; Sun, 17 Oct 2021 16:02:37 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HXWBj3fYczcbP
	for <blinux-list@redhat.com>; Sun, 17 Oct 2021 16:02:37 -0400 (EDT)
Date: Sun, 17 Oct 2021 16:02:37 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: pinephone
In-Reply-To: <C4F55E52-8D7C-4422-B386-55EFB62DBF1B@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2110171600280.10055@panix1.panix.com>
References: <C4F55E52-8D7C-4422-B386-55EFB62DBF1B@gmail.com>
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
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Smartnews is run by a syrian company and Turky and Syria are on the outs.
Turkish drones are killing Russian tanks in Syria the Syrians were using
and that's not making Russia happy either.  This is Jude dashiell here,
jdashiel@panix.com here and I sent that original post.


On Sun, 17 Oct 2021, Linux for blind general discussion wrote:

> Somebody wrote: smartnews is blocked in Turky and perhaps other countries.
>
> Brian Tew here. I always forget this list hides the name of posters.
>
> Why do they block smartnews? Just censorship I guess.
> Anyway there is a web link in the post.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

