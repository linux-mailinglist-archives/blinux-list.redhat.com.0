Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D653C4CDBBC
	for <lists+blinux-list@lfdr.de>; Fri,  4 Mar 2022 19:04:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646417086;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+XZRWjsXVCnxR8r8XFaGY6HaZ2ITk7rMosZmZvll39Q=;
	b=Enx86csXGE1Sj16Z9AgjpbQYz4zwXnkTiW5W/EaP+uCEZXiiJfs8pgKWsqG3/CRQY2BqKU
	T2bFksUQuQVoYucff61RjwTMsPYliy+JkjXDlvezO97Xh3rAv7ZaWWQwkQmZfeBeoCK6o0
	ijmDg21I0ceuWDoKJDiKeuu+UKuGWP8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-558-QKwpWhhAMNGMNx5iLzXppQ-1; Fri, 04 Mar 2022 13:04:43 -0500
X-MC-Unique: QKwpWhhAMNGMNx5iLzXppQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E4F9E1006AA5;
	Fri,  4 Mar 2022 18:04:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D81DB2ED8E;
	Fri,  4 Mar 2022 18:04:38 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C680D1809C98;
	Fri,  4 Mar 2022 18:04:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 224I4VTp027653 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Mar 2022 13:04:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 967CD2166BCC; Fri,  4 Mar 2022 18:04:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 91D662166B26
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:04:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 456D580158E
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 18:04:28 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-609-lj-jTBtNMeSUREsxhg-8SQ-1; Fri, 04 Mar 2022 13:04:26 -0500
X-MC-Unique: lj-jTBtNMeSUREsxhg-8SQ-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 90B8D620285; Fri,  4 Mar 2022 18:04:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 9002862018E
	for <blinux-list@redhat.com>; Fri,  4 Mar 2022 13:04:25 -0500 (EST)
Date: Fri, 4 Mar 2022 13:04:25 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Google is nuking simple username/password sign ins?
In-Reply-To: <YiHciAX/R+L65BU3@waffles>
Message-ID: <Pine.LNX.4.64.2203041303520.273578@server2.shellworld.net>
References: <YiHciAX/R+L65BU3@waffles>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Would you be comfortable sharing that email with the list?
Karen



On Fri, 4 Mar 2022, Linux for blind general discussion wrote:

> I just got this in my inbox saying from 30 May, I won't be able to
> simply sign in with a username/password.
>
> So does that mean for things like rclone, Mutt, etc I'll need to do app
> specific passwords or set up Oauth 2.0?
>
> Which leads me to my next question...
>
> Is there anything terminal based that's like mutt/rclone that supports
> Oauth 2.0 already so I can be ahead of this?
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

