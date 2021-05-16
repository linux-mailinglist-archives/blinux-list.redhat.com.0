Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id DBF25381BEF
	for <lists+blinux-list@lfdr.de>; Sun, 16 May 2021 03:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621127850;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SlCbdaIF+C+GNe3uBcPmHp+/NTl8LhN470qJVgiYNdg=;
	b=HVh+fIM7TX92wY+AhJPEwcp2le1r84oXw5Nt5D11H5k3rXP3D8pLHA3U/Nexim68nH6mmH
	IUXeA37O7Gcw2aDOLs6GvaVZIdeSQyip9RKNLbFxYzkjYSYBcbQkxOMg2BCNcE521WCNJn
	/qdrtbEyN/WGzyvNY/nQ8CQbWrnKpiM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-139-b9JWw6z7PCSO6xkthziDpA-1; Sat, 15 May 2021 21:17:28 -0400
X-MC-Unique: b9JWw6z7PCSO6xkthziDpA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D28E7801817;
	Sun, 16 May 2021 01:17:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8E75A60CDF;
	Sun, 16 May 2021 01:17:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DEE491801028;
	Sun, 16 May 2021 01:17:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14G1G0Ji015002 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 May 2021 21:16:00 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4727C110DBCF; Sun, 16 May 2021 01:16:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4297D110DBCD
	for <blinux-list@redhat.com>; Sun, 16 May 2021 01:15:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CB988800B31
	for <blinux-list@redhat.com>; Sun, 16 May 2021 01:15:57 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-308-dN4qBi2sOWGlU3HQV-5CAw-1; Sat, 15 May 2021 21:15:55 -0400
X-MC-Unique: dN4qBi2sOWGlU3HQV-5CAw-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id 0FC41621D7B; Sun, 16 May 2021 01:15:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id 0AF4C62022A;
	Sat, 15 May 2021 21:15:53 -0400 (EDT)
Date: Sat, 15 May 2021 21:15:52 -0400 (EDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Vox.com: Why captchas are getting harder (fwd)
In-Reply-To: <alpine.NEB.2.23.451.2105152044590.9861@panix1.panix.com>
Message-ID: <Pine.LNX.4.64.2105152115100.2849188@server2.shellworld.net>
References: <alpine.NEB.2.23.451.2105152044590.9861@panix1.panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
Cc: blindtlk@nfbnet.org
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Is there a transcript for those of us who cannot solve the captchas for 
Youtube?



On Sat, 15 May 2021, Linux for blind general discussion wrote:

>
>
> ---------- Forwarded message ----------
> Date: Fri, 14 May 2021 23:56:57
> From: Jude DaShiell <dashielljude@gmail.com>
> To: Jude DaShiell <jdashiel@panix.com>
> Subject: Vox.com: Why captchas are getting harder
>
> Vox.com: Why captchas are getting harder.
> https://www.vox.com/22436832/captchas-getting-harder-ai-artificial-intelligence
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

