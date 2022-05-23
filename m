Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CEC853154C
	for <lists+blinux-list@lfdr.de>; Mon, 23 May 2022 19:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1653327151;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0Oecoum/lGi9C2KnR7r03orJqH+Af/8ug0Wj2KKaULo=;
	b=WA2AGGaDQ/+9dHMuZtQumR35ODWUs+5rGrRc6tf9+MrYhELoz/hM81dX4XMuVj1Tr9g2LF
	UfZmLl0m9JEdCy0YodgAUtvgP3UiWCxZ57DliexaZk+SaMHcwE3voFjkTYKDIYComnEZdu
	cvESnhHEBtSAfywTk5meCH5/SgtyIfA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-41-r5OGEFPFMeiVFJlos1habw-1; Mon, 23 May 2022 13:32:27 -0400
X-MC-Unique: r5OGEFPFMeiVFJlos1habw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3B9891C05EB0;
	Mon, 23 May 2022 17:32:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7E5D02026E03;
	Mon, 23 May 2022 17:32:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0EAB8194705F;
	Mon, 23 May 2022 17:32:25 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
to: Blinux-list@redhat.com
Subject: re: Ubuntu booting muted
Date: Mon, 23 May 2022 18:32:19 +0100
Message-ID: <mailman.17430.1653327144.111203.blinux-list@redhat.com>
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
MIME-Version: 1.0
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

hi
theres a plethora of ways to do this.
the sort of official one is that when ubuntu shuttsdown it saves the alsa state
thers a service if u look at
systemctl list-units
that does it.
the prog that does this is alsactl store/restore.

other options include putting your own init-sys.service or whatever u want to call it in
/etc/systemd/system
wher u can just run a bash script to setup the soundcard.
then 
systemctl enable init-sys

if your going straight into mate or suchlike this should be before this.
u will need to check that if u do use your own service that it doesnt conflict with the default ubuntu one.
u could try running alsactl store manwelly  from bash and then reboot, if in case, its doing a restore to a muted soundcard.

make sure u got ssh-server or telnet-server setup incase, then u can get into the system remotely if u get stuck.

good luck
regards
neil foster

>Hi all,
>
>I still have an issue with Ubuntu 22.04 booting muted, however, I
>added the following line to my .profile, which fixes the issue after
>logon.
>
>"amixer set Master 50%"
>
>Is there a way to get the logon screen to come up unmuted?
>
>-- 
>Warm regards,
>
>Brandt Steenkamp
>
>Sent using Thunderbird on the Linux box.
>
>_______________________________________________
>Blinux-list mailing list
>Blinux-list@redhat.com
>https://listman.redhat.com/mailman/listinfo/blinux-list
>
>.
>date sent=Sun May 22 11:39:03 BST 2022
>rmt-ip=

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

