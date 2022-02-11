Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DA94B26A7
	for <lists+blinux-list@lfdr.de>; Fri, 11 Feb 2022 14:04:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644584647;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5Ojx0xw8Us7EtUZRp3j/Ma0bOQjpuS2AYrUHohSl/NA=;
	b=R5G7787e/mPK2WuOq0rNMlfa78DGgRayjkJi7Ybj2dd8XvEXMYChoq7n9ci6/6wYNL/q1L
	fwGmkEt1ih4EFY2gOmdw7WXEYGdwTP+C5ytJ9QrXD+lOoBptVaGafxRD9ZLnn95jiUyCKn
	kx5P2J2d/7Pn/QbOiEPthyv2PE+18kc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-605-qJQtxjOTNSSSNz73BWrd0Q-1; Fri, 11 Feb 2022 08:04:03 -0500
X-MC-Unique: qJQtxjOTNSSSNz73BWrd0Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A5491091DA7;
	Fri, 11 Feb 2022 13:03:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EC6A97DE21;
	Fri, 11 Feb 2022 13:03:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 561731806D2F;
	Fri, 11 Feb 2022 13:03:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21BCxm0A011285 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 11 Feb 2022 07:59:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9F377C19149; Fri, 11 Feb 2022 12:59:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9BB3DC07F5D
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 12:59:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E42728FBBEE
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 12:59:48 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-650-9dR1Nk1uMd-72xDTvYyRGg-1; Fri, 11 Feb 2022 07:59:46 -0500
X-MC-Unique: 9dR1Nk1uMd-72xDTvYyRGg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JwDGp2f0Rz3p1d
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 07:59:46 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JwDGp22H4zcbc; Fri, 11 Feb 2022 07:59:46 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JwDGp15G7zcbP
	for <blinux-list@redhat.com>; Fri, 11 Feb 2022 07:59:46 -0500 (EST)
Date: Fri, 11 Feb 2022 07:59:46 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: `alpine refuses to save password
In-Reply-To: <86C89C03-04F0-4D32-B8FD-905C03AB843D@gmail.com>
Message-ID: <cfbbf827-101e-d8da-78a0-68cf8daf1459@panix.com>
References: <86C89C03-04F0-4D32-B8FD-905C03AB843D@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Jude here.
alpine used to have an inbox-path and an smtp-path variables in .pinerc
and the format was the path to get to the provider followed by a colon
followed by login name followed by a colon followed by password all on one
line.
it does not show in the help for those variables any longer so perhaps it
got removed.  In any event you'll need to generate an app-password to use
alpine with google and I don't know how long that will be possible since
google may discontinue all app-passwords by june of 2022.  If that's the
case, you can arrange to have all gmail forwarded to a mail address on a
domain you own so you can read them locally.


On Fri, 11 Feb 2022, Linux for blind general discussion wrote:

> Hi all,
>
> I hope this message didn't post twice, for I got a mail delivery system failure notification.
>
> I have looked as hard as I know how, and have tried almost everything I could, but no luck in making 'alpine' save my Gmail password.
>
> I did "$ touch .pine-pass", had no luck there, "$ touch .alpine.pwd", also no luck.
>
> The only thing I can think to do is to re-compile the darn thing. Maybe that'd help.
>
> If anyone knows how to fix this issue in Slint, please help?
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from my MacBook Air
>
> Contact:
>
> Phone: +27 (0)60 525 9181 <tel://+27605259181>
>
> Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>
>
> Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>
>
>
>
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

