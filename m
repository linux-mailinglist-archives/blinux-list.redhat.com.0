Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE2B49D6B8
	for <lists+blinux-list@lfdr.de>; Thu, 27 Jan 2022 01:30:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643243409;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NGGupysCJc94cXnL9CVwIKHgo0pUwGgINHOvk9i2PyA=;
	b=ezUoTnOYNY4XnxBBg2iYEZojIVKHewEF3mzE/pLANZmJjHwQ4xSK8+bDh+4ZQlOc514i/m
	VTkneXUPLe2jCk0tRktXACw07sSVc8PQXtn8riqlRSr9XVBn8mndX85YgXse9n7KEkaGCK
	yQytXnCeI7Wi4l4otEWkZ7gAoNgnY0k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-258-xekLHWdoN1igolv8RQOxcw-1; Wed, 26 Jan 2022 19:30:05 -0500
X-MC-Unique: xekLHWdoN1igolv8RQOxcw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 26D2C1006AA0;
	Thu, 27 Jan 2022 00:30:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B35378DA8;
	Thu, 27 Jan 2022 00:29:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8514C1809CB8;
	Thu, 27 Jan 2022 00:29:54 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20R0Tksm007382 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 19:29:46 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 2FAF8112131F; Thu, 27 Jan 2022 00:29:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B6CD1121319
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 00:29:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 34D0E380670C
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 00:29:43 +0000 (UTC)
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-527-sTWkujcgOSmRrEI1b7-DNQ-1; Wed, 26 Jan 2022 19:29:41 -0500
X-MC-Unique: sTWkujcgOSmRrEI1b7-DNQ-1
Received: by mail-io1-f44.google.com with SMTP id h7so1672060iof.3
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 16:29:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=iqw27Z1gP4B+7KAWbbbir4AmeJsDOod0xTTKprBip4w=;
	b=ermeqUO6mhwI2jkMrqZhqJkqHjkqsvKw+Np749xD0z+6Jx28lRi3W1KLk3f2CWjFUA
	QWWAH9bTK83IAEYQ5qbLIWFEe9+CQQvNe2tE90GDdofNlGOB+234T2RlOtCKdRWur3pk
	9M4kXwM7RY92nIaTeOuLOa1Hpf4fN1MHD1Xa6mgDGsm7IzQnCjF2IJ7EucbSzx7eRLjM
	RDDigmlLsQU8vD0aV1s+MDVzhUbuRloDZtV31ST+ZLC7ABxdMvTvA306y/eDUHS8xQA7
	DDYRp5YAl7WjcgnpqNlVDyUN/dLFzBSHdhP9DLvt3pNzv0Zv7Mpb4mXI7FkpGDQnk/eJ
	ZKDQ==
X-Gm-Message-State: AOAM533b/nNZU1emf7R+pyTYycqXcDougwXPG6GxwsFe2sGJBgqtdGiU
	qjXnXFVpWIF2VzX4WRe01FvIA8CREbki7R2BaCVnKQaR
X-Google-Smtp-Source: ABdhPJz5BrBaWBTNYxDXHKvWYtAwJES0vMKS8A6m8BlRiChjTTKOav+49wukJQFvPPdtnm/dMXx5gVgS703vB+1m/6Y=
X-Received: by 2002:a6b:dd09:: with SMTP id f9mr687049ioc.17.1643243380679;
	Wed, 26 Jan 2022 16:29:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6e02:18c9:0:0:0:0 with HTTP; Wed, 26 Jan 2022 16:29:39
	-0800 (PST)
In-Reply-To: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
Date: Thu, 27 Jan 2022 05:59:39 +0530
Message-ID: <CAK2wa2mQSc=ovgXNDtadXCi4d5jPU4L8HCtLw3DkWdncZ70HjQ@mail.gmail.com>
Subject: Re: Converting text to mp3
To: blinux-list@redhat.com
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello
Audio converter is available in lios available in ubuntu repository
and again again it is available in Sharada-braille-writer, a six key
approach for typing ordinary print, available on Sourceforge.net. Both
softwares are part of Accessible-coconut distribution. Thanking you
Sathyan.

On 1/26/22, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> Hello,
>
> is some way to convert text file to mp3 files and option length of them?
> In Vinux I had Audiobook-converter. But it's not in repositories of Ubuntu.
>
> Thanks a lot and take care.
>
> Best regards
>
> Vojta.
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>


-- 
*Mob : +919446012215
FREE SOFTWARE FREE SOCIETY *

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

