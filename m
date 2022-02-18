Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E94F4BBE0A
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 18:12:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645204332;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=XUGhMiU+MWsIOKvZbBYEwXJ/4syOahWvGQkcfBVxoQQ=;
	b=daGnskDxjN5a0EAGUXMVcdSrH5biQzBOypt+bmKR0BERmBgAi9sJBuNkIZAc2ksTSWdPJR
	qRUPbB+s+4/+Kk6sYBZjCEsLGHfgeLvFXabRPI1gHUXdvMCZRJUWzGMFpvq1NR3ZXmZsPE
	RwAKVxBfOoyQKfNPCmYl6CU1m4uhz3E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-590-wCDGdAukNN2eyVrhtSfJBA-1; Fri, 18 Feb 2022 12:11:44 -0500
X-MC-Unique: wCDGdAukNN2eyVrhtSfJBA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F03F2F4F;
	Fri, 18 Feb 2022 17:11:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B5ACD752DF;
	Fri, 18 Feb 2022 17:11:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 90EE41806D1C;
	Fri, 18 Feb 2022 17:11:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IHBVTB022625 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 12:11:32 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BAF0F2024CD6; Fri, 18 Feb 2022 17:11:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B649A2024CD2
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 17:11:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B4408296A605
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 17:11:28 +0000 (UTC)
Received: from nntp.AegisInfoSys.com (nntp.AegisInfoSys.com [65.242.138.29])
	by relay.mimecast.com with ESMTP id us-mta-626-dNYVK6O4Pm670ljxVV7OJw-1;
	Fri, 18 Feb 2022 12:11:26 -0500
X-MC-Unique: dNYVK6O4Pm670ljxVV7OJw-1
Received: (from henry@localhost) by nntp.AegisInfoSys.com (8.6.9/8.6.9) id
	LAA25833 for blinux-list@redhat.com; Fri, 18 Feb 2022 11:56:42 -0500
Date: Fri, 18 Feb 2022 11:56:42 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Mutt, how do I..
Message-ID: <20220218165641.GH23517@nntp.AegisInfoSys.com>
References: <e2f33a0f-e33b-aeaf-90a8-8afd3e0b6d63@gmail.com>
Mime-Version: 1.0
In-Reply-To: <e2f33a0f-e33b-aeaf-90a8-8afd3e0b6d63@gmail.com>
User-Agent: Mutt/1.4.2.3i
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

never done (1), but as to (2), mutt has a "limit" command, that will
only show messages that fit criteria that you choose. for unread messages,
that's generally the "N" (for "new") flag. flags are prefixed by tilde
character, so to show only "new" messages, type: "l~N" . after that, the
messages indicator in the footer will tell you the number of messages
that are now being displayed.

On Fri, Feb 18, 2022 at 03:02:13AM +0000, Linux for blind general discussion wrote:
> Okay so...
> 
> Hopped over to Mutt as my email client. Since it uses less resources.
> 
> Now I've two main questions
> 
> 1. Currently I've a macro to do mutt email -i muttbody.txt -s subject
> 
> How would I add text to the body of an email? It just adds it as an 
> attachment like mutthostname then numbers.txt instead of putting it in 
> the body of the message though
> 
> 2. Is there a way I can display the number of unread messages somehow, 
> like Inbox (2) like I can on a GUI client?

-- 
Henry Yen                                       Aegis Information Systems, Inc.
Senior Systems Programmer                       Hicksville, New York

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

