Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 831046F3B9
	for <lists+blinux-list@lfdr.de>; Sun, 21 Jul 2019 16:36:36 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 5231B3DD47;
	Sun, 21 Jul 2019 14:36:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 486AA60BF3;
	Sun, 21 Jul 2019 14:36:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 24B644E58F;
	Sun, 21 Jul 2019 14:36:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x6LEa6LD007138 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 21 Jul 2019 10:36:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AE3D619C79; Sun, 21 Jul 2019 14:36:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx09.extmail.prod.ext.phx2.redhat.com
	[10.5.110.38])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A72F019C77
	for <blinux-list@redhat.com>; Sun, 21 Jul 2019 14:36:04 +0000 (UTC)
Received: from mta02.o2scoral.fr (mta02.o2scoral.fr [109.234.163.42])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3C30B4E908
	for <blinux-list@redhat.com>; Sun, 21 Jul 2019 14:36:03 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamScore: s
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (cached,
	score=1.202, required 5, autolearn=disabled, DKIM_INVALID 0.10,
	DKIM_SIGNED 0.10, SPF_HELO_NONE 0.00, SPF_NONE 0.00,
	URIBL_BLOCKED 1.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: D794410146C.A3D95
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
	Message-ID:Reply-To:Subject:From:Cc:To:Sender:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=zb43GHMvKuaRX5YPTat+r1QPJi71IOCmxrhUira9A0c=;
	b=nUalWj9ZCrHvuZbfvy2SCkyIPo
	YCr96VxmyO73fecx2cM05n+kLEAVdlIEnov/Fk9nGBLkZTHSdCcs2+fb8a7oygdxVknJP5Fif43n0
	m6BINh2dZZMTulygZ1Y0JKq1v3itjBlS3w8sFnY27NwOEkxbdMbKYHNmFJS+l6o88YzM=; 
To: slint <slint@slint.fr>
Subject: Merge of packages repository from Slint
Message-ID: <ba0e7f64-32ba-925e-a429-36c5352caff8@slint.fr>
Date: Sun, 21 Jul 2019 16:30:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - fox.o2switch.net
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - slint.fr
X-Get-Message-Sender-Via: fox.o2switch.net: authenticated_id: didier@slint.fr
X-Authenticated-Sender: fox.o2switch.net: didier@slint.fr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Greylist: Delayed for 00:05:23 by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.38]); Sun, 21 Jul 2019 14:36:03 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]);
	Sun, 21 Jul 2019 14:36:03 +0000 (UTC) for IP:'109.234.163.42'
	DOMAIN:'mta02.o2scoral.fr' HELO:'mta02.o2scoral.fr'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 109.234.163.42 mta02.o2scoral.fr 109.234.163.42
	mta02.o2scoral.fr <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.38
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-loop: blinux-list@redhat.com
Cc: The Vinux Support Forum <vinux-support@googlegroups.com>,
	Linux for blind general discussion <blinux-list@redhat.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.29]); Sun, 21 Jul 2019 14:36:35 +0000 (UTC)

Hello,

I am CCing this message to the Vinux and  blinux mailing list because
noi all Slint users are registered to the slint mailing list. I hope
that will not be considered as spam.

Currently there are two different Slint packages repositories for
versions 14.2.1 and 14.2.1.2 (64-bit).

However every user running a previous 64 bit version can upgrade to
14.2.1.2 without issue, so I will soon cease to maintain the packages
for 14.2.1, that will be replaced by packages provided for 14.2.1.2.

Then we will end up with only one package repository, whose URL will be:
http://slackware.uk/slint/x86_64/slint-14.2.1/slint/

The package previously stored in this repository will be tentatively
stored in another one, just in case, but will not be further updated.

Users already running slint64-14.2.1.2 will need to change this line in
/etc/slapt-get/slapt-getrc:
SOURCE=http://slackware.uk/slint/x86_64/slint-testing/:PREFERRED
so it becomes:
SOURCE=http://slackware.uk/slint/x86_64/slint-14.2.1/:PREFERRED

I will provide a new slapt-get package including a modified slapt-getrc
with the new line, so running dotnew after this update will allow you to
just accept this replacement, then case occurring edit slapt-getrc to
include customization you made in the previous one. The old one will
have been renamed /etc/slapt-get/slaptr-getrc.orig if replaced.

To insure a smooth transition, this URL:
http://slackware.uk/slint/x86_64/slint-testing/
will become a link to:
http://slackware.uk/slint/x86_64/slint-14.2.1/
during a few days after having provided the new slapt-get package.

Users having not yet upgraded to Slint64-14.2.1.2 (if any) can either:
1) Upgrade right now, following instructions provided here:
http://slackware.uk/slint/x86_64/slint-14.2.1/doc/README.upgrade
2) Or choose to wait that the new slapt-get package be available. But
then follow carefully the instructions given in this document (but step
2), or expect issues, possibly leading to a system unable to boot. Of
course it that happens we'll try to help <smile>

These changes will occur very soon, I will announce only on the Slint
mailing list when done.

I anything is unclear (and not only because English is not my native
language) please post your questions preferably in the Slint mailing
list (registration mandatory).

Have a good day,

Didier
--
Didier Spaier
slint maintainer
http://slint.fr
http://slint.fr/mailman/listinfo/slint_slint.fr

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
