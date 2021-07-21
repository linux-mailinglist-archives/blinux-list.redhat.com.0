Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id B38CB3D10AC
	for <lists+blinux-list@lfdr.de>; Wed, 21 Jul 2021 16:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626876331;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=etPdC9JADRZzFyQGI+1d6HQ8Ff2XbK0+NwYrkoExUyI=;
	b=OwXZK0klgurB5uZkmO9nM0bLvCS0CPNLey3I1dJPSfMbrGJqKrEpQ2qqfFkVyO5JG7QxCP
	Sn0mTVdArpjJrYpDPjxqdzO3FDORr12W4qU5oLvUsGD0y76ZRuh0NMk6ZqTJTz/nfwYklB
	UDE6k8eoPCdaFJKQJOl4za0kKIgRknY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-124-M9rMkMIHOgq9I_FghoHB-g-1; Wed, 21 Jul 2021 10:05:30 -0400
X-MC-Unique: M9rMkMIHOgq9I_FghoHB-g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7C87F100E323;
	Wed, 21 Jul 2021 14:05:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0683760CA1;
	Wed, 21 Jul 2021 14:05:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 10B524A7C8;
	Wed, 21 Jul 2021 14:05:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16LE5II4001863 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Jul 2021 10:05:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 970E3E2A92; Wed, 21 Jul 2021 14:05:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 91E67D7B29
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 14:05:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8640B802700
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 14:05:15 +0000 (UTC)
Received: from gateway11.unifiedlayer.com (gateway11.unifiedlayer.com
	[66.147.250.95]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-486-qk4MN-7QORSEmDvK5B7OkA-1; Wed, 21 Jul 2021 10:05:12 -0400
X-MC-Unique: qk4MN-7QORSEmDvK5B7OkA-1
Received: from cm4.websitewelcome.com (unknown [108.167.139.16])
	by gateway11.unifiedlayer.com (Postfix) with ESMTP id 3DDB02009FC92
	for <blinux-list@redhat.com>; Wed, 21 Jul 2021 08:41:04 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id 6CTAmRZ0Qcfn86CTAmjeiT; Wed, 21 Jul 2021 08:41:04 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:20996 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1m6CT9-003hyl-U8
	for blinux-list@redhat.com; Wed, 21 Jul 2021 08:41:03 -0500
Date: Wed, 21 Jul 2021 08:41:01 -0500
To: blinux-list@redhat.com
Subject: Re: Twitter, again
Message-ID: <20210721084101.23f352ee@bigbox.attlocal.net>
In-Reply-To: <4099494d-9a2a-750d-be70-ddf42bf7504d@gmail.com>
References: <4099494d-9a2a-750d-be70-ddf42bf7504d@gmail.com>
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
X-Exim-ID: 1m6CT9-003hyl-U8
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:20996
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
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  I took a "Old Hardware Challenge" recently[1] and to
access Twitter I used rainbowstream on the TTY.  It was passible, but
the interface was still a bit clunky and lacking in a number of
regular Twitter features.  Fortunately, it was pretty easy to test
once you completed the authentication sequence (it provides a URL,
you visit that URL and obtain the 6-digit code to transcribe into
rainbowstream).

But certainly worth a try.

-tim

[1]
https://dataswamp.org/~solene/2021-07-07-old-computer-challenge.html

On July 21, 2021, Linux for blind general discussion wrote:
> Hi all,
> 
> 
> I know this has been talked about a while back, but unfortunately
> it is a topic near and dear to my heart.
> 
> 
> Has there been any new developments regarding an accessible twitter 
> client for linux? I can honestly say, GUI or TTY, I really don't
> care.
> 
> 
> If anyone knows anything on this, please let me know.
> 
> 
> I know there is an open source accessible client on Github
> available for both Windows and MacOS, but I have no idea if it can
> be ported to GNU/Linux. If anyone wants to take a look at "Quinter".
> 
> -- 
> Warm regards,
> 
> Brandt Steenkamp
> 
> Sent using Thunderbird from Slint
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

