Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id CF8DE301024
	for <lists+blinux-list@lfdr.de>; Fri, 22 Jan 2021 23:40:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1611355256;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pGdwc6spwXD/qZtdD/TBO1+jewj6qcen3OQpeLlH7LE=;
	b=V7Km1zQXeFI9UvBPJKbpCs+H/Sf6Kbfp8uCBfS7L/rcOuwL/lnRRqXt3q3/YInadwqBip6
	m+piz5JP8YKhqKKEWBhFbcDHrOgJ7Mi5qmIi3trAoeTHD3xHT087PjC1KJrYZqMtGJMN9H
	bUNW6/DWpr4XcWN2ketvm4YRFufzMxY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-484-6fHgbIvMO7OGXYmNaPbuQg-1; Fri, 22 Jan 2021 17:40:54 -0500
X-MC-Unique: 6fHgbIvMO7OGXYmNaPbuQg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 74AF7806661;
	Fri, 22 Jan 2021 22:40:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 86CFA6EF40;
	Fri, 22 Jan 2021 22:40:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BEBCD4BB7B;
	Fri, 22 Jan 2021 22:40:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 10MMeUte016240 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 22 Jan 2021 17:40:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 4CB552166B2F; Fri, 22 Jan 2021 22:40:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 46A7A2166B27
	for <blinux-list@redhat.com>; Fri, 22 Jan 2021 22:40:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AE172800B3B
	for <blinux-list@redhat.com>; Fri, 22 Jan 2021 22:40:27 +0000 (UTC)
Received: from gateway3.unifiedlayer.com (gateway3.unifiedlayer.com
	[69.89.18.221]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-545-wtmdqEWxMqak6-swRlGagQ-1; Fri, 22 Jan 2021 17:40:24 -0500
X-MC-Unique: wtmdqEWxMqak6-swRlGagQ-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway3.unifiedlayer.com (Postfix) with ESMTP id 13E762007CA97
	for <blinux-list@redhat.com>; Fri, 22 Jan 2021 15:46:04 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id 34Fnl6sAKaJ2334Fnl83Od; Fri, 22 Jan 2021 15:46:04 -0600
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:61569 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1l34Fn-003CL8-P2
	for blinux-list@redhat.com; Fri, 22 Jan 2021 15:46:03 -0600
Date: Fri, 22 Jan 2021 15:46:02 -0600
To: blinux-list@redhat.com
Subject: Re: renaming many files
Message-ID: <20210122154602.55d4e4a7@bigbox.attlocal.net>
In-Reply-To: <20210122203026.GN12763@nntp.AegisInfoSys.com>
References: <465180FE-6581-48FA-9EFD-23329FE3906A@gmail.com>
	<20210122203026.GN12763@nntp.AegisInfoSys.com>
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
X-Exim-ID: 1l34Fn-003CL8-P2
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:61569
X-Source-Auth: tim@thechases.com
X-Email-Count: 2
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On January 22, 2021, Linux for blind general discussion wrote:
>    rename -v -n 's/^renewal talk //' "renewal talk *"

One small issue here...you will likely need the asterisk outside the
quotes:

  rename -v -n 's/^renewal talk //' "renewal talk "*

otherwise, this is my favorite solution for doing such renames.

If you use bash as your shell, you can even use the caret notation to
remove the -n when you're ready to run

  $ ^-n

-tim


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

