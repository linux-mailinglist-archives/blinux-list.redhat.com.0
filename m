Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id A0E2B324997
	for <lists+blinux-list@lfdr.de>; Thu, 25 Feb 2021 04:50:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614225043;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Mo7xUkuuWd3gtf41UOgyhcaxyBtgDY5LW+JpsirX1Gs=;
	b=bDVGzaPaTci8JpyuxVfHWZFwNnJSZIGg2CnBM2InNtXmMylqbt6nxOWVyaf3gpCoAp5Bil
	8DCq4sOaMTFSYJ+VPfAKy3QKfqPLVVMb0eDLTCe46cwZ7GHB8QBEsSoSn5hwQ/Tr7iEwmj
	lBY8a16D0obvAvmvSrGwTWDCQaffud4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-506-JU8d8nTfPhqj55TxsZcOag-1; Wed, 24 Feb 2021 22:50:41 -0500
X-MC-Unique: JU8d8nTfPhqj55TxsZcOag-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1645B10082F8;
	Thu, 25 Feb 2021 03:50:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4DAA260855;
	Thu, 25 Feb 2021 03:50:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C29A018095CB;
	Thu, 25 Feb 2021 03:50:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11P3oORn009927 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Feb 2021 22:50:24 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E2733202A422; Thu, 25 Feb 2021 03:50:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DC6112026D48
	for <blinux-list@redhat.com>; Thu, 25 Feb 2021 03:50:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC8678007D9
	for <blinux-list@redhat.com>; Thu, 25 Feb 2021 03:50:20 +0000 (UTC)
Received: from gateway2.unifiedlayer.com (gateway2.unifiedlayer.com
	[69.89.25.8]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-490-vZgwiNXCMF6ZExEH1UlTtA-1; Wed, 24 Feb 2021 22:50:17 -0500
X-MC-Unique: vZgwiNXCMF6ZExEH1UlTtA-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway2.unifiedlayer.com (Postfix) with ESMTP id B9270200D63BB
	for <blinux-list@redhat.com>; Wed, 24 Feb 2021 21:04:28 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id F6x2l69PLaJ23F6x2l2GnY; Wed, 24 Feb 2021 21:04:28 -0600
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:32018 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1lF6x2-003RvY-ET
	for blinux-list@redhat.com; Wed, 24 Feb 2021 21:04:28 -0600
Date: Wed, 24 Feb 2021 21:04:26 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: cut or similar utility
Message-ID: <20210224210426.427356b6@bigbox.attlocal.net>
In-Reply-To: <alpine.NEB.2.23.451.2102242144590.1365@panix1.panix.com>
References: <alpine.NEB.2.23.451.2102242144590.1365@panix1.panix.com>
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
X-Exim-ID: 1lF6x2-003RvY-ET
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:32018
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  Awk will get you where you want to go.  The "NF" variable
contains the number of fields on any given row, so if you just want
the number of fields in the first row:

  $ awk '{print NF; exit}' file.txt

However, if your rows can have differing numbers of fields, it gets a
bit more complex.  Do you want the number of fields in the longest
one?

  $ awk 'NF>m{m=NF}END{print m}' file.txt

The shortest one?

  $ awk 'NF<m || NR==1{m=NF}END{print m}' file.txt

The stats on each of them?

  $ awk '{++a[NF]}END{for (k in a) print a[k], k}' file.txt | sort -n

(that's the count followed by the number of fields, sorted by
increasing frequency)

By default awk considers things "fields" if they're separated by one
or more spaces or tabs, but you can change the delimiter by passing
the -F option, so if your file is delimited by colons, you could use:

  $ awk -F":" '{print NF; exit}' /etc/passwd

Hopefully that gives you some material to start with.  I'm a bit of
an awk junkie, so if one of those doesn't work for you, let me know
and I can tweak it pretty readily.

-Tim

On February 24, 2021, Linux for blind general discussion wrote:
> is cut or a similar utility once passed a file able to analyze the
> file and return the number of fields in that file it could find?
> 
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

