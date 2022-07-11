Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 475955705B2
	for <lists+blinux-list@lfdr.de>; Mon, 11 Jul 2022 16:35:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1657550123;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KZcnCyimGh4+OELQXqCmcUqUjZL/aZ0YxSRNw+tY+PU=;
	b=Dwi8k62ONK6bq7NZh2zDrtjJ45SPp0Wp+e4w4BQv38eRTiDks5splH07+bTD2y082KObH9
	apbDDsTwsrSaTPEnBdjICqz54qdxnhbIHPGZrn2ms6QnH249qfEWuOMdWsysrcpeQQZfes
	qBSQbkTm9yqlCwrnx6A6T5m7tUD2aMA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-258-p3UpS8u7Oumvc1P_sCdpGg-1; Mon, 11 Jul 2022 10:35:21 -0400
X-MC-Unique: p3UpS8u7Oumvc1P_sCdpGg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5650338005CD;
	Mon, 11 Jul 2022 14:35:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 3E76E141511A;
	Mon, 11 Jul 2022 14:35:20 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DC91E194704A;
	Mon, 11 Jul 2022 14:35:19 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
In-Reply-To: <mailman.32023.1657544590.111207.blinux-list@redhat.com>
References: <mailman.32420.1657364089.111201.blinux-list@redhat.com>
 <mailman.32225.1657370151.111208.blinux-list@redhat.com>
 <mailman.32342.1657440361.111208.blinux-list@redhat.com>
 <mailman.32667.1657446476.111209.blinux-list@redhat.com>
 <mailman.32023.1657544590.111207.blinux-list@redhat.com>
Date: Mon, 11 Jul 2022 14:35:14 +0000
Subject: Re: I3wm, any progress?
To: blinux-list@redhat.com
Message-ID: <mailman.32711.1657550119.111202.blinux-list@redhat.com>
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

I can't speak for anyone else, but the main reason I don't use mate or
Gnome, or any other full Desktop Environment is because I have no need
for the majority of the functionality a DE provides, and am happy
doing nearly every thing from the Linux console with a console screen
reader. Heck, if I ever found a text-only web browser that was a
decent replacement for Firefox, I'd probably ditch the GUI altogether.

The only reason I use a Window Manager at all is because the script I
use to launch a stripped down xsession for just Firefox and Orca
requires a window manager and it being my understanding that while you
can run a single GUI app without a Window Manager, any child windows
created will be inaccessible without a Window Manager... I'm currently
using flwm as my window manager, not because of any specific features,
but because it has the fewest dependencies and smallest disc usage of
the Window managers I've tried with the aforementioned script that
works with Firefox+Orca with a completely default config for the
window manager(can't remember which, but there was at least one window
manager I tried that was smaller than flwm, but resulted in Orca and
Firefox being completely unresponsive).

That said, the question seems a bit out of place... After all, one of
Linux's biggest selling points is that it gives you options as to how
you interact with your computer instead of trying to force you into
doing things the way the OS maker wants you to do things, and the
ability to choose between the many full-featured Desktop Environments
and the even greater number of stand alone window managers is part of
that.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

