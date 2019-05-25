Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8322A221
	for <lists+blinux-list@lfdr.de>; Sat, 25 May 2019 02:34:24 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 41C0E30821A0;
	Sat, 25 May 2019 00:34:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CDF5D19C6A;
	Sat, 25 May 2019 00:34:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1AA8D54D3D;
	Sat, 25 May 2019 00:34:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
	[10.5.11.15])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x4P0YBG7031703 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 24 May 2019 20:34:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E41217DFC9; Sat, 25 May 2019 00:34:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx09.extmail.prod.ext.phx2.redhat.com
	[10.5.110.38])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF20B7DFC5
	for <blinux-list@redhat.com>; Sat, 25 May 2019 00:34:09 +0000 (UTC)
Received: from gateway12.unifiedlayer.com (gateway12.unifiedlayer.com
	[67.222.36.204])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 995A74E908
	for <blinux-list@redhat.com>; Sat, 25 May 2019 00:34:07 +0000 (UTC)
Received: from cm6.websitewelcome.com (cm6.websitewelcome.com [108.167.139.19])
	by gateway12.unifiedlayer.com (Postfix) with ESMTP id E6DB72009D459
	for <blinux-list@redhat.com>; Fri, 24 May 2019 19:34:06 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id UKdShuMvH7MgvUKdShCBhK; Fri, 24 May 2019 19:34:06 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=thechases.com; s=default; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
	List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=H3vyQP96ZlVrL1pCcUtMGoQl0b+hO9kmyRoybj16SeQ=;
	b=KUqRH0Z8why8NgWsCYRjJ1Ay7B
	WvpvWqEvQFNq4GOl9U1+y+AkFbHIc3rcCo0qKiqZ/ll+PC6grQ1c/20/bOFUMsQSsvC4D9mLa9uA3
	ba29YTVuH33N8rxtXIiDTFcnAYmg2CxrsnPzB8i8BEbYPo+vR/ON0x3S0PPhUXazHggw/ALv6I5fq
	ABWDKbrPTGbalqZD13wEy+4HtuBigdVhZfrcmGf804GAn8WYxDfvmjJf3YlBRxIkZP4b3XOeLVfSQ
	iEI21NBLe8oAID2OCMu+wqxVn0H2Ru5wzFZha3TpGSLFWh0cYwCif8PDVnKz9L2hFGvlVIA925Hon
	JyTyIxgw==;
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:40276 helo=bigbox.christie.dr)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1hUKdS-000MTV-FS
	for blinux-list@redhat.com; Fri, 24 May 2019 20:34:06 -0400
Date: Fri, 24 May 2019 19:34:05 -0500
To: blinux-list@redhat.com
Subject: Re: configure mutt for screen readers
Message-ID: <20190524193405.6cfbbaaf@bigbox.christie.dr>
In-Reply-To: <alpine.NEB.2.21.1905241916360.22426@panix1.panix.com>
References: <alpine.NEB.2.21.1905241916360.22426@panix1.panix.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1hUKdS-000MTV-FS
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.christie.dr) [172.0.250.193]:40276
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 216
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.38]); Sat, 25 May 2019 00:34:08 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.38]);
	Sat, 25 May 2019 00:34:08 +0000 (UTC) for IP:'67.222.36.204'
	DOMAIN:'gateway12.unifiedlayer.com'
	HELO:'gateway12.unifiedlayer.com'
	FROM:'blinux.list@thechases.com' RCPT:''
X-RedHat-Spam-Score: 0.19  (DKIM_INVALID, DKIM_SIGNED, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,
	SPF_PASS) 67.222.36.204 gateway12.unifiedlayer.com 67.222.36.204
	gateway12.unifiedlayer.com <blinux.list@thechases.com>
X-Scanned-By: MIMEDefang 2.78 on 10.5.110.38
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.47]); Sat, 25 May 2019 00:34:23 +0000 (UTC)

Tim here.  It might depend on your screen-reader, but the two
settings that jump to mind are:

  set arrow_cursor
  set braille_friendly

which keep the cursor closer to the point of action on the screen
rather than redrawing menu text or homing the cursor to some corner
of the screen.

Additionally, it might help to

  set ascii_chars

so that visual trees are made with ASCII characters rather than with
the extended line-drawing characters.  Additionally, if you're using
neomutt (or mutt with the sidebar patch), it might be worth disabling
that:

  unset sidebar_visible

since it can be a bit confusing if you're reading top-to-bottom,
getting a piece of the sidebar, then a piece of the message list,
then the next row's slice of sidebar and slice of message list, etc.

If you're already an experienced mutt/neomutt user, you might also

  unset help
  set status_format=""

which cleans some of the help-text at the top and the status-bar at
the bottom.  Alternatively, there's a whole host of options for
things you might find useful in the status-bar, so I'll leave that up
to your taste.

Hopefully this helps,

-Tim

On May 24, 2019, Linux for blind general discussion wrote:
> Any advice on what should be in a muttrc file for screen readers
> and also what should not be in a muttrc file for screen readers to
> work well with mutt?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
