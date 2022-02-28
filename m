Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A134C6088
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 02:01:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646010079;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ygj9ihiyrNC/XEQZIu7HVtjOWfwgSqIqogoT1TBZadw=;
	b=GUkBd1DTdQwuLDcXBUbsGH+ZHz88LrjwwidnYLbnAPY6DOZo2tdo3KcWcUntzyCwiljc+H
	6717u0xozIOFtEgRTOzMeqdA6cwWdq3fZRjhHVv2h442zFwiJAX7bK5bdIjKwL/7vCv6pl
	u6Cab6BKAkR2+eGVJ5ycYS4PXEziLB4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-475-EECGKCsKMYGj7yG1lZ7uzA-1; Sun, 27 Feb 2022 20:01:17 -0500
X-MC-Unique: EECGKCsKMYGj7yG1lZ7uzA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 08EFF1091DA2;
	Mon, 28 Feb 2022 01:01:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 087775C1C7;
	Mon, 28 Feb 2022 01:01:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AC4F74A701;
	Mon, 28 Feb 2022 01:01:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21S113Tx023724 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 27 Feb 2022 20:01:03 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EFC16141DC2D; Mon, 28 Feb 2022 01:01:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EBB2B141DC2C
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 01:01:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D27E0833963
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 01:01:02 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
	[209.85.219.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-91-tsOkcmoDN3-8zN26wJOD1A-1; Sun, 27 Feb 2022 20:01:00 -0500
X-MC-Unique: tsOkcmoDN3-8zN26wJOD1A-1
Received: by mail-qv1-f47.google.com with SMTP id c14so6362350qvk.10
	for <blinux-list@redhat.com>; Sun, 27 Feb 2022 17:01:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=EPfAQh4wjg4QlIWh8GFCz9vit3xJRgT18xUql9lrlB0=;
	b=SNnfBgDuipr0QJjY8RqigpMnccAYCx6rFQXEjWFUtDIVZEPjIO8R6Oqwl7YA9Zzs4V
	NXlavbQi50bqozoCyTSCMBkyNAukWeBPBQHw3I3csduLfcURBGhViOo5WOtCbLvaVJ4x
	zxZb0zsW5mqTgy4jlabHnED3tgl6ZKhOWuL+H3ptZ7dtTHZ4lym/72JlBgMJxlXlm35J
	4vdOYRtsZ4Jl41iClUpFlf/An+XhuZgm6WkBAB2BsfQPGObailHewkGFmfXNXBvQ676J
	3+hBmYJ2JHDVmW1tWsl5572k89bGfWqlV7xd6kQjUmOSo1vy/oNFMFzgnNAwwCpYbcaN
	MNEQ==
X-Gm-Message-State: AOAM531loh2eEYBulA/eRWu8Gl0cmITXnF7W+pdLbIcy0/vsC3z978TH
	sICBIXmUsCoDpuz1z0UOsNHAqyPo7MZGbzjRRkKoLct87h4=
X-Google-Smtp-Source: ABdhPJxJNaxE70zyYJsH4c8hf/lkastRs3sk2KCzt73v772rbdg4VcyVxnUFUX2rRUlT4t8dhBw4fixbVWk10wHFI70=
X-Received: by 2002:ad4:5aef:0:b0:42c:3b31:86bf with SMTP id
	c15-20020ad45aef000000b0042c3b3186bfmr12689200qvh.72.1646010060260;
	Sun, 27 Feb 2022 17:01:00 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5f08:0:0:0:0:0 with HTTP; Sun, 27 Feb 2022 17:00:59
	-0800 (PST)
In-Reply-To: <CAN8Cudgf03ND87hvLuabqwX8Yni_MTBraSxWN5s4P=ipwux=2A@mail.gmail.com>
References: <9aeacc35-abfb-de7d-99ef-35ea86114b2f@protonmail.com>
	<FE6B19F6-999D-4FBE-8CB8-4A552ABCA9ED@cfcl.com>
	<c5d02c2a-8fe1-7d26-ef60-c7c8b192b7e9@protonmail.com>
	<CAO2sX33bsq5dtKCJg-J_XgqTM2LRWj6W1gU7D9FDdM3hhH_dqg@mail.gmail.com>
	<3aa8b542-556-90ee-80ff-16d7754096eb@hubert-humphrey.com>
	<CAO2sX303T7OgFDkL5qZwAwDc2T1miTVrrAaB24EZ=i-R8H6syw@mail.gmail.com>
	<92f91c3f-56f6-ae03-0f4e-d52c3fc64daf@free2.ml>
	<CAO2sX321e0PL969ePjSzSKvy=HxDoueBc-P2jFwS50sM+ZR6AQ@mail.gmail.com>
	<57d14a3d-be66-d3ed-51f2-78a5cee23d06@free2.ml>
	<CAN8Cudgf03ND87hvLuabqwX8Yni_MTBraSxWN5s4P=ipwux=2A@mail.gmail.com>
Date: Mon, 28 Feb 2022 01:00:59 +0000
Message-ID: <CAO2sX336VRPqLePOmU9=UkSp3rxKApmH7fEL2i6H-KuNf0w7iw@mail.gmail.com>
Subject: Re: Voting: Which game would you like to have on Linux?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yeah, as I understand it, the only reason Windows gets the lion's
share of PC games is because it broke into the home market first,
wasn't tied to specific hardware vendors, and did well enough to kill
off most of the hardware brands that stuck to using their own OS or
making developers write their games for bare metal. Classic first
mover advantage that just snowballed from that early head start and
Mac and Linux have been struggling to convince anyone they have enough
users to make porting or avoiding Windows-specific frameworks is worth
the effort... Still, I'd argue good code is as platform independant as
possible and that OS-specific integrations should be avoided unless
strictly necessary for the software to work or it provides a
noticeable performance boost.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

