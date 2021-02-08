Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 53105313E30
	for <lists+blinux-list@lfdr.de>; Mon,  8 Feb 2021 19:56:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1612810596;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zv1tk0crqcqFy6yK+m3W2e+Uy47YETSQFbHc76fQUAQ=;
	b=X1ABbDnmuIomZWSh2PEqz37HCpmtLWbrhfYBXcZbMEynPAdwnf89fIwIO0n1pkCH3YcAnP
	J2kLs0lSe8oxY20ukLdXCSiNTEK1VHGpD/zjzCb45wwCrjKTGACwrz02n2zP/A+9Ltx5pv
	ju2bjfDt0so2cdtmDZ9lkKglqQ6plkM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-555-9x9hBZbNMXy4g3NQoqJ_Sg-1; Mon, 08 Feb 2021 13:56:34 -0500
X-MC-Unique: 9x9hBZbNMXy4g3NQoqJ_Sg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3188B1020C21;
	Mon,  8 Feb 2021 18:56:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 450CB60C04;
	Mon,  8 Feb 2021 18:56:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BF7344EE83;
	Mon,  8 Feb 2021 18:56:24 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 118IuIMo009337 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 8 Feb 2021 13:56:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 86F611004163; Mon,  8 Feb 2021 18:56:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82BF91111C72
	for <blinux-list@redhat.com>; Mon,  8 Feb 2021 18:56:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 49FE3800B29
	for <blinux-list@redhat.com>; Mon,  8 Feb 2021 18:56:16 +0000 (UTC)
Received: from gateway12.unifiedlayer.com (gateway12.unifiedlayer.com
	[74.220.192.7]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-238-f_Z5B9JHPuautcRo6oHtCQ-1; Mon, 08 Feb 2021 13:56:13 -0500
X-MC-Unique: f_Z5B9JHPuautcRo6oHtCQ-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway12.unifiedlayer.com (Postfix) with ESMTP id 5FCAD20084DD3
	for <blinux-list@redhat.com>; Mon,  8 Feb 2021 12:35:16 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id 9BNUlkUGmwLnQ9BNUlWPNQ; Mon, 08 Feb 2021 12:35:16 -0600
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:40485 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1l9BNU-0041CB-2R
	for blinux-list@redhat.com; Mon, 08 Feb 2021 12:35:16 -0600
Date: Mon, 8 Feb 2021 12:35:14 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Can I Increase the Volume of a PC-Speaker?
Message-ID: <20210208123514.67810a87@bigbox.attlocal.net>
In-Reply-To: <b23c86b2-8246-e432-43b-80c1856c51e@hubert-humphrey.com>
References: <b23c86b2-8246-e432-43b-80c1856c51e@hubert-humphrey.com>
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
X-Exim-ID: 1l9BNU-0041CB-2R
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:40485
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On February  8, 2021, Linux for blind general discussion wrote:
> I am in Debian SID, want to make my PC speaker louder.

Tim here.  Are you running a GUI or just a plain terminal?  In X you
can use the `xset` command to set the properties of the system bell

  $ xset b on $VOLUME $PITCH $DURATION

So to set the bell to maximum volume (100) at 423 Hertz for 120
milliseconds, you'd issue

  $ xset b 100 423 120

You might also poke at your alsamixer to see if the channel for your
PC beeper (often a channel named "Beep") 

  $ amixer -q -c 0 set Beep 100%

In the plain terminal (not in X), you can use the `setterm` command to
adjust the pitch and duration but not the volume unless you mess with
alsamixer/amixer:

  $ setterm -bfreq 400 -blength 50

Hopefully one or more of those gets you something loud enough (I'm on
the other end of this spectrum and find the beeper jarringly loud, so
I use these commands to make some nice low quiet buzz)

-Tim


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

