Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [216.205.24.74])
	by mail.lfdr.de (Postfix) with ESMTP id 908C6195AF4
	for <lists+blinux-list@lfdr.de>; Fri, 27 Mar 2020 17:20:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585326051;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bHe9thtXMx4QFoejfL1k9wbOYLRatHWh6feCPxS2phQ=;
	b=OciLYQlAFlO0/7pgTgmc+5g/gy2arzZf2mrAzfRMVdsOWYOlECQXLDA+1HOZn0hjONnDPL
	NT4K480AtNpKvW4f6u8GNjT4h+lPtLE8VMSovsi7IaLRBsLxWPFoS/pUKfKxRgwHUy7JuN
	2OcQjmP8MPWycFjT1PUjhjrfipOrLp8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-303-Dmr809NCPT2HME3WROlvNg-1; Fri, 27 Mar 2020 12:20:49 -0400
X-MC-Unique: Dmr809NCPT2HME3WROlvNg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C2FC80315C;
	Fri, 27 Mar 2020 16:20:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3F14861069;
	Fri, 27 Mar 2020 16:20:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2FE8618089CD;
	Fri, 27 Mar 2020 16:20:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02RGKSN8012498 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Mar 2020 12:20:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B366410551AF; Fri, 27 Mar 2020 16:20:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AFCDC10551AA
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 16:20:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0B4B4802BF2
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 16:20:26 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-162-uxtkaQGUP8Ckc58RrePz1g-1; Fri, 27 Mar 2020 12:20:23 -0400
X-MC-Unique: uxtkaQGUP8Ckc58RrePz1g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 48pnBt53Lqz1VLx;
	Fri, 27 Mar 2020 12:20:22 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 48pnBt4GVtzcbc; Fri, 27 Mar 2020 12:20:22 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 48pnBt48BlzcbV;
	Fri, 27 Mar 2020 12:20:22 -0400 (EDT)
Date: Fri, 27 Mar 2020 12:20:22 -0400
To: orca-list@gnome.org
Subject: installing jenux
Message-ID: <alpine.NEB.2.21.2003271212120.25315@panix1.panix.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02RGKSN8012498
X-loop: blinux-list@redhat.com
Cc: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

During a jenux install jenux uses fenrir for a screen reader if
accessibility mode is enabled.  No boot parameters enables accessibility
mode.  During jenux install, much fast text will be spoken by the screen
reader unless insert-f4 is used to toggle speech off and on.  I usually
toggle speech off until I hear the computer beep and then I know jenux
installer needs some input.  Then I toggle speech back on and inspect the
screen and answer questions.  In the mate install path, there's no beep
before the system asks for the user name and password for the first time
and this is after all packages have been installed.  Those questions could
be moved ahead of package installation and answers stored in and retrieved
from variables but that's not now the case with this installer.  I got a
mate install with jenux and you log in on the console which is good with
fenrir then fenrir turns off and the mate environment comes up and orca
turns on.  I've done a base install with no difficulty earlier.  I will
try a gnome install next to see if that now works.  When these installs
fail it's usually because the developer is working on what fails to
download so when that happens maybe try another install later.  The base
install which is archlinux console uses fenrir to run.



--


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

