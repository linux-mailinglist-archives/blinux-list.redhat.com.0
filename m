Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A3324367682
	for <lists+blinux-list@lfdr.de>; Thu, 22 Apr 2021 02:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1619052762;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=4zOKF0axf2z3z4r27KLZMjVbVpCIa+0NUkXWFDIKhSE=;
	b=Q/ZnN6GKg+M/Nz2K+fza1CXKwf8qAyb6sc/A2MUu04C1DgDQmkKCcKp2/7gRpo3bvMWTHL
	O3X5jCEjtskDnl8ztIir9dvYvuGUdbQfa9Pg/ENr+uaZgdbw8nvDdazSWAhshQR8Yzytf0
	G77z4a0hV+PP6qdLrcpV7TQZePsHTMk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-36-0RehQuNbNaq2sXqBPlucBg-1; Wed, 21 Apr 2021 20:52:40 -0400
X-MC-Unique: 0RehQuNbNaq2sXqBPlucBg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 606A48710FD;
	Thu, 22 Apr 2021 00:52:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C10E6091B;
	Thu, 22 Apr 2021 00:52:35 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 569991C98;
	Thu, 22 Apr 2021 00:52:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13M0qM0B026377 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 21 Apr 2021 20:52:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 718C020F8C1F; Thu, 22 Apr 2021 00:52:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6BDD120F8C15
	for <blinux-list@redhat.com>; Thu, 22 Apr 2021 00:52:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E798B8001E8
	for <blinux-list@redhat.com>; Thu, 22 Apr 2021 00:52:19 +0000 (UTC)
Received: from gateway11.unifiedlayer.com (gateway11.unifiedlayer.com
	[74.220.219.254]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-293-2QcBzDSUN_KFmp2rP-k3vw-1; Wed, 21 Apr 2021 20:52:17 -0400
X-MC-Unique: 2QcBzDSUN_KFmp2rP-k3vw-1
Received: from cm4.websitewelcome.com (unknown [108.167.139.16])
	by gateway11.unifiedlayer.com (Postfix) with ESMTP id 64F6F20097171
	for <blinux-list@redhat.com>; Wed, 21 Apr 2021 19:30:49 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id ZNF3lhXOfVJx8ZNF3lQ3b2; Wed, 21 Apr 2021 19:30:49 -0500
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:40730 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1lZNF3-000ye7-2M
	for blinux-list@redhat.com; Wed, 21 Apr 2021 19:30:49 -0500
Date: Wed, 21 Apr 2021 19:30:47 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: 3D design software
Message-ID: <20210421193047.6c2af4a7@bigbox.attlocal.net>
In-Reply-To: <alpine.DEB.2.22.394.2104211249500.102398@precision-M2800>
References: <alpine.DEB.2.22.394.2104211249500.102398@precision-M2800>
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
X-Exim-ID: 1lZNF3-000ye7-2M
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:40730
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

Tim here.  I'm not sure how readily most graphical-manipulations
(whether raster editors like Gimp, vector editors like Inkscape, or
3d editors like Blender) can be made accessible to those who are
completely blind.  There might be some degree of usability if you
still have some vision.

However, I do know that povray's file-format is pure text.  I used to
write such files back in the 90s for creating scenes and then shipping
off to the povray renderer to produce the image (several hours or
days of rendering later) from the file.  If I were hunting something
accessible to someone completely blind, this might be where I started.

If you're looking to create CNC files, often those are just grayscale
images to define the cut-depth at any given point.  While there are
fancier CNC machines where you can swap bits/colors etc, I'm not sure
how one would go about making those additional features accessible.
Or even making the core grayscale image manipulation accessible.
Well maybe other than some sort of AI with a camera that determines
the depth, seeing for you.  But manipulating that data once you've
acquired it would still be a challenge.

-tim

On April 21, 2021, Linux for blind general discussion wrote:
> Has anyone considered ways to write or make existing 3D design
> software accessible?  It might be interesting to be able to use
> some form of cad/cam as one of my hobbies and ocasional jobs is
> working with CNC machines.
> 
> Tom
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

