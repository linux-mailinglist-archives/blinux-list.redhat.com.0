Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id ADF9F3E940E
	for <lists+blinux-list@lfdr.de>; Wed, 11 Aug 2021 16:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628693794;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gdzpD5ljL0Rn3qfm15h9HJKmnIk8UMMDtXfC3UVFM70=;
	b=Teg2BONnr4kL/S6fc+P2b73Dz7hiEa2/HCfnWX6yaT5PLlzs5DHRM1VdEKqlXNEGQsTDGl
	jJXaXlmSzc7IeytiQwMBAn/JC9FFq5fabFYMNyDIDFMbBH6XQrmGzdtW+CnyIDFr2qr457
	IKOykmKvATdHOL8acCyfWEXvEW97GII=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-544-9c2B09NCPk-kj90ruuUkTQ-1; Wed, 11 Aug 2021 10:56:32 -0400
X-MC-Unique: 9c2B09NCPk-kj90ruuUkTQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 04ABD1853028;
	Wed, 11 Aug 2021 14:56:28 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C8686A914;
	Wed, 11 Aug 2021 14:56:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 17BB5181A0F2;
	Wed, 11 Aug 2021 14:56:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17BEqeiS003876 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 11 Aug 2021 10:52:41 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C1AA620117E0; Wed, 11 Aug 2021 14:52:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BB2B0201356F
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 14:52:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 706448CA960
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 14:52:35 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-465-C1Ibn1MgNcSMV4wsXNx5mw-1; Wed, 11 Aug 2021 10:52:33 -0400
X-MC-Unique: C1Ibn1MgNcSMV4wsXNx5mw-1
Received: by mail-oi1-f177.google.com with SMTP id t35so4927155oiw.9
	for <blinux-list@redhat.com>; Wed, 11 Aug 2021 07:52:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=VBxL4uJqC2VzWtq0P0eVcQhFYnyuzOJ3vL7D96LV1Cw=;
	b=qpxh1x3SBIgb1A6HM7Ob2JbUAqMn2yV6qw2Nb1yL/bt32yz6l5uTx8LtQ92/NIgyhf
	MBudiZwdYprFXGLcSoLJW+aA//kdBbH8Irf3hEYyd+YYXGUFapSmU8yJwU8KZr2mj2AX
	amUfr2thBEeuMDsCIShuBIrrjTBhnDZbWRFOTYf2ZcXTrprJHCRpgxfGApkSYiktyDyx
	io3Gj3LXx9Z7Od6RVIiwz/Fvw3ghzuCEqyqlZARuYSMeJ0006vM8FV1fPvGWlorpe/Oj
	gQkLTcn83y0lSo7i8AxcmfNnL4ITb0bCfv/82XuK3VXBovJXJb+CCqbXKXrmfna8ZiKB
	u8FA==
X-Gm-Message-State: AOAM531VJYOTIAfEpwlUfwYbcesu8b5MkAyyXPYXUTqohkZWoHvFarw+
	5dHtcj9fvpua1QDabSxV0cn3LqiiqBs=
X-Google-Smtp-Source: ABdhPJygp4VQi6T3Z5xBeRbpBGIZjwjEwhE5+Q9wnTJfTcorcIL8/OWk78PghsIT8wwj/Qp6O+yqLw==
X-Received: by 2002:a05:6808:208b:: with SMTP id
	s11mr8061639oiw.109.1628693552717; 
	Wed, 11 Aug 2021 07:52:32 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:7478:6bb6:acf:90df])
	by smtp.gmail.com with ESMTPSA id z3sm2355713oot.46.2021.08.11.07.52.32
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 11 Aug 2021 07:52:32 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Help, I need a Windows VM for my work
Date: Wed, 11 Aug 2021 09:52:31 -0500
References: <3d854105-bb2b-5501-235f-eb05dc13f1f4@gmail.com>
	<AD585221-10D6-4BCE-A68D-3220079018C1@gmail.com>
	<YRJyWYpNsgGZW1De@abilitiessoft>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <YRJyWYpNsgGZW1De@abilitiessoft>
Message-Id: <89EC2AF6-C55F-48F6-B37B-6D0A6E3582AF@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17BEqeiS003876
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

That is an idea I would not have thought of.
Thanks.

> On Aug 10, 2021, at 7:34 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Well, this will probably mark me as a fool, but I just use a Linux machine and a Windows machine connected by Samba. 
> Computers are relatively inexensive now, so why bother with virtual machines?
> 
> John
> 
> -- 
> John J. Boyer
> Email: john.boyer@abilitiessoft.org
> website: http://www.abilitiessoft.org
> Status: Company dissolved but website and email addresses  live.
> Location: Madison, Wisconsin, USA
> Mission: developing assistive technology software and providing STEM services 
>        that are available at no cost
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

