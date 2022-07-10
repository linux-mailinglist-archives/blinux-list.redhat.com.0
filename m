Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D6256CF30
	for <lists+blinux-list@lfdr.de>; Sun, 10 Jul 2022 14:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1657456752;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Zv5ExFSsywVozqI/H4HJEunRX+ni06yubiII0Q36zCk=;
	b=bbE2N3qNa2vdGfcyqjOPNR8AUTHUAX+HuSAtWlMXvpJMue7MvL0rTcIkQnSQkHDXYGxwN1
	kTi0irwPX3Ofvyfez33efjsU91UBmUTDqHC5lU6gaYUKnmHuYa0Sy9tqFvOvgiLkBECxqW
	hWs9mkITs7YZIf9ku+ngPozq54FX0+s=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-642-gmG3etTxMECpDy7ob-kkaw-1; Sun, 10 Jul 2022 08:39:09 -0400
X-MC-Unique: gmG3etTxMECpDy7ob-kkaw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3CF9629DD980;
	Sun, 10 Jul 2022 12:39:08 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 277A6141511A;
	Sun, 10 Jul 2022 12:39:05 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 99CB219452D8;
	Sun, 10 Jul 2022 12:39:04 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
X-Spam-Flag: NO
X-Spam-Score: -1
X-Spam-Level: 
X-Spam-Status: No, score=-1 tagged_above=-999 required=6.2
 tests=[ALL_TRUSTED=-1] autolearn=disabled
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: I3wm, any progress?
Date: Sun, 10 Jul 2022 14:38:51 +0200
References: <mailman.32420.1657364089.111201.blinux-list@redhat.com>
 <mailman.32225.1657370151.111208.blinux-list@redhat.com>
 <mailman.3721.1657389350.3475251.blinux-list@redhat.com>
 <mailman.32566.1657402989.111209.blinux-list@redhat.com>
To: blinux-list@redhat.com
In-Reply-To: <mailman.32566.1657402989.111209.blinux-list@redhat.com>
Message-ID: <mailman.32128.1657456743.111205.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi!
Ok, so its like mate or gnome then.
/A

> 9 juli 2022 kl. 23:42 skrev Linux for blind general discussion <blinux-list@redhat.com>:
> 
> i3wm is a Window Manager. That is, it's the part of a Desktop
> Environment that creates application windows, determines how they look
> and behave, and lets the user switch between open Windows and adjust
> how much of the screen they take up.
> 
> Every Desktop Environment includes a window manager, but a window
> manager alone doesn't provide all the functionality of a Desktop
> environment. However, for some people, a Window manager is all they
> need, so there are dozens of stand-alone window managers that aren't
> part of a complete Desktop Environment, and even when using a full DE,
> there's some room for switching out the DE's default window manager
> for another.
> 
> Other common Desktop Environment components include panels(which
> provide taskbar and system tray like functionality), launchers/menu
> systems, and common system utilities such as a control panel or file
> manager, and sometimes even common application software, such as a
> default text editor, media player, etc.
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

