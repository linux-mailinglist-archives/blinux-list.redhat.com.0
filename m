Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8044AF6DC
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 17:37:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644424661;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=38/nbIjB6iEJOvAIgDk6VRiw1YirIoLcJwXskUpQNAY=;
	b=AGQkmiqvgXjD952mRvvKwiNt58kVDst1OcMNlblLAeP8m3HorNqtmaaTvgACVegTBoSpuM
	sGxNW7u2JIna+aPQzYrIHhGbSBwmQaWaWRUTej1Mk43eLWJMoUqDFMFPSFNLj6Yf1rhfbX
	ss+7ptmKv5O8ItGG0oRGFenCJ2CYpgg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-57-AXlWZ38PObK9YC12NvgZkg-1; Wed, 09 Feb 2022 11:37:40 -0500
X-MC-Unique: AXlWZ38PObK9YC12NvgZkg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2CC064686A;
	Wed,  9 Feb 2022 16:37:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 09A1F747B4;
	Wed,  9 Feb 2022 16:37:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 718F34BB7C;
	Wed,  9 Feb 2022 16:37:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219Gaxm4018286 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 11:36:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 6975176E9; Wed,  9 Feb 2022 16:36:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6507E76CC
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 16:36:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2750F28F4869
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 16:36:54 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-214-QBnIN9KbPTaM94-9ZhlOXQ-1; Wed, 09 Feb 2022 11:36:52 -0500
X-MC-Unique: QBnIN9KbPTaM94-9ZhlOXQ-1
Received: by mail-qt1-f174.google.com with SMTP id j12so2299638qtr.2
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 08:36:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=PIFjKf3jVS1/H/wJJVHu02F1Qp4U89ykno5a97Nn+UQ=;
	b=soP3HVMPsJxsYjgQcBfVTKshuQByC5G8hx2Tan27DMmkJzusCXAGZkGq/abw904Eu0
	Tds3th5crjlmEnVlu9k5JVZEJbC9G2FzNSTs2S/xcE2zpvZZgtL+jdAwRmHJz5FB+R6h
	kcS7WD8F8RJnR5QEE+QPtaBWkSXpcfgwUfFbiO2Z9Eo36L8SrAcESunI5jV9ZsmVw5Ca
	+8XOM1IySOpPANuUSrO3aZ68P49N78pWyUtSLcd8yJjv+ddqUGRwxjdCYkCm643E2+Dg
	F9/DlwroXuwZlxFDPb3LdWvXTXTp4cDue36AN7EJ7S/zLAykpQKetwB2TAKqqmVFSrSd
	0vjg==
X-Gm-Message-State: AOAM5306F0QQZpvkEbcaGVnoc0kUxi2rq9feytD9Bc4FsNvTp8ScdLl8
	euY4aEOpniROyyXcGpMVvWB5gDim5BfhfG6CmXMhQmGA
X-Google-Smtp-Source: ABdhPJwcBMomqzFJNvnLVIz+1sirFoXNjWoHCEbrdGw4VDz9YX1NPPiAvm6kkzBqUCPpaPH3UE+sBYfbA5DUU/mP+uE=
X-Received: by 2002:ac8:7dd5:: with SMTP id c21mr1934682qte.367.1644424612018; 
	Wed, 09 Feb 2022 08:36:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:518d:0:0:0:0 with HTTP; Wed, 9 Feb 2022 08:36:51
	-0800 (PST)
In-Reply-To: <20220209103624.dpjt6r3fnjuil7ga@sprite>
References: <7c4915b9-ca3a-9c1a-1132-b9896e94cbaa@gmail.com>
	<20220208193544.19898f78@bigbox.attlocal.net>
	<12bbdceb-725c-2656-4958-963f46426ed8@gmail.com>
	<20220209103624.dpjt6r3fnjuil7ga@sprite>
Date: Wed, 9 Feb 2022 16:36:51 +0000
Message-ID: <CAO2sX31xxF2yLuVxg3QFJ3KjePOtf16JU47CXO+N6He4dUThQA@mail.gmail.com>
Subject: Re: De-arrowing my system...how easy it is?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Perhaps worth noting that, in Orca, alt+shift+k,l,m brings up the
lists of links, lists, and landmarks respectively in the active
browser tabs. Alt+shift+j isn't bound to anything in Firefox or Orca
that I can tell, and I'm not in the habit of navigating by links,
lists, or landmarks and JavaScript clickables are the only thing I
routinely bring up a list of, but it might be worth paying attention
to.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

