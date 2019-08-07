Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 4216A85302
	for <lists+blinux-list@lfdr.de>; Wed,  7 Aug 2019 20:32:05 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 6242030A00B0;
	Wed,  7 Aug 2019 18:32:03 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A81410016E9;
	Wed,  7 Aug 2019 18:32:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 07D3E18005B9;
	Wed,  7 Aug 2019 18:31:58 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x77IUepF009391 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Aug 2019 14:30:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 962075D9E1; Wed,  7 Aug 2019 18:30:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx11.extmail.prod.ext.phx2.redhat.com
	[10.5.110.40])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9055B5D9DC
	for <blinux-list@redhat.com>; Wed,  7 Aug 2019 18:30:38 +0000 (UTC)
Received: from nntp.AegisInfoSys.com (nntp.AegisInfoSys.com [65.242.138.29])
	by mx1.redhat.com (Postfix) with SMTP id 3D35730EA1BD
	for <blinux-list@redhat.com>; Wed,  7 Aug 2019 18:30:35 +0000 (UTC)
Received: (from henry@localhost) by nntp.AegisInfoSys.com (8.6.9/8.6.9) id
	OAA10464 for blinux-list@redhat.com; Wed, 7 Aug 2019 14:30:33 -0400
Date: Wed, 7 Aug 2019 14:30:33 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: No F Key Boot Menu
Message-ID: <20190807183033.GM11272@nntp.AegisInfoSys.com>
References: <20190805.195033.561.2@0.0.0.0>
	<CAM+Q2c6km7FeRzd3W4VXNv904-CJbzUd0zeYA3_trQE-==C4Xg@mail.gmail.com>
	<alpine.NEB.2.21.1908051720430.2278@panix1.panix.com>
	<20190805.212710.331.4@[0.0.0.0]>
	<b8453ab0-c221-daf9-6868-8cc121e6c843@gmail.com>
	<20190806.012851.270.6@[0.0.0.0]>
	<6d9c88f5-439c-0859-c5b5-2da72c16e7d7@GMAIL.COM>
	<20190807.185726.951.4@[0.0.0.0]>
Mime-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807.185726.951.4@[0.0.0.0]>
User-Agent: Mutt/1.4.2.3i
X-Greylist: Sender passed SPF test, ACL 264 matched, not delayed by
	milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]);
	Wed, 07 Aug 2019 18:30:37 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]);
	Wed, 07 Aug 2019 18:30:37 +0000 (UTC) for IP:'65.242.138.29'
	DOMAIN:'nntp.AegisInfoSys.com' HELO:'nntp.AegisInfoSys.com'
	FROM:'blinux-mail@AegisInfoSys.com' RCPT:''
X-RedHat-Spam-Score: 0  (SPF_HELO_NONE,
	SPF_PASS) 65.242.138.29 nntp.AegisInfoSys.com
	65.242.138.29 nntp.AegisInfoSys.com
	<blinux-mail@AegisInfoSys.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.40
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]); Wed, 07 Aug 2019 18:32:04 +0000 (UTC)

for most commodity dells, F12 is often the key to bring up the
select-boot-device menu.

On Wed, Aug 07, 2019 at 11:57:26AM -0700, Linux for blind general discussion wrote:
> I ended up memorizing the key presses to set boot order in the bios in the absence of a boot menu. Sigh. So many left arrows, so many down arros, etc.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
