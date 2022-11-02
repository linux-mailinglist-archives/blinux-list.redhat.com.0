Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D79BE6170BD
	for <lists+blinux-list@lfdr.de>; Wed,  2 Nov 2022 23:34:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1667428479;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ddruL+U25jrFAbTS+TucZ1b5fn6jShPEluyOUpHCfhc=;
	b=YVIxX5HFoDGdUHN/Mt732hRFR3V70Wf79nxYWgnVu8ITL1XoQRWYO5sbZooObWRaUcZ6IV
	AIM2YCZVDXVd7sovQrC9j/5SSiqn/HOryIpvB2nlM3DDsWVh+tqxOB+H4bxm1pvHsH6apt
	mH/smhmrn6SV+8fscyN4Dc0PvOzmChA=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-437-FkZuZO5SMSOmdMxKPWth6Q-1; Wed, 02 Nov 2022 18:34:38 -0400
X-MC-Unique: FkZuZO5SMSOmdMxKPWth6Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6316D1C14341;
	Wed,  2 Nov 2022 22:34:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A75324EA49;
	Wed,  2 Nov 2022 22:34:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 5BA0D1946A66;
	Wed,  2 Nov 2022 22:34:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 2 Nov 2022 18:34:23 -0400
To: blinux-list@redhat.com
Subject: this and previous version of Jenux
MIME-Version: 1.0
Message-ID: <mailman.4428.1667428467.3003.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Both failed to boot on my computer.  I have a thinkpenguin.com penguin pro
11 computer with an intel i7 core processor.
I'm curious am I unique or are others having identical problems?
If the installer cannot boot, it cannot install either.
If I am not unique please write dnl.nash@gmail.com and send him
appropriate failure reports with brand and model of computer used.
This is not a problem for archlinux; slint, or debian bookworm.
https://nashcentral.duckdns.org/projects/Jenux-2022.11.01-dual.iso
https://nashcentral.duckdns.org/projects/Jenux-2022.11.01-dual.iso.sha512
are the download urls for anyone interested in helping with testing and
reporting.
If you copied those two urls into a file called jenux then ran:
wget -bci jenux
And then ran every so often:
wc -l wget-log&&grep -i saved wget-log
eventually you'll get output back with two saved lines in it and both
files will have been downloaded.
To verisy:
sha512sum -c Jenux-2022.10.01-dual.iso.sha512
if you get ok back as a response after the file name, you got your image
verified.
I'm sharing this much with the list not so much for the sake of Jenux but
in order to show users how to download multiple files and check on
download progress.
After all of that, rm wget-log otherwise wget-log.1 and so on will get
created in the future.
Remove that log after all download is finished, and you can reuse these
commands as they stand.



Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

