Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id D558C27B098
	for <lists+blinux-list@lfdr.de>; Mon, 28 Sep 2020 17:14:31 +0200 (CEST)
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601306070;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fAV700jrZh0K6/eRsR92WmgzXQzWaqsQW4ZdXhCSJrQ=;
	b=ZHblAWnOauHWHCtFjqFveG4yu+3IgxOpj5yg6My52KyjJPdSU/Y0PGhYs22zLW0LYN2GLK
	rJiky7oH3RtZO8mohg7fipcJ88syp/vCfKxOWWjSjrbfsjto/UtSJRvdyBnf2Qaq6sf/66
	0WQyA8laa+9Ls5D7zZ1Ys0lGDXX5h9A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-350-po8JjK7vN2-EKHbvURyFzw-1; Mon, 28 Sep 2020 11:14:29 -0400
X-MC-Unique: po8JjK7vN2-EKHbvURyFzw-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 08F841021214;
	Mon, 28 Sep 2020 15:14:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F9BA5D9F3;
	Mon, 28 Sep 2020 15:14:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 518DB44A4D;
	Mon, 28 Sep 2020 15:14:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08SFEHA0012459 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Sep 2020 11:14:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4364D8288A; Mon, 28 Sep 2020 15:14:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D8614400F
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 15:14:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 32001800296
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 15:14:15 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-1-g0nJ4TJ8PRWaoDoPKsea1Q-1; Mon, 28 Sep 2020 11:14:13 -0400
X-MC-Unique: g0nJ4TJ8PRWaoDoPKsea1Q-1
Received: by mail-qt1-f181.google.com with SMTP id k25so1000254qtu.4
	for <blinux-list@redhat.com>; Mon, 28 Sep 2020 08:14:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Yx9BMmJtOXRrTys8oWt239gzFYA+BrnqTIf/0V1amGc=;
	b=OgHkDouUUGQ7TM4xLbaoSJT7nqT7bjzdJuip7xLuDXb5rKx7+H0tvpCbzZ4mowMOAU
	ayFBpnu1CCgSuRuiVm0nBJATdMKYwE15j3H6zqoq3tG04lFyAxDlZ8GScdTgTiR2dLSa
	A+vV+X/Zu6NXFhZ6ZtW+OaBCIRFjWg1w/jOalevt4DYDiyuEdlP4KohWGHKeyzmBTmuk
	ReMWnnoxGI29Lxxi++2QRE3cN3HlmmZD/7zSyqZY29Rbrtj8wcyum+HZdF2o0fCXjCH3
	Kc6m+YBafwO+GxDWQpPevNp85yuagfyvmVQGIbjaHnbG/TuPEKcXpbpOo65h3dNS7mUe
	fsKA==
X-Gm-Message-State: AOAM532L2F6gyc6uIg8YhtMWWyJI3rLiQ2ETlVezUqjZZVJ12l35f05p
	Rj49q88/FukfkCn7+SqRRFYLel6/wyuv/A==
X-Google-Smtp-Source: ABdhPJweR4v9d5yFwuQ9jGf+q9eVwE30cJTs/rIKfH6rTj4a3EsNFRcNyLBWMVu+2pypxNNqHtYGRQ==
X-Received: by 2002:aed:3882:: with SMTP id k2mr2004308qte.308.1601306052156; 
	Mon, 28 Sep 2020 08:14:12 -0700 (PDT)
Received: from ?IPv6:2606:a000:111a:8d0a::5d7?
	(2606-a000-111a-8d0a-0000-0000-0000-05d7.inf6.spectrum.com.
	[2606:a000:111a:8d0a::5d7])
	by smtp.gmail.com with ESMTPSA id j6sm1383903qtn.97.2020.09.28.08.14.11
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 28 Sep 2020 08:14:11 -0700 (PDT)
Subject: Re: gentoo!
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.23.451.2009281038260.10367@panix1.panix.com>
	<5545aa4f-68da-b49a-6456-23387aca2caf@gmail.com>
	<alpine.NEB.2.23.451.2009281046441.11282@panix1.panix.com>
Message-ID: <dd3eb5a7-8e1f-b37f-5f75-bb8f56557a7d@gmail.com>
Date: Mon, 28 Sep 2020 11:14:09 -0400
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2009281046441.11282@panix1.panix.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Yes. The letters x, J and f can be in any order, but the J must indeed 
be uppercase.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

