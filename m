Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCF145E100
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 20:30:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637868601;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jAaibYLnva0wznclUU6+ENYlP/Op98lcDwTIEB91+nE=;
	b=ePfiPYtvmv1qj5Mdnj9udWs2cqHvCFfGaZuBsdlls1y8KrIh5W66xGFyahoXUo+GxpuGZX
	SK+5HoPbOdOlClEMWKEGMbbEegmf+BIHjhMqVXWEQs3VO6qi577Um33M4sqQ9490imYDp4
	Lr0VUbyvY9ee2tRBBuwWhpKXlhLkE+A=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-446-r4VF5wN_NYiGk3lnHi2wAA-1; Thu, 25 Nov 2021 14:29:57 -0500
X-MC-Unique: r4VF5wN_NYiGk3lnHi2wAA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5023483DD20;
	Thu, 25 Nov 2021 19:29:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 39BFC60C05;
	Thu, 25 Nov 2021 19:29:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1F1751809C89;
	Thu, 25 Nov 2021 19:29:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APJTmbM030905 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 14:29:48 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3D6CD1121315; Thu, 25 Nov 2021 19:29:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 38CCF1121314
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 19:29:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D3B47803DDA
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 19:29:44 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com
	[209.85.219.178]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-362-5JYYptw2Nn2uL8jNSUDCeQ-1; Thu, 25 Nov 2021 14:29:42 -0500
X-MC-Unique: 5JYYptw2Nn2uL8jNSUDCeQ-1
Received: by mail-yb1-f178.google.com with SMTP id j2so14260871ybg.9
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 11:29:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=sU7J3sB61UZZs+sMDdWthfrCQjLUQVQehjUhMLzRuxM=;
	b=X/U9VoAkQl4JioNUhBWwDWkLDK9F4+jZnMhgwEa0PTcR9hMVxRTAGj00V0OODca8wv
	gqiYj6+Y1cxHD0ISE+8wNSdN0Nbj+EshZO7VBRrNO4KLIW/O8CJCp+rVhiqCPwS4WGpz
	s7pn1/9DJkC2l90tnQCGbB9LQxbAAetoRbf9aSCl69DxzDWgbg7YxaPDEJuZJV+2lLhI
	2Veg04DOlg8hcMLMxV2bI17QfMj1IiHMDKpmco0YP4YMFaYCCfONQTLlq/QVzQyz77bb
	4ZyFNiEfr2ejcichABJtpmsVhhmybDsIca6DIn01ru4SW0ujeCruSaSQnhXHBOii7yBo
	s9HA==
X-Gm-Message-State: AOAM533xD4KWv7EY7SGujFgcTt87xlKwVtcLSu0neg+xhBd5gmxI7BSq
	AAnxPIc1T1iQ1Iil57wVE5MoGmwaadXGHvo1QeoiAiGCGZg=
X-Google-Smtp-Source: ABdhPJwCm28pGa4c0q8AI92NH3HBI/twkdIZQhnWU5N56MdfoBxVBUTFYDrg2qg3sPcjHpTFgsYiBXFOT5/Gg7nL8hk=
X-Received: by 2002:a25:ab42:: with SMTP id u60mr9366121ybi.482.1637868582191; 
	Thu, 25 Nov 2021 11:29:42 -0800 (PST)
MIME-Version: 1.0
References: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
	<6dbbac09-3d17-0aac-ca28-4cef41d6c809@gmail.com>
	<946f985-aad-95dd-495-f3f69898f2e0@hubert-humphrey.com>
	<CAO2sX30nVe2xz0N_J-Xd7KutYNPjdc5V-endQZbYDK6JQ3TkZA@mail.gmail.com>
	<e9ca84ae-5e2e-41bb-4299-e947a79ce264@ukr.net>
	<alpine.DEB.2.21.1.2111252108070.3997@willempc.meraka.csir.co.za>
	<c353cae1-3ac4-311-3a4-3edf18be631@hubert-humphrey.com>
In-Reply-To: <c353cae1-3ac4-311-3a4-3edf18be631@hubert-humphrey.com>
Date: Thu, 25 Nov 2021 13:29:30 -0600
Message-ID: <CAGJxbF44oOQ1+YM3TnLG+3FRW4BZuf8S2+A4ajvuvcbeaXgvfg@mail.gmail.com>
Subject: Re: Converting epubs to Plain-Text?
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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

Epr is a Python package so you'll need python3-pip
Devin Prater
r.d.t.prater@gmail.com




On Thu, Nov 25, 2021 at 1:27 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Thank you Willem, I cannot find epr, but running as an aptitude, there are
> 140
> packages, but since a limit is 40, it won't show a list. Wish I could
> eliminate
> those limits.
> And  yes, thanks Karen, I do have pandoc, just looked, will try an option
> "plain"
> Chime
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

