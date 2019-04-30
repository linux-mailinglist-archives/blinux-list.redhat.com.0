Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD0AF29E
	for <lists+blinux-list@lfdr.de>; Tue, 30 Apr 2019 11:16:32 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id AD0DF307D963;
	Tue, 30 Apr 2019 09:16:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D3A2B100164A;
	Tue, 30 Apr 2019 09:16:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8588318089C9;
	Tue, 30 Apr 2019 09:16:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x3U9G5px028250 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Apr 2019 05:16:05 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B8FCC183E2; Tue, 30 Apr 2019 09:16:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx14.extmail.prod.ext.phx2.redhat.com
	[10.5.110.43])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B2B8176FFE
	for <blinux-list@redhat.com>; Tue, 30 Apr 2019 09:16:03 +0000 (UTC)
Received: from alberto.o2switch.net (alberto.o2switch.net [109.234.162.97])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 7422E3092656
	for <blinux-list@redhat.com>; Tue, 30 Apr 2019 09:16:02 +0000 (UTC)
Received: from mayo.jabatus.fr (mayo.jabatus.fr [109.234.163.145])
	by last-chance.jabatus.fr (Postfix) with ESMTP id 62DB8324076D
	for <blinux-list@redhat.com>; Tue, 30 Apr 2019 11:10:54 +0200 (CEST)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=0.201, required 5, autolearn=disabled, DKIM_INVALID 0.10,
	DKIM_SIGNED 0.10, URIBL_BLOCKED 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: 599EF1933B747.A7590
X-MailPropre-MailScanner-Information: Message sortant - Serveurs o2switch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:
	Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=Up9Xy1cfv2xgLEH5qC6LvtQEF0WdFpbdW0i19omeZ50=;
	b=KMjzCw7LI68rR1umVAnShnrXf+
	/1wRrMS+z2QC28NnjUfRzYLsWLunTjCpD2T8PiE5XZcHPY0dTIRSbS7co7SwqW7kr2NI6rCopcWWS
	4uLnfuYLYHXXSseCcv8doNrtrGbRzpRiUa2YRElNa55UzgVNIu/oYmfeUkkOTr4KY/+Y=; 
To: vinux-support@googlegroups.com,
	Linux for blind general discussion <blinux-list@redhat.com>,
	slint <slint@slint.fr>
Subject: Help for partitioning during installation: what do you consider best?
Openpgp: preference=signencrypt
Message-ID: <bfa52acc-6b9f-63b0-6ceb-3f2402ff2210@slint.fr>
Date: Tue, 30 Apr 2019 11:10:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
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
X-Greylist: Delayed for 00:05:10 by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.43]); Tue, 30 Apr 2019 09:16:02 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.43]);
	Tue, 30 Apr 2019 09:16:02 +0000 (UTC) for IP:'109.234.162.97'
	DOMAIN:'alberto.o2switch.net' HELO:'alberto.o2switch.net'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.1  (DKIM_SIGNED, DKIM_VALID,
	DKIM_VALID_AU) 109.234.162.97 alberto.o2switch.net
	109.234.162.97 alberto.o2switch.net <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.43
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]); Tue, 30 Apr 2019 09:16:31 +0000 (UTC)

Hello,
'
I would like that the next Slint installer be more newbie-friendly for choosing and setting up the partitions' layout.

The idea is to ask the user some questions, to determine what layout fits best his or her needs and preferences,
then do the partitioning for him or her in most cases.

So, my question is: among the accessible text installers, which one do you consider the best, and why?

Here, "best" means mainly "easy to use for newbies".

Didier
--
Didier Spaier,
Slint maintainer  

 
 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
