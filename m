Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DD145CA17
	for <lists+blinux-list@lfdr.de>; Wed, 24 Nov 2021 17:31:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637771513;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LWfZbmDSkq/3WvReMkQGpprKkZ+4zmT42KQYBV+bZ7c=;
	b=XY6fTMvpNY+M8CvSnQbYkSrWagFHg15ri+8H7w/owAuV9BoRcocEjDT/qKNo2lBtYATd//
	xbKJPdbVi7sUTIInBgm1iohxqmFo02dmb6X8XQXI2VWKeM61ulbnyroizt3qfySH/JwsQB
	0SAQwvmYuP8MytVnjKHKH10if7cFcYE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-544-_yzXBOmJMnGTqYXTNjALKA-1; Wed, 24 Nov 2021 11:31:51 -0500
X-MC-Unique: _yzXBOmJMnGTqYXTNjALKA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CB655193578B;
	Wed, 24 Nov 2021 16:31:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B73E74180;
	Wed, 24 Nov 2021 16:31:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A2A934BB7C;
	Wed, 24 Nov 2021 16:31:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AOGVgbg032125 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 24 Nov 2021 11:31:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 7632440CFD0E; Wed, 24 Nov 2021 16:31:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7160C40CFD02
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 16:31:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 56E41185A794
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 16:31:42 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com
	[209.85.219.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-439-TEPfudWAPaGwuNS_rvtthA-1; Wed, 24 Nov 2021 11:31:40 -0500
X-MC-Unique: TEPfudWAPaGwuNS_rvtthA-1
Received: by mail-qv1-f50.google.com with SMTP id a24so2168668qvb.5
	for <blinux-list@redhat.com>; Wed, 24 Nov 2021 08:31:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=V9DAyLDg9jDHNWn4AhG+wlgYkpHx8h6UNKn7ed3sU6Y=;
	b=7o2QK+znqcbWtdfeCqO663hI4aZqVVWRa+LeQnczvp7A5VcyC3uB1SajCCFMf1uPFu
	4DcT6aBIN9Ci0/G/B0x3bEThA53DfH/ej47PAPtQkHaDodgVugqQkNBPVvVo7zjy1W8/
	R0NmDZXSVmY/DY9x0Xs/C00TzYwfG16h4tlrtDMaYj4BdbvQF/+i98JrJs++d8oKkDzu
	1PZVrvQD4Kr/KdrV1xNm3y3i1uFh27Kd1lm2rGF4RA18g4K4id6AzJ2pgIJAUCWjfblD
	NdGg7vhQd7SiRj4D9392qqEq4mwbaMhyGxltvyqFB52In1V2we6lGmwejf2eovv6ZTat
	dDHg==
X-Gm-Message-State: AOAM533D4/HLiPh0IT4w88VzzAGH16O0CUl1FaiAidFwkWACcEvw2GtV
	TZiynjevatZKU2lep25CaPIFJzCBjoE=
X-Google-Smtp-Source: ABdhPJxlNgR6HKnuIoXsmYc4n9qv047EZYbNL3AzD2KqfhBWVDtWMhk0WMPJJEzO9wMecFyKPLkkAg==
X-Received: by 2002:ad4:5cee:: with SMTP id iv14mr9338116qvb.15.1637771499970; 
	Wed, 24 Nov 2021 08:31:39 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960])
	by smtp.gmail.com with ESMTPSA id d5sm146075qte.27.2021.11.24.08.31.39
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 24 Nov 2021 08:31:39 -0800 (PST)
Subject: Re: In the mood for something new
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <512DE42E-6D25-4FB8-B249-4D8AF2E7C8F3@gmail.com>
	<CAO2sX33yi4FBVBffmxfzQqy6yDirw6QLMsC_Q9czheOjBy+nfA@mail.gmail.com>
	<52d94c3d-a3c8-a5a0-49c3-b599ec3eb17e@verizon.net>
	<062dbe93-602f-b972-6de1-f9a00ac1aa9b@gmail.com>
	<091390ec-72e4-100d-d1b1-6a10818715ac@gmail.com>
	<b2d6ddcd-2ef7-1425-de0e-78a0c8d5697c@slint.fr>
	<97f47bb7-fcaf-aaf9-0732-0592fd341f18@gmail.com>
	<adaf7c1b-9937-9ad8-3520-78147036f9ab@gmail.com>
Message-ID: <fb379fa0-a0fb-1412-885d-aa01e8738f82@gmail.com>
Date: Wed, 24 Nov 2021 11:31:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <adaf7c1b-9937-9ad8-3520-78147036f9ab@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Forgot to mention that if you want to start with Rawhide, this is also possible 
without performing an upgrade. You can download the Rawhide MATE spin directly 
and install from that, and you get all the benefits of the rolling release 
without having to upgrade from a 6-month release.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

