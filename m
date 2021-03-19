Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 560B3341360
	for <lists+blinux-list@lfdr.de>; Fri, 19 Mar 2021 04:12:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1616123550;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lV4+bB6F1XQbjsavGQSSgQslw0ju7qq0s+tK3Gxknfc=;
	b=JF1LuZJ8OBmaCC6YGLSaYFOITfGepJ2yGMGurbvhqcDVZ3S6dPN54gyW0r8cRbztsoZJKR
	by/bw6T20fV/4H/KfTrdRcjat13aVQmxpmVdiTL5m0Eqv/CqFI+YuyE8YwF9X3HF+G4DaN
	2irEOC0QS6lNoDPiCfU4eBsq2izBiGY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-385-XImyY9KLOyGCVn4PPY8wQw-1; Thu, 18 Mar 2021 23:12:28 -0400
X-MC-Unique: XImyY9KLOyGCVn4PPY8wQw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 45448107B76D;
	Fri, 19 Mar 2021 03:12:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F07595D9C6;
	Fri, 19 Mar 2021 03:12:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 357884BB7C;
	Fri, 19 Mar 2021 03:12:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12J3CCZw016251 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 18 Mar 2021 23:12:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5DCF42166BA3; Fri, 19 Mar 2021 03:12:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 57BFD2166B44
	for <blinux-list@redhat.com>; Fri, 19 Mar 2021 03:12:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 35D9F811E7F
	for <blinux-list@redhat.com>; Fri, 19 Mar 2021 03:12:10 +0000 (UTC)
Received: from gateway1.unifiedlayer.com (gateway1.unifiedlayer.com
	[69.89.20.237]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-108-bgmtZ1U-Mk2Ha8FtDyqVhw-1; Thu, 18 Mar 2021 23:12:07 -0400
X-MC-Unique: bgmtZ1U-Mk2Ha8FtDyqVhw-1
Received: from cm6.websitewelcome.com (unknown [108.167.139.19])
	by gateway1.unifiedlayer.com (Postfix) with ESMTP id D232F2007A72C
	for <blinux-list@redhat.com>; Thu, 18 Mar 2021 21:51:58 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id N5F0lyqB9sMPvN5F0lkKFg; Thu, 18 Mar 2021 21:51:58 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:62029 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1lN5F0-003U5y-En
	for blinux-list@redhat.com; Thu, 18 Mar 2021 21:51:58 -0500
Date: Thu, 18 Mar 2021 21:51:57 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Are Their Any Other Graphical Screen-Readers in Linux, Other
	than ORCA?
Message-ID: <20210318215157.01a351fa@bigbox.attlocal.net>
In-Reply-To: <Pine.LNX.4.64.2103182222560.1842820@server2.shellworld.net>
References: <eb9e4135-2b54-ec88-536a-5d7f8e71d9df@hubert-humphrey.com>
	<alpine.NEB.2.23.451.2103182115590.7593@panix1.panix.com>
	<Pine.LNX.4.64.2103182222560.1842820@server2.shellworld.net>
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
X-Exim-ID: 1lN5F0-003U5y-En
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:62029
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On March 18, 2021, Linux for blind general discussion wrote:
> ratpoison?
> who. names. these. things?  laughs.

being entirely keyboard-driven, it's named for its efforts to kill the
mouse (as a user-interface device).

-tim


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

