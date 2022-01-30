Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A59EE4A33AF
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jan 2022 05:27:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643516871;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=c8gEkT5BhOuurOy4cKOTfhBK2s/v+s0hle7v+nOzv10=;
	b=ClFQCsXOkUeQdcuVN8gqY8t6Epe9giWANRwg21K8mrsbPWGWddJ/uve3wJ+sai51fJ6n7F
	GBmY6tK5lYXHHbv50CRAiNaPaQnAEg2pVaab9ibDTrMeU4Oga+mvKaoV15YEKirg9J17Na
	67CUY1Mbur4iL7Ci7NsIy83pnO38gXU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-447-lwSp4OSfMpazxCThDDJV7g-1; Sat, 29 Jan 2022 23:27:48 -0500
X-MC-Unique: lwSp4OSfMpazxCThDDJV7g-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D85DD1006AA4;
	Sun, 30 Jan 2022 04:27:43 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 892715E27A;
	Sun, 30 Jan 2022 04:27:43 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 770CE4BB7C;
	Sun, 30 Jan 2022 04:27:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20U4RbIW002682 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 23:27:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 10226C0809B; Sun, 30 Jan 2022 04:27:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0C2B9C07F46
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 04:27:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EA6DD1C04B4D
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 04:27:36 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-501-icIID1ofPiqtRFdK4z0VTQ-1; Sat, 29 Jan 2022 23:27:34 -0500
X-MC-Unique: icIID1ofPiqtRFdK4z0VTQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JmdTL0639z2rpq
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 23:27:34 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JmdTK6Pjkzcbc; Sat, 29 Jan 2022 23:27:33 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JmdTK641pzcbC
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 23:27:33 -0500 (EST)
Date: Sat, 29 Jan 2022 23:27:33 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Looking for good radio software
In-Reply-To: <fb33c316-a8f2-a123-2169-257d635a9ade@gmail.com>
Message-ID: <551c7a13-7276-386b-7af0-fb1fe9348da3@panix.com>
References: <76ca400a-9d22-df23-7de2-82c3e3a16967@gmail.com>
	<fb33c316-a8f2-a123-2169-257d635a9ade@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

A competitor to the python package is pianobar but that's run from command
line or terminal so far as I know.


On Sat, 29 Jan 2022, Linux for blind general discussion wrote:

> One of the best ways I've found to listen to music is with a desktop
> application called Pithos. It's a Pandora client, so you will need an account,
> but although I already had one, I believe it allows you to set it up from
> within the app. The added benefit of Pithos over the Pandora website is that
> it eliminates the ads, so you get what could be considered the Pandora Plus
> experience at no cost right from within Pithos. Just the music, and everyone
> and everything you wanna mix together, completely free and uninterrupted.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

