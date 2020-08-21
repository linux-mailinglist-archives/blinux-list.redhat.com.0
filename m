Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 7DA5C24D58A
	for <lists+blinux-list@lfdr.de>; Fri, 21 Aug 2020 14:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1598014720;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5v6Wea6EBqJhte+MCTJho03VkwCTz61H1Pa46pedDh4=;
	b=RfS5Cos7ih0syAxZoK8SaU584uQ6xmciwhFjp102SF7KTK3St9wkuMMSHAe+2klUrge7Ek
	W+IkP8Z2luAsnZrjc5Zo1dO5ODDjr8djD8jIyU8VQmd75zv6lTWidHFz1+jIrh9w26aw8e
	Cw76EqNdso3TkWTBXvQs5Rof4pck/Gw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-178-a74wDl66PHiqvTcVsYITqw-1; Fri, 21 Aug 2020 08:58:38 -0400
X-MC-Unique: a74wDl66PHiqvTcVsYITqw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CDCBE807345;
	Fri, 21 Aug 2020 12:58:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 32885105509E;
	Fri, 21 Aug 2020 12:58:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 347A81826D39;
	Fri, 21 Aug 2020 12:58:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 07LCvUbB028097 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 21 Aug 2020 08:57:30 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 18766114F27E; Fri, 21 Aug 2020 12:57:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 13F42114F25C
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 12:57:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 27D9F80121D
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 12:57:27 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com
	[209.85.219.53]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-259-b_19JIStPV6Io2ItUnS-sA-1; Fri, 21 Aug 2020 08:57:24 -0400
X-MC-Unique: b_19JIStPV6Io2ItUnS-sA-1
Received: by mail-qv1-f53.google.com with SMTP id x7so567805qvi.5
	for <blinux-list@redhat.com>; Fri, 21 Aug 2020 05:57:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=VcH743LnvZhkRRZEdZ0cFOAJeMrm3tNJ4w8a1tbZCAk=;
	b=fCdt7ekWSFOEZE3UOX5ne29F6SGMTkB2X8NP8K14MF6oy212ZRtcLjj89ljad7S2S5
	t+R8BgHNpeCyDUvgjXYnE9/oTtt70MgDVTpe8mCYzqOhEgTabkedkF2fOYsQDvDhS4CT
	AwgnI6Lj/iY6y8BgrncFleY9XOWe/UC+TQmpvsAKB+sKc2CBNyyWJiNNFNbD9HjGKDGL
	PGKSLrKLqTfld7A/va/6dZDez2ZVj9NMPsAmnuJeuOv6J2THu13vbpKrcP95WA8WAi69
	47ntwupOMAERnPtkj/aMiqTrAGZYCMcWnfmVsd2POfRmKE6Mz12NuBMs9k6gl2hI9YbV
	mcoA==
X-Gm-Message-State: AOAM530M58cKMHCsJ3ic/Dk9KmlpDiQkR1vtnoNW/qVZy47vM5xzfOgp
	cfcT7roi9Gei1MUi27aMET3mnB6TAlJhXujCidGtxM0+8R8=
X-Google-Smtp-Source: ABdhPJwUKBeFb0RauYd7QY9HmZpzRBsnk8vkqxUIubDKuo9i49Aai53OCqjdBso2Slvy9By83v1rw7Tknkc9eCZddEA=
X-Received: by 2002:a05:6214:150e:: with SMTP id
	e14mr2263725qvy.149.1598014643021; 
	Fri, 21 Aug 2020 05:57:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:e807:0:0:0:0:0 with HTTP; Fri, 21 Aug 2020 05:57:22
	-0700 (PDT)
In-Reply-To: <68ff810e-ebd5-8eb4-f6db-5c268f40d837@gmail.com>
References: <MFBaDor--3-2@tutanota.com>
	<alpine.NEB.2.23.451.2008201242490.28820@panix1.panix.com>
	<CAO2sX31nhBAtXumURx=+8qkJ1muWGyzauovLL-dK_wTMxfKPeQ@mail.gmail.com>
	<d875a786-aee9-42ba-204b-72f0b32da766@gmail.com>
	<CAO2sX31A-wt01cVGW=ALD5VYmcDbf6y0-rMgbSVw58n5P52UEg@mail.gmail.com>
	<b423735b-8ae9-12a1-e6b6-45a8a234bfaf@gmail.com>
	<alpine.DEB.2.23.453.2008201331030.998121@chime>
	<e1a425ec-6214-7f61-89cf-cf4d4fb0f511@slint.fr>
	<alpine.DEB.2.23.453.2008201440380.1109151@chime>
	<03d49f1b-c058-eac9-f0d4-93719f59e6ee@gmail.com>
	<e73a7097-f12d-a4cd-21ef-101f35439a2d@slint.fr>
	<CAO2sX33Q8kPKn6qAaQtF+Z9jYGdxiEUJXQFnc3bKQDfDnrWYOw@mail.gmail.com>
	<99a3d6ab-1abf-cf35-42ab-84b9fba7f4c2@gmail.com>
	<alpine.NEB.2.23.451.2008210753520.27701@panix1.panix.com>
	<68ff810e-ebd5-8eb4-f6db-5c268f40d837@gmail.com>
Date: Fri, 21 Aug 2020 12:57:22 +0000
Message-ID: <CAO2sX32A8QuCvc_o8QERqgjr4k_w_CRq0nwpSLosESQ1mLkzAA@mail.gmail.com>
Subject: Re: Accessible Distros for a beginner?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0.002
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

And even if NVDA can run under Wine, I would expect it to only work
with other Windows applications running under Wine.

And honestly, I remember Wine being fairly frustrating to work with
even as a sighted user, and while there's been nearly a decade for it
to improve since I last used it, Microsoft's fondness for overhauling
UI every other version and making changes seemingly for the sake of
change means the Wine devs have been dealing with a moving target...
wouldn't be surprised if Wine offers better support for older Windows
software than Windows itself does these days though.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

