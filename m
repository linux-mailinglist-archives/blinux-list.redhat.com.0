Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB564B1278
	for <lists+blinux-list@lfdr.de>; Thu, 10 Feb 2022 17:16:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644509765;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=SQu/xN1j2gr8nOCyePvDdACooTde4PJwZyqLBj610Mc=;
	b=H0Aa7RadRJQYNPguDlh422ZmvftDyTT8IkCDCaooMtmkkTKpX/2R7UuDi63alFWS/3Wgio
	HckFiUqxZcbdLDUgWHIAUOv7YAVPjEFnMgyBTPvhOdxC3NCgFfAnwR9ObhUad9kIlvgiJL
	eoerapL9CJC/F+YphEQiae1RVefkAp8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-537-CwZFaE5lNp28ul-BPA9YmA-1; Thu, 10 Feb 2022 11:16:01 -0500
X-MC-Unique: CwZFaE5lNp28ul-BPA9YmA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 819C864A7B;
	Thu, 10 Feb 2022 16:15:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 557746FAEC;
	Thu, 10 Feb 2022 16:15:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C804E18095C9;
	Thu, 10 Feb 2022 16:15:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21AGFdLj015398 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 10 Feb 2022 11:15:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5818A40FF69A; Thu, 10 Feb 2022 16:15:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 53C1040FF694
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 16:15:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3099F85A5BC
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 16:15:39 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-609-3wuPSluIMP2vX4ObKfzNcg-1; Thu, 10 Feb 2022 11:15:37 -0500
X-MC-Unique: 3wuPSluIMP2vX4ObKfzNcg-1
Received: by mail-qt1-f169.google.com with SMTP id z1so5784209qto.3
	for <blinux-list@redhat.com>; Thu, 10 Feb 2022 08:15:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=N1TqLVG6UnRoGMxnj8QxV5xI8gQTK3tFNdxyxmzBJIk=;
	b=KwKr491urQwo7q6P1udNI1wKguLf4KO+y0EG3tCVZj7dR7RkvU2WI97SPzERflpQR7
	pNFY9pabLc04KOTfTt4TaaAX5xcpNtq1iqpxV15jdpEj0G7SkX9f8xseLYnHolsCJjwQ
	M3RItWud/JEnfc9MHgjF+jkL7uuCvi2DCWk7/4Fy1hsyFH378tdon42gjDjIiVSMHWWM
	bJ1RTVFU5eJE4KiFgNS4TlpWtv11MwVso3/RBQDjSJLo20gisQSUXX981R4tnJ2LTiJs
	FfNHjoiUYaByC7oKWrX7EBy7pdzHi440IVMe+BSWxdvllfU1KegC+iThk/+1a/YSMAMp
	iENg==
X-Gm-Message-State: AOAM531YEHS9lgjT2BwUpMHHZkgXhFumOl3CyeTFx6bCVPDniFx7iVJC
	/BsGF/B660B9tojkXunlIOOVrkL2uQQ=
X-Google-Smtp-Source: ABdhPJyhtn5/WXJyAyhyULB0ugD88MFRXvlM3ZNwl4H4rwL50LU6GGWfud94XtN9kD0WqHeNSee22A==
X-Received: by 2002:ac8:5bc1:: with SMTP id b1mr5368627qtb.453.1644509736768; 
	Thu, 10 Feb 2022 08:15:36 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id
	n6sm10940081qtx.23.2022.02.10.08.15.35 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 10 Feb 2022 08:15:36 -0800 (PST)
Date: Thu, 10 Feb 2022 11:15:34 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Is Youtube-viewer Broken?
Message-ID: <c151a291-1f61-406b-e691-97588d613b9@gmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


Did you try yt-dlp -U?  The "U" is in capss.  This seems to update indepemndently of the individual repository sorce.  I'm guessing it is
baked into the python code.

On Thu, 10 Feb 2022, Linux for blind general discussion wrote:

> Hello,
>
> Slint being not Arch, yt-dlp will not be upgraded in Slint every time there is a
> new release, which is very often[1], and our package is not that old (version
> 2021.12.03	). However, what do you miss in the currently provided version?
>
> In any case yt-dlp will be upgraded in upcoming Slint 15.0
> Cheers,
> Didier
>
> [1] Typing "git tag -l "2021*|wc -l" in the cloned upstream repository tells us
> that there have been no less than 50 upstream releases of yt-dlp last year.
>
> Le 10/02/2022 ?? 01:56, Linux for blind general discussion a ??crit??:
> > yt-dlp on slint is outdated.
> >
> >
> > On Wed, 9 Feb 2022, Linux for blind general discussion wrote:
> >
> >> Hi Didier-and-thanks for your suggestions. I supposedly had pipe-viewer
> >> installed, but I get similar errors to ones I sent along earlier. Yes, am
> >> useing yt-dlp instead of youtube-dl to grab, but I  like youtube-viewer as it
> >> will display 50 results-and-after my suggestions has a favorites list for
> >> channels. At least 1 of Trizen's other projects displayed 2 consecutive groups
> >> of duplicate results. Youtube-viewer does the trick, but I certainly wish I
> >> could go far past 50 results. Thank you
> >> Chime
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

