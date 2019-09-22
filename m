Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id C815EBAAA3
	for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2019 21:54:15 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 2B3E98665D;
	Sun, 22 Sep 2019 19:54:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82B8C60933;
	Sun, 22 Sep 2019 19:54:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0AB264E58A;
	Sun, 22 Sep 2019 19:54:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8MJs6x2023187 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 22 Sep 2019 15:54:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7925E1001B32; Sun, 22 Sep 2019 19:54:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx26.extmail.prod.ext.phx2.redhat.com
	[10.5.110.67])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 741E21001B13
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 19:54:04 +0000 (UTC)
Received: from tripes.jabatus.com (tripes.jabatus.com [109.234.164.19])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 223438980EC
	for <blinux-list@redhat.com>; Sun, 22 Sep 2019 19:54:03 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=0.002, required 5, autolearn=disabled, SPF_HELO_NONE 0.00,
	SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: CDF6C100B40.AE20E
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=GnUhxsHc++g31/GPCJfLEmRiUGS/3l+KQTUjdPa8GvI=;
	b=Lt8iUPrtqPIPQQr+cla3dsJi89
	XVZJpYF6HinaaEMhjkKP6Le1MH6lBYip63jA3LjMZPzm3iAXrVy4h7ODDFwWNBLc8HjkwKjoUMGuT
	xs3ucePsXNWHbxdEn5yJ5KVsmg320D773fYzKMoMl4Xo1VrDAL4Rfq/BB1HoQnaDNp9A=; 
Subject: Re: [Slint] Chromium 77.0.3865.90 accessibility
To: List for Slint users and contributors <slint@slint.fr>,
	Jude DaShiell <jdashiel@panix.com>
References: <alpine.NEB.2.21.1909221511110.18161@panix1.panix.com>
Message-ID: <fd46ae6a-e470-0c6a-ba3d-4a1233aac62a@slint.fr>
Date: Sun, 22 Sep 2019 21:47:56 +0200
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.1909221511110.18161@panix1.panix.com>
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
X-Greylist: Delayed for 00:06:04 by milter-greylist-4.6.2 (mx1.redhat.com
	[10.5.110.67]); Sun, 22 Sep 2019 19:54:03 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.67]);
	Sun, 22 Sep 2019 19:54:03 +0000 (UTC) for IP:'109.234.164.19'
	DOMAIN:'tripes.jabatus.com' HELO:'tripes.jabatus.com'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 109.234.164.19 tripes.jabatus.com 109.234.164.19
	tripes.jabatus.com <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.67
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.26]); Sun, 22 Sep 2019 19:54:14 +0000 (UTC)

I think that people needing speech on Chromium  would better wait until
Joanmarie Diggs says that Orca supports Chromium. She will announce on
the Orca mailing list when it will be ready for testing by end users and
I will forward this announcement to the Slint and blinux mailing lists.

Best regards,

Didier


On 22/09/2019 21:13, Jude DaShiell wrote:
> I tried orca --replace on page with search bar and got a web page to speak
> a little bit.  I had to run orca --replace each time to continue getting
> the screen reader to speak though and this is unworkable.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
