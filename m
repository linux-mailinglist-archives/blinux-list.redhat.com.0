Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 89AF93DF998
	for <lists+blinux-list@lfdr.de>; Wed,  4 Aug 2021 04:14:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628043252;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=GvK0lNpIuYTMe7zZTfA3q4YItCgfo+MVEsIx017+sIU=;
	b=JVOpqBGPP1vfCkfxaCwd9aD+50CHZj4/Vn2Ng/CRP5HRbDUrPo3k1ZKnpMXbZSuOCpwxYZ
	nrQnMoctGBMszNAmvYRZZe9qRDnNAbcnASHNJXiFUr29rVv7b0uFnut3uJEjUHNcGv+k9E
	/j+wNw9sm464D2mCE17Z3sVKKJWAzbg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-230-iQsfbijeM0eQ-GfFSMXVQw-1; Tue, 03 Aug 2021 22:14:10 -0400
X-MC-Unique: iQsfbijeM0eQ-GfFSMXVQw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0E81A87180C;
	Wed,  4 Aug 2021 02:14:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6886F19CBA;
	Wed,  4 Aug 2021 02:14:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E90FE181A6E2;
	Wed,  4 Aug 2021 02:14:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1742E0dO022836 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 3 Aug 2021 22:14:01 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D77A811301DC; Wed,  4 Aug 2021 02:14:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D3CB0115D7C1
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 02:13:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 510A78CA940
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 02:13:57 +0000 (UTC)
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com
	[209.85.167.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-337-nDBeZI1vO8WWcrBGZblXBg-1; Tue, 03 Aug 2021 22:13:55 -0400
X-MC-Unique: nDBeZI1vO8WWcrBGZblXBg-1
Received: by mail-oi1-f178.google.com with SMTP id 21so1132925oin.8
	for <blinux-list@redhat.com>; Tue, 03 Aug 2021 19:13:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=nokXucrR3DUFOO9ZfDxHH52jB6U7SKAyRGDDUTFNbaY=;
	b=gvMV0CYWwuwJjt7A8UxpqTLA0kSGwcRM/hnp1D8It3Ffq9n7vnQ57TIpLkwkMvzVTw
	5PCu3yH10h5/bOGop6sl4rfI/1JHDBjffBzuyVzc1b89uADP8EuT991r0yVYwIeNrAr/
	o/wbRhxQyF8LDsVYqLwOv/p1vUjkVSoXZnSs+t26lJb8CyUMxdJ8uYxzIFaprgImP9+O
	CmWRW1FJoYJYY/OJMAMuwEU+3LHhXZLNH9313akV4ypx1+V9GRxc2XyIW47kTrkTeZbW
	DKSbezOq7VlbBz/YqKbpfYLHLKQKyxcchbDJxCZlBDgOWyRfgZ/qfvHyCr7tg/h4Rxoi
	BMoA==
X-Gm-Message-State: AOAM530ztdHBuO1wGNN06wdA/5OlW3LoyWIKy9K1h02lTXmTQFsWpWxz
	h7eti3aXCMmsLAW0bW5iwaNOu1ZuiDQ=
X-Google-Smtp-Source: ABdhPJyYz/icEKhQoPAuCISYSYWI6DqAVkcBx10RIRiG1ah6nDJF5hbNjCMU/bPppaCB2P1FHexMsg==
X-Received: by 2002:a05:6808:180a:: with SMTP id
	bh10mr5417979oib.147.1628043234463; 
	Tue, 03 Aug 2021 19:13:54 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:b874:c178:b73:41a0])
	by smtp.gmail.com with ESMTPSA id u7sm127540oop.11.2021.08.03.19.13.53
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 03 Aug 2021 19:13:54 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Solus DE observations
Date: Tue, 3 Aug 2021 21:13:52 -0500
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
Message-Id: <4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1742E0dO022836
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Dave, I have used gnome and mate with ubuntu.
I thought of linux mint, and tried it, but orca would not work.
Had you tried mint?
As to Solus, is that workable?
Ubuntu gnome is usable in some ways.
I think ubuntu might be gnome 3.
Have not heard of gnome 40.

> On Aug 3, 2021, at 8:53 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Are you familiar with any of these desktops on another distribution?  The Mate experience is much like that of Ubuntu or Linuxmint, with a single panel and Briskmenu.  If you like GNOME 40, Solus GNOME is a standard experience.  All these spins are available as live systems; I suggest you try them all.
> 
> 
> 
> HTH,
> 
> 
> 
> Dave
> 
> 
> 
> 
> Sent with Thunderbird and Solus GNU/Linux.
> 
> On 8/3/21 9:19 PM, Linux for blind general discussion wrote:
>> If I would try Solus, would it be best to try mate,, gnome, or budgie?
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

