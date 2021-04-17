Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A5515362D63
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 05:54:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618631670;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=f1qMryiEwE9S0nFlHlk3RUuZ84whontrwyyTx34idDY=;
	b=FW4Au+ZT4V28n4oBZkyM+AklMLwD3LplXQ3SNKnwgLMTnUmmL1XF98sp/Abfj8RWwKY+kG
	1TxSVwQMB9jXeNd9OUGq9b3iXOnBIcr6qnzQ5nUVkdGoy3dJQyjjYiZtYQJCNs83lUJwLP
	QHF4yuWt9XfQ0EJrVESsMnTY/JykQX4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-266-13EjqsiSMfysplDdHqC2lQ-1; Fri, 16 Apr 2021 23:54:28 -0400
X-MC-Unique: 13EjqsiSMfysplDdHqC2lQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0E0B918397A3;
	Sat, 17 Apr 2021 03:54:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 036AC107D5C6;
	Sat, 17 Apr 2021 03:54:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id F032C1806D0F;
	Sat, 17 Apr 2021 03:54:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13H3pS6b003963 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 16 Apr 2021 23:51:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E0AEB20F8C2F; Sat, 17 Apr 2021 03:51:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DB3B520FE6A7
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 03:51:25 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C143B805F07
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 03:51:25 +0000 (UTC)
Received: from mx1.simplelogin.co (mx1.simplelogin.co [94.237.111.15])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-385-Ezv1HRStNEqKEuwCHoCeoA-1; Fri, 16 Apr 2021 23:51:21 -0400
X-MC-Unique: Ezv1HRStNEqKEuwCHoCeoA-1
X-SimpleLogin-Client-IP: 2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c
Received: from [172.17.0.6] (mx1.simplelogin.co
	[IPv6:2a04:3544:1000:1510:8c7a:9cff:fe3c:4b2c])
	by mx1.simplelogin.co (Postfix) with ESMTP id 600625C899
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 03:42:17 +0000 (UTC)
In-Reply-To: <161862814448.7.6659849185338098597.5940568@simplelogin.co>
References: <161860978196.7.10178583994303054677.5934759@slmail.me>
	<161861134168.7.8725593548099427193.5935596@simplelogin.co>
	<161861745773.6.10221248550300079442.5937580@slmail.me>
	<2d84575-10dc-a8b6-d46d-60773d4fafc8@hubert-humphrey.com>
	<161861948053.7.16244801545361401537.5938331@simplelogin.co>
	<161862148227.7.18281104954975477453.5938888@slmail.me>
	<161862282677.7.2491104836224406595.5939316@simplelogin.co>
	<161862548310.8.16722362767692903606.5940024@slmail.me>
	<161862814448.7.6659849185338098597.5940568@simplelogin.co>
Subject: Re: SL's response to all inquiries re: Readspeaker voices
MIME-Version: 1.0
To: Linux for blind general discussion <blinux-list@redhat.com>
Message-ID: <161863093723.7.7991468665084930791.5941189@slmail.me>
Date: Sat, 17 Apr 2021 03:42:17 -0000
X-SimpleLogin-Type: Reply
X-SimpleLogin-EmailLog-ID: 5941189
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Kare,
Thanks so much for explaining that.
I've never used Thunderbird before, and if there is a chance that it might be discontinued, then I might as well start by trying the least involved method first, saving documents as .txt in LibreOffice before pasting.
I'll try a test with that tomorrow with just a test document and see how it formats.
Thanks for the suggestions.
If I need to ask any more questions about email clients and text editors, I will do so in a seperate dedicated thread, as I know this formatting fiasco has kinda derailed the subject matter of the thread here.
So if anyone has any further questions, comments, or ideas pertaining to Readspeaker voices, go ahead and either post them in this thread, or in the other thread I started titled: "Sending Reformatted: SL's responses to all inquiries" in which my post is correctly legible for those who couldn't make sense of the jumbled email that began this thread.
I'm signing off for tonight, I'll check back in tomorrow.
Thanks,
SL
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

