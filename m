Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	by mail.lfdr.de (Postfix) with ESMTP id 98F3A1AD37C
	for <lists+blinux-list@lfdr.de>; Fri, 17 Apr 2020 01:58:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1587081512;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ekmolxXnI+ZzGBhuyLf5JlCVozxzr30h0VHP7Vz0j2o=;
	b=cmqNbFGHRWOAyKnFZkvkKSYEHb0crkMvBbKQ/nmXE6V2GK11AUdN10Q0/mR2t1Fd8RlKZI
	A/TsswQJrXe7osnnWs1c+fp3h1JsgCevrBzl+xfvg6cJPjaBci+9yWNTtzaRwaKcUnV6KJ
	5AVbGuLf5+oTTutwW3YGHE4cTFsIJ9Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-495-lSFebO4zNbaLCy4bfzJ6WQ-1; Thu, 16 Apr 2020 19:58:30 -0400
X-MC-Unique: lSFebO4zNbaLCy4bfzJ6WQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 54B8419251A0;
	Thu, 16 Apr 2020 23:58:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A3D2A09A6;
	Thu, 16 Apr 2020 23:58:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3BAA11809567;
	Thu, 16 Apr 2020 23:58:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 03GNw1cc012242 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 16 Apr 2020 19:58:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C9D072026983; Thu, 16 Apr 2020 23:58:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C61122026D66
	for <blinux-list@redhat.com>; Thu, 16 Apr 2020 23:57:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DB5CA8056D1
	for <blinux-list@redhat.com>; Thu, 16 Apr 2020 23:57:59 +0000 (UTC)
Received: from mailbox.supranet.net (mailbox.supranet.net [66.170.1.9])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-166-w_f5eTFRPmSREiQe57XDWg-1; Thu, 16 Apr 2020 19:57:57 -0400
X-MC-Unique: w_f5eTFRPmSREiQe57XDWg-1
Received: from [68.190.112.237] (port=45310 helo=localhost)
	by mailbox.supranet.net with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.82 (FreeBSD)) (envelope-from <john@godtouches.org>)
	id 1jPEOK-000Hzj-H0
	for blinux-list@redhat.com; Thu, 16 Apr 2020 18:57:56 -0500
Date: Thu, 16 Apr 2020 18:57:55 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Can you give me some ideas for debugging these problems?
Message-ID: <20200416235755.GA8649@abilitiessoft>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 03GNw1cc012242
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

Helloo Everyone,

I will first describe the problems and then ask some questions. I don't claim to be a Linux expert. My ignorance will be evident to the real experts.

I have a Debian Buster system with 8 GB of memory. It is less than four years old. Recently I installed Gnome 3.3 with Orca. I use Braille only and no speech, 
since I am deaf-blind. The Braille display is a Focus 40 connected to a USB port. A technician from a local computer company installed TeamViewer so he could help 
with problems remotely, but he seems puzzled by the ones I am encountering.

When the system boots the desktop comes up on tty1 and ty2. It appears to be functiooning fairly well. TeamViewer is running and asking for a partner. I can run 
Firefox and surf the web. However, eventually the Braille display becomes unresponsive. It keeps showing the same thing, no matter what I do on the keyboard. 
Sighted companions tell me the screen is responding appropriately.

I can switch to other consoles using ctrl+Alt+Fn and run command-line programs. However, when I switch back to tty1 or tty2 the Braille display acts as if the 
USB port has been disabled. It appears to have been turned off. Switching to any other console produces the message "no irq handler for vector and BRLTTY5.6. 
After a while the console behaves normally for command-line use. The desktop seems to disappear completely. I can switch consoles with Alt+Fn. Except to tty1 and 
tty2, which hang up.

Questions:

1. How is the desktop started at boot time? What script or program starts it and how is it called?

2. The problem with the Braille display becoming unresponsive and continuing to show the same thing must be a problem with Orca. It apears to work properly for 
the most part, but I can't use help mode. I have asked about these problems on the Orca list, but they were no help.

3. The desktop runs functions from several libraries. Which of those might be crashing? How is it possible for something not running as root to produce an 
interrupt with no handler?

Thanks,
John

-- 
John J. Boyer
Email: john.boyer@abilitiessoft.org
website: http://www.abilitiessoft.org
Status: Company dissolved but website and email addresses  live.
Location: Madison, Wisconsin, USA
Mission: developing assistive technology software and providing STEM services 
        that are available at no cost



_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

